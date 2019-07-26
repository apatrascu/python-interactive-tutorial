#!/bin/sh

VENV_DIR=learnpython_env

if [ -d "$VENV_DIR" ]; then
    . learnpython_env/bin/activate
else
    virtualenv $VENV_DIR
    . $VENV_DIR/bin/activate
    python -m pip install -r requirements.txt
fi

python main.py -d learnpython.org -p 5000
