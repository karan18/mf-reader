from sqlalchemy import create_engine
from sqlalchemy.exc import IntegrityError
from sqlalchemy.orm import sessionmaker

class Db:
    # an Engine, which the Session will use for connection
    # resources
    some_engine = create_engine('mysql+mysqldb://root:ju5fJA3Mjk.e@localhost/accounts')

    # create a configured "Session" class
    Session = sessionmaker(bind=some_engine)

    # create a Session
    session = Session()

    @classmethod
    def save(cls, obj_to_persist):
        cls.session.add(obj_to_persist)
        try:
            cls.session.commit()
        except IntegrityError as ire:
            if ('Duplicate entry' in str(ire)):
                print("Record already exists will not be persisted again: {}".format(ire.statement))
                cls.session.rollback()

    @classmethod
    def get_session(cls):
        return cls.session

