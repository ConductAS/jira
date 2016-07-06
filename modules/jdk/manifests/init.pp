class jdk (
 
 $version           = hiera('jdk::version',                  '8' ),
 $version_update    = hiera('jdk::verions_update',     'default' ),
 $version_build     = hiera('jdk::version_build',      'default' ),
 $platform          = hiera('jdk::platform',               'x64' ),
 $ensure            = 'installed'
 ) {

    jdk::install{ 'oracle_java':
      ensure          => $ensure,
      version         => $version,
      version_update  => $version_update,
      platform        => $platform,
      }
   if ! defined(Package['wget']) {
    package { 'wget':
      ensure =>  present,
    }
  }

  if ! defined(Package['unzip']) {
    package { 'unzip':
      ensure =>  present,
    }
  }   
      
}
