#!/usr/bin/env bash
#
# 2019/02/16    StarryLeo
set -eu
shopt -s nocaseglob

function _dl() {
        local tmp="tmp" docs="docs"
        [ -d "$tmp" ] || mkdir "$tmp"
        [ -d "$docs" ] || mkdir "$docs"
        curl -L "https://api.github.com/repos/$1/tarball" \
             -H "Authorization: token $VIM_CS_GITHUB_API_TOKEN" \
             | tar xz --strip=1 -C "$tmp"/

        rsync -avh "$tmp"/ --include='autoload/***' \
                           --include='colors/***' --exclude='*' .

        cp -r "$tmp"/README* "$docs"/"${1//\//-}".md
        rm -rf "$tmp"
}

function _main() {
        _dl lifepillar/vim-solarized8

        chmod -x colors/*vim
}

_main
