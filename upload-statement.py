import sys

import csv
import _mysql_exceptions
from datetime import datetime
from sqlalchemy.exc import IntegrityError

from bank_transaction import BankTransaction
from db import Db
from config import Config

def persist_bank_statement_to_db():
    with open('resources/yes/042790700002429_27_12_2018_05-50-38.csv', mode='r') as csv_file:
        csv_reader = csv.DictReader(csv_file, skipinitialspace=True)
        db = Db()
        c = Config().getConfig()
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