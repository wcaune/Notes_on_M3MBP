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

### First time ifdhc 
```bash
Apptainer> ifdh cp root://fndcadoor.fnal.gov:1094/pnfs/fnal.gov/usr/dune/tape_backed/dunepro/physics/full-reconstructed/2023/mc/out1/MC_Winter2023_RITM1592444_reReco/54/05/35/65/NNBarAtm_hA_BR_dune10kt_1x2x6_54053565_607_20220331T192335Z_gen_g4_detsim_reco_65751406_0_20230125T150414Z_reReco.root /dev/null
Attempting OIDC authentication with https://htvaultprod.fnal.gov:8200

Complete the authentication at:
    https://cilogon.org/device/?user_code=QXG-66P-VD7
No web open command defined, please copy/paste the above to any web browser
Waiting for response in web browser
Storing vault token in /tmp/vt_u47736
Saving credkey to /nashome/b/biaow/.config/htgettoken/credkey-dune-default
Saving refresh token ... done
Attempting to get token from https://htvaultprod.fnal.gov:8200 ... succeeded
Storing bearer token in /tmp/bt_token_dune_Analysis_47736
[1010MB/1010MB][100%][==================================================][1010MB/s][1010MB/1010MB][100%][==================================================][1010MB/s]  
Apptainer> ifdh cp root://fndcadoor.fnal.gov:1094/pnfs/fnal.gov/usr/dune/tape_backed/dunepro/physics/full-reconstructed/2023/mc/out1/MC_Winter2023_RITM1592444_reReco/54/05/35/65/NNBarAtm_hA_BR_dune10kt_1x2x6_54053565_607_20220331T192335Z_gen_g4_detsim_reco_65751406_0_20230125T150414Z_reReco.root /dev/null
[1010MB/1010MB][100%][==================================================][1010MB/s][1010MB/1010MB][100%][==================================================][1010MB/s]
```
Tue Dec 10 10:01:13 CST 2024

### metacat password
```bash
Apptainer> metacat auth login -m password $USER 
Password:
User:    biaow
Expires: Tue Dec 17 10:54:40 2024
```
I have to setup python v3_9_15 to let things happen. The password is Fermilab service password.
