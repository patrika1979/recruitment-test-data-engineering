import pandas
#import matplotlib.pyplot as plt
from sqlalchemy import create_engine

#engine = create_engine("postgresql+psycopg2:///?User=postgres&;Password=postgres&Database=findmypast&Server=localhost&Port=5433")
engine = create_engine('postgresql+psycopg2://postgres:postgres@127.0.0.1:5433/findmypast')
df = pandas.read_sql("SELECT * from people", engine)
df.head(10)
