PS1='\[\e[1;35m\][\u@\h \w]\$\[\e[0m\] '
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#Wed Feb  6 23:52:46 CST 2019
alias la='ls -lhta' #按修改时间逆序列出所有文件
alias size='f(){ du -sh $1* | sort -hr; }; f'
alias sek='f(){ find / -name $1; }; f' # 在根目录查找文件
alias sekc='f(){ find ./ -name $1; }; f'
alias portopen='f(){ /sbin/iptables -I INPUT -p tcp --dport $1 -j ACCEPT; }; f'
alias portclose='f(){ /sbin/iptables -I INPUT -p tcp --dport $1 -j DROP; }; f'
alias www='f(){ python -m SimpleHTTPServer $1; }; f'
alias auto='systemctl list-unit-files --type=service | grep enabled | more'
alias now='date "+%Y-%m-%d %H:%M:%S"'
alias dkrnet='docker stats --no-stream | sort -k8 -hr | more'
alias untar='tar xvf '
alias unjar='jar xvf '
alias ipe='curl ipinfo.io/ip' 
#Thu Feb  7 00:00:26 CST 2019
#Tue Jul  9 14:33:42 CDT 2024
alias cddune='cd /exp/dune/app/users/biaow/'
#2024-07-09 14:35:22
function setup_nova {
  source /cvmfs/nova.opensciencegrid.org/novasoft/slf6/novasoft/setup/setup_nova.sh "$@"
  cd /exp/nova/app/users/biaow
}

function nu_dune {
source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh
cd /dune/data2/users/biaow/
}
#2024-09-26 15:19:43
alias ls='ls --color=auto'
alias dunesl7="/cvmfs/oasis.opensciencegrid.org/mis/apptainer/current/bin/apptainer shell --shell=/bin/bash -B /cvmfs,/exp,/nashome,/pnfs/dune,/opt,/run/user,/etc/hostname,/etc/hosts,/etc/krb5.conf --ipc --pid /cvmfs/singularity.opensciencegrid.org/fermilab/fnal-dev-sl7:latest"

alias dunesl7build="/cvmfs/oasis.opensciencegrid.org/mis/apptainer/current/bin/apptainer shell --shell=/bin/bash -B /cvmfs,/exp,/build,/nashome,/opt,/run/user,/etc/hostname,/etc/hosts,/etc/krb5.conf --ipc --pid /cvmfs/singularity.opensciencegrid.org/fermilab/fnal-dev-sl7:latest"

alias dunesetups="source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh"
alias sl7_c="/cvmfs/oasis.opensciencegrid.org/mis/apptainer/current/bin/apptainer shell --shell=/bin/bash -B /cvmfs,/exp,/nashome,/pnfs/dune,/opt,/run/user,/etc/hostname,/etc/hosts,/etc/krb5.conf --ipc --pid /cvmfs/singularity.opensciencegrid.org/fermilab/fnal-dev-sl7:latest"
