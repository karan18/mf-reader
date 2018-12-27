import csv
from bank_transaction import BankTransaction

with open('resources/yes/042790700002429_27_12_2018_05-50-38.csv', mode='r') as csv_file:
    csv_reader = csv.DictReader(csv_file, skipinitialspace=True)
    for row in csv_reader:
        txn = BankTransaction()
        txn.txn_date = row['Txn Date'].strip('\'')
        txn.reference_no = row['Reference No'].strip('\'')
        txn.description = row['Description']
        txn.debit = row['Debit Amount']
        txn.credit = row['Credit Amount']
        txn.balance = row['Running Balance']

        print('{}-{}-{}-{}-{}'.format(txn.txn_date, txn.reference_no, txn.description, txn.debit, txn.credit))
