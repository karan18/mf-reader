from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String, Date, Float, DateTime
from bank_transaction import Base

class Fund(Base):
    __tablename__ = 'funds'
    id = Column(Integer, primary_key=True)
    name = Column(String)
    folio_number = Column(String)
    statement_description_prefix = Column(String)
    url = Column(String)