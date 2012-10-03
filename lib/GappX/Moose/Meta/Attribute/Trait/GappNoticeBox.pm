package GappX::Moose::Meta::Attribute::Trait::GappNoticeBox;
use Moose::Role;

use MooseX::Types::Moose qw( ArrayRef HashRef );

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'GappX::NoticeBox' if ! exists $opts->{class};
    
};

package Moose::Meta::Attribute::Custom::Trait::GappNoticeBox;
sub register_implementation { 'GappX::Moose::Meta::Attribute::Trait::GappNoticeBox' };
1;
