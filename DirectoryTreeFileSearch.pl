# print "Enter the file name:";
# my $file=<>;
# chomp($file);
 
# open(OUT,$file) || die ("Could not open $file file.");
 
# open(MYOP,">final.txt") || die ("Could not open $data file.");
 
# print MYOP "Below files are not exist in the Dir:\n";
 
# while ( $myfile = <OUT> )
# {
# print "Your File is:$myfile\n";
 
# my $name = "C:/Users/foobar/files/$myfile";
 
# #print "Full Path is $name\n";
 
# chomp($name);
# if ( -e "$name" )
 
# #if ( -e "$file" )
# {
#     print "File exists!\n";
# }
# else
# {
#     chomp($myfile);
#     print MYOP $myfile."\n"
# }
# }


# use strict;
# use warnings;
 
# use File::Find::Rule;
# use File::Basename qw(basename);
 
# my $path = "C:/Users/foobar/files/dir1";
# my $report = 'final.txt';
# my $expected = <STDIN>;
# chomp $expected;
 
# open(my $fh, '<', $expected) or die "Could not open '$expected' $!\n";
# open(my $out, '>', $report) or die "Could not open '$report' $!\n";
 
# my @full_pathes = File::Find::Rule->file->name('*.pdf')->in($path);
# my @files = map { lc basename $_ } @full_pathes;
# my %file = map { $_ => 1 } @files;
 
# print $out "Below files do not exist in the Dir ($path):\n";
# while (my $name = <$fh>) {
#     chomp $name;
#     if ($file{lc $name}) {
#         print "$name found\n";
#     } else {
#         print $out "$name\n";
#     }
# }
# close $out;
# close $fh;


 # use File::List;

 #  my $search = new File::List('C:\Users\thefenry\Desktop\testdirectory');
 #  $search->show_empty_dirs();                   # toggle include empty directories in output
 #  my @files  = @{ $search->find('\test1.cs\$') };    # find all perl scripts in /usr/local

# cpan 

print "Content-type: text/html\n\n";

 use File::Find;

 @fileLocations;

 # find sub { print "$File::Find::name\n"}, "testdirectory";

find (
{
	wanted => \&findfiles,

	}, 'C:\Users\thefenry\Desktop\testdirectory' #this is the location of the directory root
	);

sub findfiles{
	print "$File::Find::name\n" if /test1.cs$/;
}
 exit;
