#
# Copyright (C) 2022 elytraOS
#
# SPDX-License-Identifier: Apache-2.0
#

function __print_elytra_functions_help() {
cat <<EOF
Additional elytra functions:
- mka:             Builds using SCHED_BATCH on all processors.
EOF
}

function mka() {
    m -j "$@"
}
