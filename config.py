import yaml

class Config:

    config = dict()

    @classmethod
    def load_config(cls):
        with open("resources/config.yml", 'r') as stream:
            try:
                cls.config = yaml.safe_load(stream)
                return cls.config
            except yaml.YAMLError as exc:
                print(exc)

    @classmethod
    def getConfig(cls):
        if(len(cls.config.keys()) == 0):
            return cls.load_config()
        else:
            return cls.config

    @staticmethod
    def print_line():
        print('---------------------------------------------------------------')

if __name__== "__main__":
    c = Config()
    print(c.getConfig())