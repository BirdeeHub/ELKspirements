#!/bin/bash
sudo chmod 600 /etc/shadow;
sudo chmod 600 /etc/gshadow;
sudo chmod 644 /etc/group;
sudo chmod 644 /etc/passwd;
sudo adduser sam;
sudo adduser joe;
sudo adduser amy;
sudo adduser sara;
sudo adduser admin;
sudo usermod -aG sudo admin;
sudo addgroup engineers;
sudo usermod -aG engineers sam;
sudo usermod -aG engineers joe;
sudo usermod -aG engineers amy;
sudo usermod -aG engineers sara;
sudo mkdir engineers;
sudo chgrp -R engineers /home/engineers;
sudo chmod -R 2770 /home/engineers; #(770 so that only they have access, and the 2 for making sure that the group still has ownership of new directories and files saved in the engineers directory)
sudo apt install chkrootkit -y;
sudo apt install lynis -y;
sudo lynis audit system >> LynisAudit.txt;