# Gliderlabs Alpine Docker -> rkt

This is a conversion of
[Gliderlab's Alpine](https://github.com/gliderlabs/docker-alpine) to
[rkt](https://coreos.com/rkt/).

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Table of Contents**

- [Gliderlabs Alpine Docker -> rkt](#gliderlabs-alpine-docker---rkt)
    - [Use](#use)
    - [Hacking](#hacking)
    - [License](#license)

<!-- markdown-toc end -->

## Use

Download a release from the
[releases](https://github.com/asteris-pkg/gliderlabs-alpine/releases) page and
use it with rkt locally (package remote coming soon.) Signatures are provided
with the packages.

## Hacking

Install the following:

- docker2aci (`go get github.com/appc/docker2aci`)
- jq ([download](https://stedolan.github.io/jq/) or `brew install jq`)

Then run `make alpine-{YOUR_VERSION}-linux-amd64.aci` or `make all
ALPINE_VERSION=3.3`

## License

See [LICENSE](LICENSE).
