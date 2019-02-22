#!/usr/bin/env bash

jupyter contrib nbextension install --system &

declare -a jnl=( "collapsible_headings/main" )
jnl+=( "codefolding/main" )
jnl+=( "hinterland/hinterland" )
jnl+=( "notify/notify" )
jnl+=( "scratchpad/main" )
jnl+=( "hide_input_all/main" )
jnl+=( "toc2/main" )
jnl+=( "varInspector/main" )

for je in ${jnl[@]}; do jupyter nbextension enable ${je}; done

jupyter notebook --ip=0.0.0.0 --allow-root
jupyter notebook list