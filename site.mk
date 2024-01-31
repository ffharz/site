##	DEFAULT_GLUON_RELEASE
#		version string to use for images
#		gluon relies on
#			opkg compare-versions "$1" '>>' "$2"
#		to decide if a version is newer or not.
DEFAULT_GLUON_RELEASE := 2022.1.4~$(shell date  '+%Y%m%d')

GLUON_MULTIDOMAIN=1

# Variables set with ?= can be overwritten from the command line

##	GLUON_RELEASE
#		call make with custom GLUON_RELEASE flag, to use your own release version scheme.
#		e.g.:
#			$ make images GLUON_RELEASE=23.42+5
#		would generate images named like this:
#			gluon-ff%site_code%-23.42+5-%router_model%.bin
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

GLUON_AUTOUPDATER_BRANCH ?= experimental
GLUON_AUTOUPDATER_ENABLED ?= 1

GLUON_OUTPUTDIR ?= output/$(GLUON_RELEASE)/$(GLUON_AUTOUPDATER_BRANCH)

GLUON_LANGS ?= de en
GLUON_REGION = eu
GLUON_DEPRECATED ?= upgrade