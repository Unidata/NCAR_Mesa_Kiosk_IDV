#!/bin/bash
#
#grab the current directory
#
dirname=`dirname $0`

#
# set env var NCAR_MESA_KIOSK_DIR - used in jython script
#
echo "Set NCAR_MESA_KIOSK_DIR environmental variable"
export NCAR_MESA_KIOSK_DIR=${dirname}

#
# Check for IDV and bundle updates
#
cd ${NCAR_MESA_KIOSK_DIR}
echo "Check for updates"
git pull upstream master

#
# run the IDV
#
echo "Start the kiosk IDV session!"
${dirname}/idv/runIDV -islfile ${dirname}/ncar_mesa_kiosk.jy -islinteractive
