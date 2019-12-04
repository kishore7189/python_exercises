#!/bin/bash
#Scripts to start services if not running
ps -ef | grep apache |grep -v grep > /dev/null
if [ $? != 0 ]
then
       /etc/init.d/apache2 start > /dev/null
fi
#ps -ef | grep docker |grep -v grep > /dev/null
#if [ $? != 0 ]
#then
#       /etc/init.d/docker start > /dev/null
#fi
ps -ef | grep mysql |grep -v grep > /dev/null
if [ $? != 0 ]
then
       /etc/init.d/mysql start > /dev/null
fi
