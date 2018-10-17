# 

## Provisionning

Using tfenv

    tfenv install 0.11.8
    tfenv use 0.11.8


Make conf

    cp credentials.sh.example credentials.sh
    vi credentials.sh   # Enter credentials
    source credentials.sh
    terraform init
    terraform apply

## Config

Using virtualenv

    virtualenv ../../.env
    source ../../.env/bin/activate
    pip install -r requirements.txt


    ansible-playbook -vv --inventory inventories/aircall install.yml