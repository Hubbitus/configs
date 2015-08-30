# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:/usr/sbin:$HOME/bin/php_templates
BASH_ENV=$HOME/.bashrc
#USERNAME="root"
USERNAME="pasha"

export SVN=/mnt/sgtBarracuda/SVN_test/svn/repositories

export USERNAME BASH_ENV PATH
#export BASH_ENV PATH

export EDITOR=mcedit

export PATH=/opt/sencha/cmd/Sencha/Cmd/5.1.3.61:$PATH

export SENCHA_CMD_3_0_0="/opt/sencha/cmd/Sencha/Cmd/5.1.3.61"
