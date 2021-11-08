#!/bin/bash
#curl -L --silent --output ${plugin_dir}/${1}.hpi  https://updates.jenkins-ci.org/latest/${1}.hpi
#https://updates.jenkins.io/download/plugins/git-client/3.10.0/git-client.hpi


if ! [ -d /opt/plugins/ ] then
mkdir /opt/plugins
fi

while read -r a b c d;
do
  if curl https://updates.jenkins.io/download/plugins/"$b"/"$d"/"$b".hpi | grep 404; then
      echo Plugin $b not found... >> file.txt
    else
      curl -L --silent --output /opt/plugins/"$b".hpi https://updates.jenkins.io/download/plugins/"$b"/"$d"/"$b".hpi
      echo Plugin $b downloaded >> file.txt
  fi
done < $1


#if curl https://updates.jenkins.io/download/plugins/git-client/3.10.0/git-client.hpii | grep 404; then
#       echo file not exists
#fi
