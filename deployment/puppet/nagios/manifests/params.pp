class nagios::params {

  $services_list = {
    'nova-compute' => 'check_nrpe_1arg!check_nova_compute',
    'nova-network' => 'check_nrpe_1arg!check_nova_network',
    'libvirt' => 'check_libvirt',
    'keystone' => 'check_http_api!5000',
    'nova-novncproxy' => 'check_nrpe_1arg!check_nova_novncproxy',
    'nova-scheduler' => 'check_nrpe_1arg!check_nova_scheduler',
    'nova-consoleauth' => 'check_nrpe_1arg!check_nova_consoleauth',
    'nova-cert' => 'check_nrpe_1arg!check_nova_cert',
    'cinder-scheduler' => 'check_nrpe_1arg!check_cinder_scheduler',
    'cinder-volume' => 'check_nrpe_1arg!check_cinder_volume',
    'haproxy' => 'check_nrpe_1arg!check_haproxy',
    'memcached' => 'check_nrpe_1arg!check_memcached',
    'nova-api' => 'check_http_api!8774',
    'cinder-api' => 'check_http_api!8776',
    'glance-api' => 'check_http_api!9292',
    'glance-registry' => 'check_nrpe_1arg!check_glance_registry',
    'horizon' => 'check_http_api!80',
    'rabbitmq' => 'check_rabbitmq!nova!nova',
    'mysql' => 'check_galera_mysql!nova!nova',
    'apt' => 'nrpe_check_apt',
    'kernel' => 'nrpe_check_kernel',
    'libs' => 'nrpe_check_libs',
    'load' => 'nrpe_check_load!5.0!4.0!3.0!10.0!6.0!4.0',
    'procs' => 'nrpe_check_procs!250!400',
    'zombie' => 'nrpe_check_procs_zombie!5!10',
    'swap' => 'nrpe_check_swap!20%!10%',
    'user' => 'nrpe_check_users!5!10',
  }
}