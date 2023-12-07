GLUON_SITE_PACKAGES := \
        gluon-mesh-batman-adv-15 \
        gluon-alfred \
        gluon-respondd \
        gluon-authorized-keys \
        gluon-autoupdater \
        gluon-config-mode-autoupdater \
        gluon-config-mode-contact-info \
        gluon-config-mode-core \
        gluon-config-mode-geo-location \
        gluon-config-mode-hostname \
        gluon-config-mode-mesh-vpn \
        gluon-ebtables-filter-multicast \
        gluon-ebtables-filter-ra-dhcp \
        gluon-web-admin \
        gluon-web-autoupdater \
        gluon-web-wifi-config \
        gluon-web-network \
        gluon-web-private-wifi \
        gluon-web-node-role \
        gluon-mesh-vpn-fastd \
        gluon-radvd \
        gluon-neighbour-info \
        gluon-node-info \
        gluon-setup-mode \
        gluon-status-page \
        gluon-status-page-mesh-batman-adv \
        iptables \
        iwinfo \
        ffharz-reboot \
        ffharz-fastd \
        ffho-node-tuning \
        gluon-config-mode-domain-select \
        haveged iwinfo \
        gluon-ssid-changer

GLUON_MULTIDOMAIN=1

#GLUON_FEATURES := \
#               autoupdater \
#               ebtables-filter-multicast \
#               ebtables-filter-ra-dhcp \
#               ebtables-limit-arp \
#               mesh-batman-adv-15 \
#               mesh-vpn-fastd \
#               respondd \
#               status-page \
#               web-advanced \
#               web-wizard


DEFAULT_GLUON_RELEASE := 2022.1.4~$(date  '+%Y%m')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0
GLUON_BRANCH ?= experimental
#export GLUON_BRANCH

GLUON_LANGS ?= de en
GLUON_REGION = eu
GLUON_DEPRECATED ?= full
