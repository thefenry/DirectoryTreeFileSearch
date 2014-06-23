use File::Find;

@fileLocations;

find (
{
	wanted => \&findfiles,

	}, 'C:\Users\thefenry\Desktop\testdirectory' #this is the location of the directory root
	);

sub findfiles{
	push(@fileLocations, $File::Find::name) if /test1.cs$/;
}

# print "Size: ", scalar @fileLocations, "\n"; #This prints the size just to make sure that it 
																							#is as expected when developing
exit;
