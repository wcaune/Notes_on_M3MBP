#
# Add any personal extra databases here:
#
#UPS_EXTRA_DIR=$HOME/p/upsdb; export UPS_EXTRA_DIR
#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# get ups environment, and then setup the login product

#
export CLICOLOR=1
#sets up the color scheme for list
export PS1='[\h]\w ==>>  '
export LSCOLORS=gxfxcxdxbxegedabagacad
export TERM=xterm-color
alias lol='ls -ahl'
alias lolt='ls -ahlt'
alias sn='setup_nova'
alias ewsn='setup_nova -r S14-08-01'
alias jan2015='setup_nova -r S15-01-16'
alias ss='srt_setup -a'
alias taobao='cd /nova/app/users/biao/yi4jun30'
alias evd='nova -c job/evd.fcl -s'
alias biaoapp='cd /nova/app/users/biao/cosmicTr'
alias novagmake='/grid/fermiapp/nova/novaart/novasoft/releases/development/SRT_NOVA/scripts/novasoft_build -t'
alias dune='source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh'


#
# make sure our .shrc gets run...
#
ENV=$HOME/.shrc
export ENV 
if [ "`basename $SHELL`" != ksh -a -r $ENV ]
then
    . $ENV
fi

function setup_nova
{
echo "" 
echo "NOvASoft" 
echo "" 
echo "Setting SRT_DIST, EXTERNALS" 
echo "Sourcing generic setup_novasoft script for SVN control" 
source /grid/fermiapp/nova/novaart/novasvn/setup/setup_nova.sh "$@"
#source /grid/fermiapp/nova/novaart/novasvn/srt/srt.sh
export EXTERNALS=/nusoft/app/externals
#source $SRT_DIST/setup/setup_novasoft.sh "$@" 
cd /nova/app/users/biaow
echo "working directory: $PWD"
}

function up_nova
{
  source /cvmfs/nova.opensciencegrid.org/novasoft/slf6/novasoft/setup/setup_nova.sh "$@" 
  cd /nova/app/users/biaow
}

function setup_art_work
{
echo " setting up art workbook"
source /grid/fermiapp/nova/novaart/novasvn/srt/srt.sh export EXTERNALS=/nusoft/appp/externals
export ART_WORKBOOK_OUTPUT_BASE=/nova/data/users export ART_WORKBOOK_WORKING_BASE=/nova/app/users
export ART_WORKBOOK_QUAL="nu:e5"
}
function biaosam
{
export PRODUCTS=/grid/fermiapp/products/common/db/:$PRODUCTS
#setup sam_web_client
setup sam_web_client v1_5 -z /grid/fermiapp/products/common/db
export EXPERIMENT=nova
export SAM_STATION=nova
export SAM_EXPERIMENT=nova
export GROUP=nova
kx509

# configure fetch for sam
export IFDH_BASE_URI="http://samweb.fnal.gov:8480/sam/nova/api"
export IFDH_DEBUG=1
unset IFDH_STAGE_VIA
}
function gridjob_wb
{
source /grid/fermiapp/products/common/etc/setups.sh
setup jobsub_client

chmod a+x /nova/app/users/biaow
chmod g+w /pnfs/nova/scratch/users/biaow
}
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# The default umask setting is 022, disabling writes except by
# owner.  Uncomment the following line to allow group writes.
# umask 002
alias snrt='setup_nova -r S13-10-11'
# set prompt
PS1="<`hostname`> "; export PS1
function setup_proxy
{
  location="${HOME}/.globus/usercert.pem" 
  kx509 -o $location
  ls -ltrh $location
  export X509_USER_PROXY=$location
  voms-proxy-init -rfc -noregen -voms=fermilab:/fermilab/nova/Role=Analysis -cert $location
}
# set default printer, etc.
# FLPQUE=fcc2w_ps;	export FLPQUE;
# FLPHOST=fnprt;		export FLPHOST;

# set timezone, esp if you don't want central time
# export TZ;		TZ=CST6CDT
### NOW for DUNE
function ssdunepdk
{
  source /grid/fermiapp/products/dune/setup_dune.sh
  setup dunetpc v06_56_00 -q e14:prof
  cd /dune/app/users/biaow/
}
#Tue Dec 19 12:04:16 CST 2017
#Today is Pungenday, the 61st day of The Aftermath in the YOLD 3183


# Wed  10:10am feb14, 2018

# Dr. Biao Wang
function febpdk
{
    source /grid/fermiapp/products/dune/setup_dune.sh
    setup dunetpc v06_67_01 -q e15:prof
    cd /dune/app/users/biaow/feb2018/
    cigetcert -ns fifebatch.fnal.gov
}

# Wed 12:12 PM UCLA faculty center

function ssate
{
    source /grid/fermiapp/products/dune/setup_dune.sh
    setup dunetpc v06_68_00 -q e15:prof
    cd /dune/app/users/biaow/reco668/
    source /dune/app/users/biaow/reco668/localProducts_larsoft_v06_68_00_e15_prof/setup
}
# Now add v6_72_00
#Tue Apr  3 14:54:57 CDT 2018
#Today is Pungenday, the 20th day of Discord in the YOLD 3184
function wufor
{
    source /grid/fermiapp/products/dune/setup_dune.sh
    setup dunetpc v06_72_00 -q e15:prof
    cd /dune/app/users/biaow/
    date
}
function pdktdr
{
    dune
    setup dunetpc v07_06_01 -q e17:prof
    cd /dune/app/users/biaow/
    date
}

#  For LDM
export LD_LIBRARY_PATH=/nova/app/users/biaow/pythia8226/lib/:$LD_LIBRARY_PATH
# Mon Oct 15 12:33:32 CDT 2018
