ALPINE_VERSION := 3.3
SIGNING_KEY    := 17BE6741
.PHONY=all

all: alpine-${ALPINE_VERSION}-linux-amd64.aci alpine-${ALPINE_VERSION}-linux-amd64.aci.asc

alpine-%-linux-amd64.aci:
	./build.sh $*

alpine-%-linux-amd64.aci.asc: alpine-%-linux-amd64.aci
	gpg --default-key ${SIGNING_KEY} --detach-sign --output $@ --armor $^
