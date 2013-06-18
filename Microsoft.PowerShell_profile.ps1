Set-Alias "cd.." "cd ..";
function countrevisions{
	echo "Counting revisions of: $args";
	echo "geting log..."
	$svnlog = svn log -q --stop-on-copy $args;
	echo "counting..."	
	[regex]::matches($svnlog,"r\d+").count
};
Set-Alias cr countrevisions;

function rm-rf {echo "rm -Recurse -Force $args";rm -Recurse -Force $args};

function farofa {
	echo "To see the list of commands and documentation check Farofa's website";
	echo " - https://github.com/dancastellani/farofa"
};