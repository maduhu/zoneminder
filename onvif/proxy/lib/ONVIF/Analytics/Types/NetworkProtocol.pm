package ONVIF::Analytics::Types::NetworkProtocol;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Name_of :ATTR(:get<Name>);
my %Enabled_of :ATTR(:get<Enabled>);
my %Port_of :ATTR(:get<Port>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        Name
        Enabled
        Port
        Extension

    ) ],
    {
        'Name' => \%Name_of,
        'Enabled' => \%Enabled_of,
        'Port' => \%Port_of,
        'Extension' => \%Extension_of,
    },
    {
        'Name' => 'ONVIF::Analytics::Types::NetworkProtocolType',
        'Enabled' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'Port' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'Extension' => 'ONVIF::Analytics::Types::NetworkProtocolExtension',
    },
    {

        'Name' => 'Name',
        'Enabled' => 'Enabled',
        'Port' => 'Port',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::NetworkProtocol

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
NetworkProtocol from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Name


=item * Enabled


=item * Port


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::NetworkProtocol
   Name => $some_value, # NetworkProtocolType
   Enabled =>  $some_value, # boolean
   Port =>  $some_value, # int
   Extension =>  { # ONVIF::Analytics::Types::NetworkProtocolExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
