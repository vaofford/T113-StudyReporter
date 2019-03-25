#!/bin/bash

set -x
set -eu

start_dir=$(pwd)
cd $start_dir

cpanm --notest Dist::Zilla 
dzil authordeps --missing | cpanm --notest
dzil listdeps --missing | cpanm --notest

set +eu
set +x
