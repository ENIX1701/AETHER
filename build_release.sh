#!/bin/bash

# i can't be bothered to build all the releases manually anymore
# usage: ./build_release.sh <version_tag>
# like: ./build_release.sh 1.1

set -e

VERSION=$1

if [ -z "$VERSION" ]; then
    echo "please specify the version QwQ"
    echo "this will (probably) go away in the future"
    echo "but for now be a good kitty and put in that tag :3"
fi

BASE_DIR=$(pwd)
RELEASE_DIR="$BASE_DIR/release_v$VERSION"

# CHARON
echo "CHARON"
cd "$BASE_DIR/CHARON"

sed -i "0,/^version = .*/s/^version = \".*\"/version = \"$VERSION.0\"/" Cargo.toml

cargo test --release
cargo build --release

echo "SHADOW built :3"

# SHADOW
echo "SHADOW"
cd "$BASE_DIR/SHADOW"

sed -i "0,/^version = .*/s/^version = \".*\"/version = \"$VERSION.0\"/" Cargo.toml

cargo test --release
cargo build --release

echo "SHADOW built :3"

# GHOST
echo "GHOST"
cd "$BASE_DIR/GHOST"

sed -i "s/project(GHOST VERSION .*)/project(GHOST VERSION $VERSION)/" CMakeLists.txt

mkdir -p build
cd build

cmake .. > /dev/null    # TODO: check which parameters should be present in release version (either TEST or other benign combination; think about releasing scenario mode as binaries)
make -j$(nproc) > /dev/null

echo "GHOST built :3"

echo "yippeeee!! release $VERSION fully built!!"
