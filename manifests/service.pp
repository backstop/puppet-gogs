# == Class gogs::service
#
# This class is meant to be called from gogs
# It ensure the service is running
#
class gogs::service
(
  $service_ensure   = $gogs::params::service_ensure,
)
{
  include gogs::params

  service { $gogs::params::service_name:
    ensure     => $gogs::params::service_ensure,
    hasrestart => true,
    enable     => true,
  }
}
