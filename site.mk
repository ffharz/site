##	GLUON_FEATURES
#		Specify Gluon features/packages to enable;
#		Gluon will automatically enable a set of packages
#		depending on the combination of features listed

GLUON_FEATURES := \
	autoupdater \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-limit-arp \
	mesh-batman-adv-15 \
	mesh-vpn-fastd \
	respondd \
	status-page \
	web-advanced \
	web-wizard

GLUON_FEATURES_standard := \
  wireless-encryption-wpa3

##	GLUON_SITE_PACKAGES
#		Specify additional Gluon/OpenWrt packages to include here;
#		A minus sign may be prepended to remove a packages from the
#		selection that would be enabled by default or due to the
#		chosen feature flags

GLUON_SITE_PACKAGES := \
        iwinfo \
        ffharz-reboot \
        ffharz-fastd \
        ffho-node-tuning \
        gluon-ssid-changer \
        gluon-alfred \
        gluon-authorized-keys \
        gluon-config-mode-domain-select \
        gluon-respondd \
        gluon-neighbour-info \
        gluon-node-info \
        gluon-web-admin \
        gluon-web-private-wifi \
        gluon-web-wifi-config \
        gluon-web-network \
        gluon-setup-mode \
        gluon-config-mode-contact-info \
        gluon-config-mode-core \
        gluon-config-mode-geo-location \
        gluon-config-mode-hostname \
        gluon-config-mode-mesh-vpn \
        gluon-radvd \

GLUON_MULTIDOMAIN=1

DEFAULT_GLUON_RELEASE := 2022.1.4~$(shell date  '+%Y%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0
GLUON_AUTOUPDATER_BRANCH ?= experimental
GLUON_AUTOUPDATER_ENABLED ?= 1

GLUON_OUTPUTDIR ?= output/$(GLUON_RELEASE)/$(GLUON_AUTOUPDATER_BRANCH)

GLUON_LANGS ?= de en
GLUON_REGION = eu
GLUON_DEPRECATED ?= full
