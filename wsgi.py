import sys
import os

# add your project directory to the sys.path
project_home = u'/home/rinfpythontutorial/mysite'
if project_home not in sys.path:
    sys.path = [project_home] + sys.path

# import flask app but need to call it "application" for WSGI to work
os.chdir(project_home)
from main import app as application  # noqa
