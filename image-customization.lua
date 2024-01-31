features {
	'autoupdater',
	'ebtables-filter-multicast',
	'ebtables-filter-ra-dhcp',
	'ebtables-limit-arp',
	'mesh-batman-adv-15',
	'mesh-vpn-fastd',
	'respondd',
	'status-page',
	'web-advanced',
	'web-wizard',
    'web-cellular'
}

if not device_class('tiny') then
	features {
		'wireless-encryption-wpa3'
	}
end

packages {
    'iwinfo',
    'ffharz-reboot',
    'ffharz-fastd',
    'ffho-node-tuning',
    'gluon-ssid-changer',
    'gluon-alfred',
    'gluon-authorized-keys',
    'gluon-respondd',
    'gluon-neighbour-info',
    'gluon-node-info',
    'gluon-web-private-wifi',
    'gluon-setup-mode',
    'gluon-config-mode-core',
    'gluon-config-mode-domain-select',
    'gluon-radvd',
    'gluon-status-page-mesh-batman-adv'
}