from bank_transaction import BankTransaction
from config import  Config
from db import Db
from fund import Fund

class Report:
    def montly_report(self):
        db = Db()
        session = db.get_session()
        for f in session.query(Fund).all():
            txns = session.query(BankTransaction).filter(BankTransaction.description.like(f.statement_description_prefix)).all()
            print('{}'.format(f.name))
            Config.print_line()
            for t in txns:
                print('{}\t{}\t{}'.format(t.txn_date, t.description, t.debit))
            print("\n\n\n")

    def credits_received(self):
        db = Db()
        session = db.get_session()
        c = Config().getConfig()
        Config.print_line()
        print('{}\t{}\t{}'.format('Date', 'Description', 'Credit Amount'))
        for t in session.query(BankTransaction).filter( \
                BankTransaction.txn_date > c['important_dates']['withdrawal_date_for_converting_to_direct_way'], \
                BankTransaction.credit > 0.0, \
                BankTransaction.bank == c['bank']['yes']['bank_name']).all():
            print('{}\t{}\t{}'.format(t.txn_date, t.description, t.credit))




if __name__== "__main__":
    report = Report()
    report.montly_report()
    report.credits_received()