#!/bin/bash
#
# Check for IDV and bundle updates
#
git pull upstream master
#
#grab the current directory
#
dirname=`dirname $0`

#
# set env var NCAR_MESA_KIOSK_DIR - used in jython script
#
export NCAR_MESA_KIOSK_DIR=${dirname}

#
# run the IDV
#
${dirname}/idv/runIDV -islfile ${dirname}/ncar_mesa_kiosk.jy -islinteractive
