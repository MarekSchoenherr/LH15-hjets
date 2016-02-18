#!/bin/bash

OBS_H="H_y H_pT_incl H_pT_excl NJet_incl_30 NJet_excl_30"
OBS_HJ="H_j_pT_incl HT_jets jet1_pT_incl jet1_y Hj_pT_incl Hj_pT_excl"
OBS_HJJ="H_jj_pT_incl jet2_pT_incl dijet_mass deltay_jj"
OBS_HJJJ="H_jjj_pT_incl jet3_pT_incl"
OBS_VBF=""
OBS_EXCL=""
OBS_JV="xs_central_jet_veto_VBF xs_jet_veto_j0 xs_jet_veto_j1_100 xs_jet_veto_h_100"

if [ -d /home/marek/work/LH15/Sherpa-GoSamComparison ];
then
  for i in $OBS_H $OBS_HJ $OBS_HJJ $OBS_HJJJ $OBS_VBF $OBS_EXCL $OBS_JV;
  do
    cp /home/marek/work/LH15/Sherpa-GoSamComparison/comparison/MC_HJETS_LH15/${i}.dat figures/hjetscomp_${i}.dat;
  done
fi

cd figures
../make-plots *.dat
cd -
