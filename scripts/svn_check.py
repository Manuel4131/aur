# DO NOT name this file as svn.py
import sys
from svn.remote import RemoteClient

r = RemoteClient(sys.argv[1])
print(r.info()['entry_revision'])
