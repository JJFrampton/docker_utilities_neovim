#!/usr/bin/env bash

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

# Use package feature to install coc.nvim

# neovim
mkdir -p ~/.local/share/nvim/site/pack/coc/start
cd ~/.local/share/nvim/site/pack/coc/start
curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz | tar xzfv -

# Install extensions
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi
# Change extension names to the extensions you need
npm install \
	coc-snippets \
	coc-python \
	https://github.com/andys8/vscode-jest-snippets \
	# coc-html \
	# coc-css \
	# coc-floaterm \
	# coc-bookmark \
	# coc-git \
	# coc-go \
	# coc-markdownlint \
	# coc-rls \
	# coc-rust-analyzer \
	# coc-sh \
	# coc-sql \
	# coc-eslint \
	# coc-tsserver \
	# coc-json \
	# coc-vimlsp \
	# coc-yank \
	# coc-xml \
	# coc-yaml \
	# coc-todolist \
	# coc-tasks \
	# coc-texlab \
	--global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod

# Others to try:
# 	coc-html \
# 	coc-css \
# 	coc-floaterm \
# 	coc-bookmark \
# 	coc-git \
# 	coc-go \
# 	coc-markdownlint \
# 	coc-rls \
# 	coc-rust-analyzer \
# 	coc-sh \
# 	coc-sql \
# 	coc-eslint \
# 	coc-tsserver \
# 	coc-json \
# 	coc-vimlsp \
# 	coc-yank \
# 	coc-xml \
# 	coc-yaml \

# coc-todolist \
# coc-tasks \
# coc-texlab \ # laTex
