#!/bin/bash
#bundle Group Files into distribution package
# Code from Unix Programming Env.

# Usage Example :  bundle.sh *.log

echo '# To unbundle sh this file'
for i
do

	echo "echo $i 1>&2"
	echo "cat >$i <<'ZEnd of $i'"
	cat $i
	echo "ZEnd of $i"

done
