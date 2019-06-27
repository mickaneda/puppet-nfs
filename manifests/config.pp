class nfs::config (
  $lockdarg            = $::nfs::params::lockdarg,
  $lockd_tcpport       = $::nfs::params::lockd_tcpport,
  $lockd_udpport       = $::nfs::params::lockd_udpport,
  $rpcnfsdargs         = $::nfs::params::rpcnfsdargs,
  $rpcnfsdcount        = $::nfs::params::rpcnfsdcount,
  $nfsd_v4_grace       = $::nfs::params::nfsd_v4_grace,
  $nfsd_v4_lease       = $::nfs::params::nfsd_v4_lease,
  $rpcmountdopts       = $::nfs::params::rpcmountdopts,
  $mountd_port         = $::nfs::params::mountd_port,
  $statdarg            = $::nfs::params::statdarg,
  $statd_port          = $::nfs::params::statd_port,
  $statd_outgoing_port = $::nfs::params::statd_outgoing_port,
  $statd_ha_callout    = $::nfs::params::statd_ha_callout,
  $smnotifyargs        = $::nfs::params::smnotifyargs,
  $rpcidmapdargs       = $::nfs::params::rpcidmapdargs,
  $rpcgssdargs         = $::nfs::params::rpcgssdargs,
  $gss_use_proxy       = $::nfs::params::gss_use_proxy,
  $blkmapdargs         = $::nfs::params::blkmapdargs,
) inherits nfs::params {
  file { '/etc/sysconfig/nfs':
    ensure  => present,
    content => template("${module_name}/nfs.erb"),
  }
}
