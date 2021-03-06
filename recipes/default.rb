#
# Cookbook Name:: useradd
# Recipe:: default
#
# Copyright 2014, My Future Company
#
# All rights reserved - Do Not Redistribute
#
# Author ohyoungjooung@gmail.com


template '/root/users' do
    source 'user.txt.erb'
end

cookbook_file "/root/authorized_keys" do
    source "authorized_keys"
    mode 0600
end

bash 'useradding' do
    user "root"
    cwd "/root"
    code <<-EOH 
    check(){
     if [[ $?=="0" ]]
     then
      echo "$1 is successful"
     else 
      echo "failed to achive mission"
      exit 1 
     fi
    }
    groupadd users_group
    for i in $(cat users)
    do
    USER=`echo $i | cut -d':' -f1`
    GROUP=`echo $i | cut -d':' -f2`
    #RUN COMMAND OF useradd
    useradd $USER -g $GROUP -m
    check "$USER useradd"
    mkdir /home/$USER/.ssh
    check "$USER mkdir"
    cp authorized_keys /home/$USER/.ssh/
    check "$USER authcp"
    chmod 0700 /home/$USER/.ssh
    chown -R $USER /home/$USER/.ssh
    chmod 0600 /home/$USER/.ssh/authorized_keys
    done
    rm -f /root/users
    rm -f /root/authorized_keys
    EOH
end
