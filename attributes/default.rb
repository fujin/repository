default[:repository][:packages] = %w(dpkg-dev debsigs)
default[:repository][:base] = '/srv/repository'
default[:repository][:repos] = []
default[:repository][:incoming][:codename] = node.lsb.codename
default[:repository][:incoming][:name] = 'incoming'
default[:repository][:incoming][:architecture] = 'amd64'
default[:repository][:incoming][:label] = 'Incoming Repository'
default[:repository][:incoming][:description] = 'Incoming repository for dropped off packages'
default[:repository][:incoming][:directory] = '/srv/repository_incoming'
default[:repository][:incoming][:multi_version] = true
default[:repository][:incoming][:enable_locally] = true
default[:repository][:gnupg_home] = '/root/.gnupg'
default[:repository][:data_bag] = 'repository'
default[:repository][:pgp_data_bag] = false
default[:repository][:install_local_repos] = []

default[:repository][:do_not_sign] = false

# Repository Frontend (nginx)
default['repository']['frontend']['listen_port'] = 443
default['repository']['frontend']['fqdn'] = fqdn
default['repository']['frontend']['ssl_certificate'] = '/etc/ssl/certs/ssl-cert-snakeoil.pem'
default['repository']['frontend']['ssl_certificate_key'] = '/etc/ssl/private/ssl-cert-snakeoil.key'
