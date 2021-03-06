#!/bin/bash

rm -rf /var/cache/yum;
localectl set-locale LC_CTYPE=en_US.UTF-8;
localectl set-locale LC_ALL=en_US.UTF-8;
cp ~/centos/conf/motd /etc/motd;

yum clean -y all;
yum update  -y;
yum upgrade -y;
yum install -y epel-release git ruby curl bash-completion bash-completion-extras file;
rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm;
rpm -ivh https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm;
curl -L https://copr.fedorainfracloud.org/coprs/mcepl/vim8/repo/epel-7/mcepl-vim8-epel-7.repo -o /etc/yum.repos.d/mcepl-vim8-epel-7.repo;
yum -y install yum-utils;
yum install -y httpd go rust mysql-community-server vsftpd iptables-services;
yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo;
yum install -y ctags gcc zlib zlib-devel openresty luajit luajit-devel gperftools gd-devel libxslt-devel;
yum install -y openssl openssl-devel pcre pcre-devel clang clang-devel cmake;
yum install -y rpm rpm-devel rpm-build-libs rpmdevtools;
yum install -y php php-mysql php-gd libjpeg php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-bcmath php-mhash;
yum install -y perl-ExtUtils-Embed perl-Digest-MD5;
yum install -y python python-setuptools python-devel python34 python34-setuptools python34-devel;
yum install -y mono-devel nodejs;
yum provides -y geoip-devel;
yum install -y geoip-devel;
yum install -y cargo;
yum groupinstall -y 'Development Tools';
yum remove -y vim-minimal;
yum update -y vim;

git clone https://github.com/Bluelich/centos.git ~/centos; 
cp -r ~/centos/.ssh ~;
cp ~/centos/.vimrc ~;
rm -rf ~/.vim/bundle;
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
cp ~/centos/conf/motd /etc/motd;

#vim
# install vim plugins   +qall 会自动退出vim
vim +PluginInstall! +qall;

#YouCompleteMe
#处理clang校验问题
#第一次执行创建文件,第二次执行获取key
gpg --recv-keys 02119294;
gpg --recv-keys 02119294;
cd ~/.vim/bundle/YouCompleteMe;
git submodule update --init --recursive;
cd ~;
python ~/.vim/bundle/YouCompleteMe/install.py --all;

# powerline-font
git clone https://github.com/powerline/fonts.git ~/fonts --depth=1;
sh ~/fonts/install.sh;
rm -rf ~/fonts;

# 升级内核
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org;
rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm;
yum --enablerepo=elrepo-kernel install -y kernel-ml;
grub2-set-default 0;

#oh-my-zsh
yum -y install zsh;
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
mkdir ~/.oh-my-zsh/custom/themes;
cp    ~/centos/conf/lambda-mod.zsh-theme .oh-my-zsh/custom/themes;
cp    ~/centos/conf/.zshrc ~/.zshrc
