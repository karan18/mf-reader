from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String, Date, Float, DateTime


Base = declarative_base()
class BankTransaction(Base):
    __tablename__ = 'txns'
    id = Column(Integer, primary_key=True)
    txn_date = Column(Date)
    txn_datetime = Column(DateTime)
    reference_no = Column(String)
    description = Column(String)
    debit = Column(Float)
    credit = Column(Float)
    balance = Column(Float)
    bank = Column(String)

