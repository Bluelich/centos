#!/bin/bash

path="$( cd "$(dirname "$0"  )" && pwd)";

localectl set-locale LC_CTYPE=en_US.UTF-8;
yum clean -y;
yum update  -y;
yum upgrade -y;
rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm;
rpm -ivh https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm;
curl -L https://copr.fedorainfracloud.org/coprs/mcepl/vim8/repo/epel-7/mcepl-vim8-epel-7.repo -o /etc/yum.repos.d/mcepl-vim8-epel-7.repo;
yum -y install yum-utils;
yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo;
yum install -y epel-release ruby git curl file python-setuptools bash-completion bash-completion-extras vsftpd perl-ExtUtils-Embed perl-Digest-MD5 iptables-services httpd php php-mysql php-gd libjpeg php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-bcmath php-mhash go rust mysql-community-server ctags gcc rpm rpm-devel rpm-build-libs rpmdevtools zlib zlib-devel openresty luajit  luajit-devel gperftools gd-devel libxslt-devel openssl openssl-devel pcre pcre-devel clang clang-devel cmake python;
yum provides -y geoip-devel;
yum install -y geoip-devel;
yum groupinstall -y 'Development Tools';
yum remove -y vim-minimal;
yum update -y vim;

git clone https://github.com/Bluelich/centos.git ~/centos; cp $(path)/.vimrc ~;

wget -P ~ https://jaist.dl.sourceforge.net/project/vimcdoc/vimcdoc/vimcdoc-2.1.0.tar.gz; tar -xzf ~/vimcdoc-2.1.0.tar.gz; cp -r ~/vimcdoc-2.1.0/doc/. ~/.vim/doc;
rm -rf ~/.vim/bundle;
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
# cp $(path)/motd /etc/motd;
yum -y install zsh;
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";