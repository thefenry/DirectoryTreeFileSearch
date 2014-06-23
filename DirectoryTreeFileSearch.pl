use File::Find;

@fileLocations;

find ( 
	{	wanted => \&findfiles,	}, 'C:\Source\ServerEPS\_BASELINE_\DotNet4x' #this is the location of the directory root
);

sub findfiles{
	if (-d and $_ eq "3rdParty") {   #This line of code will exclude the directory 3rdparty if it is found. The
		$File::Find::prune = 1					#directory will be ignored along with files in it
	}
	push(@fileLocations, $File::Find::name) if /AssemblyInfo.cs$/;
}
 foreach (@fileLocations){
 	print "$_\n"
 }

print "Size: ", scalar @fileLocations, "\n"; #This prints the size just to make sure that it 
																							#is as expected when developing
exit;
