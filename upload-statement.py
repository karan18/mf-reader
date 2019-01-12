import sys

import csv
from datetime import datetime


from bank_transaction import BankTransaction
from db import Db
import glob
from config import Config
from constants import KEY_BANK, KEY_STATEMENT_DIR, KEY_YES_BANK

def persist_bank_statement_to_db():
    c = Config().getConfig()
    statement_dir = c[KEY_BANK][KEY_YES_BANK][KEY_STATEMENT_DIR]
    print('Bank Statement Dir: {}'.format(statement_dir))
    for f in glob.glob(statement_dir + '/*.csv'):
        print('\t - {}'.format(f))

    for f in glob.glob(statement_dir + '/*.csv'):
        c.print_line()
        print('Processing: {}'.format(f))
        with open(f, mode='r') as csv_file:
            csv_reader = csv.DictReader(csv_file, skipinitialspace=True)
            db = Db()
            for row in csv_reader:
                txn = BankTransaction()

                d = datetime.strptime(row['Txn Date'].strip('\''), c['bank']['yes']['timestamp_format'])

                txn.txn_date = d.date()
                txn.txn_datetime = d
                txn.reference_no = row['Reference No'].strip('\'')
                txn.description = row['Description']
                txn.debit = row['Debit Amount']
                txn.credit = row['Credit Amount']
                txn.balance = row['Running Balance']

                txn.bank = c['bank']['yes']['bank_name']
                db.save(txn)


                print('{}-{}-{}-{}-{}'.format(txn.txn_date, txn.reference_no, txn.description, txn.debit, txn.credit))

if __name__== "__main__":
    persist_bank_statement_to_db()