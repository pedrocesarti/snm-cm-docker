class { 'sensu':
	server => true,
	rabbitmq_password => 'password',
	rabbitmq_host => 'rabbitmq',
	subscriptions => 'sensu-test',
}
