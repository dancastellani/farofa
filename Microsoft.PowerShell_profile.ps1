Set-Alias "cd.." "cd ..";
function countrevisions{
	echo "Counting revisions of: $args";
	echo "geting log..."
	$svnlog = svn log -q --stop-on-copy $args;
	echo "counting..."	
	[regex]::matches($svnlog,"r\d+").count};
Set-Alias cr countrevisions;
function rm-rf {echo "rm -Recurse -Force $args";rm -Recurse -Force $args};
