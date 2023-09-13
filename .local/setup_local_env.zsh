#!/usr/bin/env zsh

echo "Updating pyenv's python versions"
cd $HOME/.pyenv/plugins/python-build/../.. && git pull && cd -

echo "Installing python 3.11 with pyenv"
pyenv install 3.11 -s

echo "Creating virtualenv"
pyenv virtualenv -f 3.11 dbt-best-practices-3.11

echo "Activating virtualenv"
pyenv activate dbt-best-practices-3.11

echo "Installing dependencies..."
pip install -U pip
pip install -U -r ./.local/requirements.txt

echo "Local setup script ran successfully, happy coding!"
