#!/bin/bash



echo "---------------------------------------------"
echo "# DATABASES"
echo " "

# PostGres
# https://www.postgresql.org/download/linux/ubuntu/
# https://www.tecmint.com/install-postgresql-and-pgadmin-in-ubuntu/
while true; do
    read -p "Would like to install PostGres (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v psql --version -V &> /dev/null
        then
            # Create the file repository configuration:
            sudo sh -c 'echo "deb [arch=amd64] http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list';

            # Import the repository signing key:
            wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -;

            # Update the package lists:
            sudo apt-get update;

            # Install the latest version of PostgreSQL.
            # If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':
            sudo apt-get install postgresql -y;
        else
            echo "PostGres already installed!";
        fi        
            break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done



# PostGres
# https://www.postgresql.org/download/linux/ubuntu/
# https://www.tecmint.com/install-postgresql-and-pgadmin-in-ubuntu/
while true; do
    read -p "Would like to install pgAdmin4 (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v /usr/pgadmin*/bin/pgadmin* --version &> /dev/null
        then
            # Install the public key for the repository (if not done previously):
            sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add;

            # Create the repository configuration file:
            sudo sh -c 'echo "deb [arch=amd64] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update';

            # Install pgAdmin for both desktop and web modes:
            sudo apt install pgadmin4 -y;

            # Configure the webserver, if you installed pgadmin4-web:
            sudo /usr/pgadmin4/bin/setup-web.sh;
        else
            echo "pgAdmin4 already installed!";
        fi        
            break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


#xdg-open http://locahost/pgadmin4
#xdg-open https://www.pgadmin.org/download/pgadmin-4-apt/

# PostGres - Set user and password
# https://www.postgresql.org/download/linux/ubuntu/
while true; do
    read -p "Would like to set user and password for PostGres (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        # Parametros
        read -p "Set name for user (django)? " USER_POSTGRES
        read -p "Set password for user (12345)? " PASSWORD_POSTGRES

        sudo -u postgres psql postgres -c "CREATE USER $USER_POSTGRES SUPERUSER INHERIT CREATEDB CREATEROLE;";
        sudo -u postgres psql postgres -c "ALTER USER $USER_POSTGRES PASSWORD '$PASSWORD_POSTGRES';";

        # Ajusta o password do usuário "postgres"
        #\password postgres
        #psql

        break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done



# MySQL Server
while true; do
    read -p "Would like to install MySQL Server (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v mysql -V &> /dev/null
        then        
            sudo apt update;
            sudo apt install mysql-server -y;
        else
            echo "MySQL Server already installed!";
        fi        
            break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# MySQL Server
while true; do
    read -p "Would like to configure MySQL Server (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        sudo mysql_secure_installation;
        #read -p "Set password for user root (ex. 12345)? " PASSWORD_MYSQL
        #mysql --user root --execute=ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY "$PASSWORD_MYSQL";
        #read -p "Set name for user (django)? " USER_POSTGRES
        #read -p "Set password for user (12345)? " PASSWORD_POSTGRES

        break;;

        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done


# MySQL Server: 
while true; do
    read -p "Would like to set user and password for MySQL (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        mysql --user root -p --execute "SHOW VARIABLES LIKE 'validate_password%';"
        mysql --user root -p --execute "CREATE USER 'django'@'localhost' IDENTIFIED WITH caching_sha2_password BY '12345MySQL!'; FLUSH PRIVILEGES;"
        mysql --user root -p --execute "GRANT ALL PRIVILEGES ON *.* TO 'django'@'localhost'; FLUSH PRIVILEGES;"
        break;;

        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done




# Mysql Workbench
while true; do
    read -p "Would like to install Mysql Workbench (y/n)? " PROMPT
    case $PROMPT in
        [Yy]* )
        if ! command -v mysql-workbench &> /dev/null
        then        
            wget -O ~/Downloads/mysql-workbench-community.deb "https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.27-1ubuntu20.04_amd64.deb";
            sudo apt install ~/Downloads/mysql-workbench-community.deb -y;
            rm ~/Downloads/mysql-workbench-community.deb;        
        else
            echo "Mysql Workbench already installed!";
        fi        
            break;;
        
        [Nn]* )
        break;;
        
        * )
        echo "Please answer yes or no.";;
    esac
done

