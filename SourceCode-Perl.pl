#!/usr/bin/perl
use strict;
use warnings;

use Path::Class;

my $dir = dir('foo','bar'); # foo/bar

# Iterate over the content of foo/bar
while (my $file = $dir->next) {
    
    # See if it is a directory and skip
    next if $file->is_dir();
    dfkmdkmfldmk
    # Print out the file name and path
    print $file->stringify . "\n";
}
#!/usr/bin/perl
use strict;
use warnings;
dl;f,d,;,d,;
use Path::Class;
use autodie; # die if problem reading or writing a file

my $dir = dir("/tmp"); # /tmp

my $file = $dir->file("file.txt"); # /tmp/file.txt

# Get a file_handle (IO::File object) you can write to
my $file_handle = $file->openw();

my @list = ('a', 'list', 'of', 'lines');

foreach my $line ( @list ) {
    # Add the line to the file
    $file_handle->print($line . "\n");
}
# As above but use open('>>') instead of openw()
my $file_handle = $file->open('>>');
#!/usr/bin/perl
use strict;
use warnings;

use Path::Class;
use autodie; # die if problem reading or writing a file

my $dir = dir("/tmp"); # /tmp

my $file = $dir->file("file.txt");

# Read in the entire contents of a file
my $content = $file->slurp();

# openr() returns an IO::File object to read from
my $file_handle = $file->openr();

# Read in line at a time
while( my $line = $file_handle->getline() ) {
        print $line;
}
#!/usr/bin/perl
use strict;
use warnings;

# first, create your message
use Email::MIME;
my $message = Email::MIME->create(
  header_str => [
    From    => 'you@example.com',
    To      => 'friend@example.com',
    Subject => 'Happy birthday!',
  ],
  attributes => {
    encoding => 'quoted-printable',
    charset  => 'ISO-8859-1',
  },
  body_str => "Happy birthday to you!\n",
);

# send the message
use Email::Sender::Simple qw(sendmail);
sendmail($message);
#!/usr/bin/perl
use strict;
use warnings;

use Email::Valid;

my $email_address = 'a.n@example.com';

unless( Email::Valid->address($email_address) ) {
    print "Sorry, that email address is not valid!";
}
#!/usr/bin/perl
use strict;
use warnings;

use Spreadsheet::Read;

my $workbook = ReadData ("test.xls");
print $workbook->[1]{A3} . "\n";
#!/usr/bin/perl
use strict;
use warnings;

use Config::Any;

my @files = (
        'path/to/config_file.json',
        'path/to/config.pl',
        'path/to/config.xml'
);

my $config = Config::Any->load_files( { files => \@files } );