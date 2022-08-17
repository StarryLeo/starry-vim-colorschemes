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
        _dl ajmwagar/vim-deus
        _dl arcticicestudio/nord-vim
        _dl atelierbram/vim-colors_atelier-schemes
        _dl ayu-theme/ayu-vim
        _dl caksoylar/vim-mysticaltutor
        _dl cocopon/iceberg.vim
        _dl danilo-augusto/vim-afterglow
        _dl endel/vim-github-colorscheme
        _dl hzchirs/vim-material
        _dl jacoborus/tender.vim
        _dl jnurmine/Zenburn
        _dl joshdick/onedark.vim
        _dl josuegaleas/jay
        _dl junegunn/seoul256.vim
        _dl kaicataldo/material.vim
        _dl kristijanhusak/vim-hybrid-material
        _dl KabbAmine/yowish.vim
        _dl KeitaNakamura/neodark.vim
        _dl lifepillar/vim-solarized8
        _dl mhartington/oceanic-next
        _dl morhetz/gruvbox
        _dl nanotech/jellybeans.vim
        _dl StarryLeo/snow
        _dl StarryLeo/stellarized
        _dl Nequo/vim-allomancer
        _dl NLKNguyen/papercolor-theme
        _dl rakr/vim-one
        _dl raphamorim/lucario
        _dl reedes/vim-colors-pencil
        _dl romainl/Apprentice
        _dl romainl/flattened
        _dl Rigellute/rigel
        _dl Rigellute/shades-of-purple.vim
        _dl sainnhe/everforest
        _dl scheakur/vim-scheakur
        _dl srcery-colors/srcery-vim
        _dl tomasr/molokai
        _dl tyrannicaltoucan/vim-deep-space
        _dl tyrannicaltoucan/vim-quantum
        _dl w0ng/vim-hybrid
        _dl whatyouhide/vim-gotham
        _dl zanglg/nova.vim

        chmod -x colors/*vim
}

_main
