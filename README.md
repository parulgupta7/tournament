# tournament

#Introduction
Developed a database schema to store the game matches held between players.
To query the data a python code has been developed and it also determines the winners of various matches by Swiss system.

#Files Included
* tournament.sql: This file contains all the tables and views created. It also contains all the basic queries required in the project.
* tournament.py : This file contains all the basic functions like deleting or adding the players, adding matches, paring players, etc.
* tournament_test.py : This file Tests all the possible outcomes and raises an exception if conditions are not fulfilled.

## Steps To Run The Application:
1. Use terminal for Mac or Linux and Git Bash for Windows to run the application.
2. From the given link, install VirtualBox : https://www.virtualbox.org/wiki/Downloads
3.  From the given link, install Vagrant : https://www.vagrantup.com/downloads.html
4. Now, start the virtual machine by using `vagrant up` command.
5. After you have downloaded all the necessary files, login to the Linux Vm using `vagrant ssh` command.
6. Now, change the directory to the cloned folder by using following command : `cd /vagrant/tournament`
7. Run 'psql' command and import the given sql file using this command: `\i tournament.sql` to your database.
8. Run the file using this command: `python tournament_test.py`

## SUCCESS! All tests Pass!
