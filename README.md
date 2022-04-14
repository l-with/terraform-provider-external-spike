# external

spike for [terraform provider external](https://registry.terraform.io/providers/hashicorp/external)

The provider can not handle valid json formats competely, but only values as strings:
<!-- markdownlint-disable MD034 -->
- https://github.com/hashicorp/terraform/issues/12249
- https://github.com/hashicorp/terraform/issues/12256
<!-- markdownlint-enable MD034 -->

The solution is to encode the whole json content with base64 and produce a json structure with base64 as key and the encoded structure as value.

Therfore a shell script `base64.sh` is used which itself needs [jq](https://stedolan.github.io/jq/) to be installed.
