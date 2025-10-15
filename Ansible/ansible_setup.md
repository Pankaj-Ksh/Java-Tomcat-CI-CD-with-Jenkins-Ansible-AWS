# Ansible : Setup and Configuration

## Steps must do on Ansible Client(Tomcat Server) and can be used on Ansible Master
By default root login is blocked. We enable it temporarily so Master can log in.

**Change Password**
```
passwd root
```
- set password : pankaj123

**Give Access**
```
vi /etc/ssh/sshd_config
```
 Add or make 
- PasswordAuthentication yes
- PermitRootLogin yes

**Restart the sshd service** 
```
systemctl restart sshd
```

```
systemctl status sshd
```
  

## Steps to do On Ansible master : 

**Download Ansible** 
```
dnf install ansible -y
```

**Download python**
```
dnf install python3 python3-pip python3-devel -y
```

**Check Version**
```
ansible --version
```

**Inventory File (`/etc/ansible/hosts`)**
```
vi /etc/ansible/hosts
```
- add server using private ip

**Check inventory:**
```
ansible-inventory --list
```

**Generate Key Pair**
```
ssh-keygen               
```

**Check keys** 
```
ll ~/.ssh                
```

**Copy Public Key to Targets:**
```
ssh-copy-id root@<tomcat-server-private-ip>
```


**Test connection:**
```
ansible -m ping all
```
