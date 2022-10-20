#
# Copyright (C) 2022 elytraOS
#
# SPDX-License-Identifier: Apache-2.0
#

function __print_elytra_functions_help() {
cat <<EOF
Additional elytra functions:
- mka:             Builds using SCHED_BATCH on all processors.
- repopick:        Utility to fetch changes from Gerrit.
EOF
}

function mka() {
    m -j "$@"
}

function repopick()
{
    T=$(gettop)
    $T/vendor/elytra/build/tools/repopick.py $@
}
