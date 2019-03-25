package T113::StudyReporter::CommandLine::Common;

# ABSTRACT: Common command line settings

=head1 SYNOPSIS
Common command line settings
   extends 'T113::StudyReporter::CommandLine::Common';
=cut

use Moose;
use Log::Log4perl qw(:easy);

has 'logger'                  => ( is => 'ro', lazy => 1, builder => '_build_logger');
has 'version'                 => ( is => 'rw', isa => 'Bool', default => 0 );

sub _build_logger
{
    my ($self) = @_;
    Log::Log4perl->easy_init($ERROR);
    my $logger = get_logger();
    return $logger;
}


sub run {
	my ($self) = @_;
}

sub usage_text {
    my ($self) = @_;
	return "Usage text";
}

sub _version {
    my ($self) = @_;
    return "x.y.z\n";
}

no Moose;
1;