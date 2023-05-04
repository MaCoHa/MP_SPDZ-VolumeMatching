#!/bin/bash


echo "copying 'CONFIG.mine' into ../../MP-SPDZ/CONFIG.mine"
cp "./CONFIG.mine" "../../../mp-spdz-0.3.5"

cd ../../../mp-spdz-0.3.5

make clean || echo "make Clean failed"

make -j8 mascot-party.x || echo "make mascot failed"

make -j8 shamir-party.x || echo "make shamir failed"

make -j8 malicious-shamir-party.x || echo "make shamir malicious failed"
