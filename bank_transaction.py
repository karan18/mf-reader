from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String, Date, Float


Base = declarative_base()
class BankTransaction(Base):
    __tablename__ = 'statement'
    id = Column(Integer, primary_key=True)
    txn_date = Column(Date)
    reference_no = Column(String)
    description = Column(String)
    debit = Column(Float)
    credit = Column(Float)
    balance = Column(Float)
