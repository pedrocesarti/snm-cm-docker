class { 'rabbitmq':
	service_manage		=> true, 
	port 			=> '5672',
	default_user		=> 'admin',
	default_pass		=> 'admin',
	delete_guest_user	=> true,
#	ssl_key => '/etc/rabbitmq/ssl//server_key.pem',
#	ssl_cert => '/etc/rabbitmq/ssl//server_cert.pem',
#	ssl_cacert => '/etc/rabbitmq/ssl//cacert.pem',
#	ssl => true,
}

rabbitmq_vhost { '/sensu': }

rabbitmq_user { 'sensu': 
	password => 'sensu',
}

rabbitmq_user_permissions { 'sensu@/sensu':
	configure_permission => '.*',
	read_permission => '.*',
	write_permission => '.*',
}
