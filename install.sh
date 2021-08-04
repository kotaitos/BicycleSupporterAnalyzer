if [ ! -e "env/" ]; then
    echo '''
    ===========================================================================
    ========================== create a virtual env ===========================
    ===========================================================================
    '''
    python -m venv env
    source env/bin/activate
    python -m pip install --upgrade pip
    python -m pip install -r requirements.txt
    echo 'env/' > .gitignore
else
    echo '''
    ==========================================================================
    ===== env dir exists. If it is not a virtual env, prease remove it. ======
    ==========================================================================
    '''
fi
