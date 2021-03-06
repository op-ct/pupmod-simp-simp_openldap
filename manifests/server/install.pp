# **NOTE: THIS IS A [PRIVATE](https://github.com/puppetlabs/puppetlabs-stdlib#assert_private) CLASS**
#
# Install the required packages
#
# @param ensure
#   The state for the packages to be in
#
# @author Trevor Vaughan <tvaughan@onyxpoint.com>
#
class simp_openldap::server::install (
  Enum['latest','installed','present'] $ensure = 'latest'
){
  package { 'openldap': ensure => $ensure }
  package { "openldap-servers.${facts['hardwaremodel']}": ensure => $ensure }
}
