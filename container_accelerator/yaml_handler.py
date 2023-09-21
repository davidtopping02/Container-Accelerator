import yaml

def parse(filename):
    with open(filename,"r") as stream:
        data = yaml.safe_load(stream)
        return data

def write(filename, data):
    with open(filename, 'w') as file:
        yaml.dump(data, file)