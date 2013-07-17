#/bin/bash
#
# Description:
#   deletes the given line in the known_hosts file
#   located at ~/.ssh/known_hosts. If a ssh connection will be
#   refused due to an offending key, the error message contains
#   the line number. Just put this line number as parameter to
#   this script.
#
# written by Gerd Koenig <gerd.koenig@ymc.ch>
#
knownHostsFile=~/.ssh/known_hosts

if [ -z $1 ]; then
  echo "no line no. given. Provide the line number as parameter."
  exit 1
fi
if [ ! -f $knownHostsFile ]; then
  echo "known_hosts file not found"
  exit 1
fi
echo "deleting line no. $1 from known_hosts file"
sed -i "$1d" $knownHostsFile
echo "..done"
exit 0
