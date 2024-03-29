#!/bin/sh

set -eu

usage() {
    echo "usage: $(basename $0) [-n] NEW_VERSION"
    exit 1
}

SED_ARGS='-i'
BASE_URL='https://github.com/infrahq/infra/releases/download'
while getopts 'b:c:hn' OPTION; do
    case $OPTION in
        b) BASE_URL=$OPTARG ;;
        n) SED_ARGS= ;;
        *) usage ;;
    esac
done

shift $(( $OPTIND - 1 ))
[ $# -eq 1 ] || usage
NEW_VERSION=$1

CHECKSUMS=$(mktemp)
cleanup() { rm $CHECKSUMS; }
trap cleanup 0

curl -o$CHECKSUMS -fsSL $BASE_URL/v$NEW_VERSION/infra-checksums.txt

RECIPE=infra
PART=${NEW_VERSION##*-}
if [ "$PART" != "$NEW_VERSION" ]; then
    RECIPE=infra-$PART
fi

OLD_VERSION=$(awk '/version/ { print $2 }' <$RECIPE.rb | xargs)
EXPRS="s/$OLD_VERSION/$NEW_VERSION/g"
while read -r LINE; do
    set -- $LINE
    EXPRS="$EXPRS; /$2/{n;s/sha256 \".*\"/sha256 \"$1\"/;}"
done <$CHECKSUMS

echo $EXPRS | sed $SED_ARGS -f- $RECIPE.rb
