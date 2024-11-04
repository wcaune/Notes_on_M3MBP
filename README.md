# Notes_on_M3MBP
Notes after I got my M3Max Macbook Pro
###  Install ROOT 6.32
The first step is to install CMake 3.29 from the command line terminal. See 
Frederico Martins's guide.

### XQuartz
After installed XQuartz, run the following command in terminal.
```bash
defaults write org.macosforge.xquartz.X11 enable_iglx -bool true
```
Then type 
```bash
xclock
```
to see if it is enabled.

### Fetch
I used my ‘.edu’ email account to apply for a free version of Fetch. Now I’m using SFTP to connect.

### BBEdit or Sublime
I finally purchased a BBEdit 15.

### Eduroam Network at Fermilab
The account is username@WIN.FERMI.GOV and the password is the same as your Fermilab service password.

### Github and NOvA software
I follow the wiki page to link Github, my M3Max Macbook Pro and the novagpvm nodes together.
```html
https://cdcvs.fnal.gov/redmine/projects/novaart/wiki/Github
```
### RSA and sl7 related changes 
After I setup my github keys. And I got this message when I tried to make a new test release.
```bash
Apptainer> newrel -t development testrel_TestBeamWorkshop
Creating a test release "testrel_TestBeamWorkshop" in the directory
    /exp/nova/app/users/biaow
Doing a sparse checkout
Cloning into 'testrel_TestBeamWorkshop'...
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@       WARNING: POSSIBLE DNS SPOOFING DETECTED!          @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
The RSA host key for github.com has changed,
and the key for the corresponding IP address 140.82.113.3
is unknown. This could either mean that
DNS SPOOFING is happening or the IP address for the host
and its host key have changed at the same time.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)!
It is also possible that a host key has just been changed.
The fingerprint for the RSA key sent by the remote host is
SHA256:uNiVztksCsDhcc0u9e8BujQXVUpKZIDTMczCvj3tD2s.
Please contact your system administrator.
Add correct host key in /nashome/b/biaow/.ssh/known_hosts to get rid of this message.
Offending RSA key in /nashome/b/biaow/.ssh/known_hosts:5
RSA host key for github.com has changed and you have requested strict checking.
Host key verification failed.
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.


newrel failed.
```
Then I opened the known_hosts file, and deleted all lines. Then it worked.




### open .eps files
There are some colors that are shown different than shown in the .png version. So I just save the figures in the pdf format.

### OS updates
- Thu Aug 15 11:51:37 CDT 2024 -> 14.6.1 (23G93)

### Python 3.12.5
After I installed Python 3.12, my pyROOT stopped working by Mon Aug 26 12:31:09 CDT 2024. I cannot import ROOT for now.

### Sequoia Version 15.0.1 
Mon Oct 21 14:34:27 CDT 2024, I updated the MacOS, then I cannot connect to Fermilab fgz network.

### DNS servers
I took my MacBook Pro to the service office, and the Fermilab experts helped me set up the DNS servers.
```
131.225.0.254
```
Now I can reconnect to fgz. 
```bash
ping fnal.gov
```
Mon Nov  4 14:58:21 CST 2024,  I brought the ViewSonic 4K monitor to WH10E in the morning.
