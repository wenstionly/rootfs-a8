#!/bin/sh
echo "Content-Type: text/html"
echo ""
ENVS=`printenv | \
	awk -F= '{print "<tr><td class=\"e\">" $1 "</td><td class=\"v\">" $2 "</td></tr>"}'`
cat printenv.template | \
	awk -v ENVS="$ENVS" \
	'/_env_body_/{print ENVS} \
	!/_env_body_/ {print $0}'

