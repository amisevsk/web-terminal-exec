#!/bin/bash
#
# Copyright (c) 2019-2021 Red Hat, Inc.
# This program and the accompanying materials are made
# available under the terms of the Eclipse Public License 2.0
# which is available at https://www.eclipse.org/legal/epl-2.0/
#
# SPDX-License-Identifier: EPL-2.0
#
# Contributors:
#   Red Hat, Inc. - initial API and implementation
#

# Output command before executing
set -x

# Exit on error
set -e

SCRIPT_DIR=$(cd "$(dirname "$0")"; pwd)
export SCRIPT_DIR

# shellcheck disable=SC1090
. "${SCRIPT_DIR}"/cico_functions.sh

load_jenkins_vars
install_deps
set_release_tag
build_and_push
