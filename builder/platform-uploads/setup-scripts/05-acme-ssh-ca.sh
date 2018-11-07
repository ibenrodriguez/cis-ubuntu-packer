#!/bin/bash -xe

# scalesec-ssh-ca
# sudo cp /tmp/scalesec-cas.pub /etc/ssh/scalesec-cas.pub
sudo mkdir -p /etc/ssh/auth_principals/
sudo sh -c 'echo "TrustedUserCAKeys /etc/ssh/scalesec-cas.pub" >> /etc/ssh/sshd_config'
sudo sh -c 'echo "AuthorizedPrincipalsFile /etc/ssh/auth_principals/%u" >> /etc/ssh/sshd_config'
sudo sh -c 'echo "scalesec-recovery-user" > /etc/ssh/auth_principals/scalesec-recovery-user'
sudo sh -c 'echo "scalesec-recovery-user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/scalesec-recovery-user'
sudo useradd -m scalesec-recovery-user -s /bin/bash
sudo -H -u scalesec-recovery-user bash -c 'mkdir ~/.ssh'
# sudo -H -u scalesec-recovery-user bash -c 'cat /tmp/scalesec-recovery-user.pub > ~/.ssh/authorized_keys'
# sudo chmod 600 /home/scalesec-recovery-user/.ssh/authorized_keys
