#!/bin/bash

OBS_H="H_y H_pT_incl H_pT_excl NJet_incl_30 NJet_excl_30"
OBS_HJ="H_j_pT_incl H_j_pT_excl jet1_pT_incl jet1_pT_excl jet1_y Hj_pT_incl Hj_pT_excl"
OBS_HJJ="H_jj_pT_incl jet2_pT_incl jet2_pT_excl Hjj_pT_incl dijet_mass deltay_jj jjdy_dy deltaphi_jj_incl"
OBS_HJJJ="H_jjj_pT_incl jet3_pT_incl"
OBS_MULTI="HT_jets HT_all"
OBS_VBF="NJet_incl_30_VBF NJet_incl_30_VBF2 deltaphi_jj_VBF deltaphi2_VBF H_jj_pT_VBF"
OBS_JV="xs_central_jet_veto_VBF xs_central_jet_veto_VBF2 xs_jet_veto_j0 xs_jet_veto_j1_30 xs_jet_veto_j1_200"

# OBS_USER="jjdy_dy"

if [ -d /home/marek/work/LH15/Sherpa-GoSamComparison ];
then
  cd figures
  for i in $OBS_H $OBS_HJ $OBS_HJJ $OBS_HJJJ $OBS_MULTI $OBS_VBF $OBS_JV $OBS_USER;
  do
    cp /home/marek/work/LH15/Sherpa-GoSamComparison/comparison/MC_HJETS_LH15/${i}.dat hjetscomp_${i}.dat;
    DATFILES="$DATFILES hjetscomp_${i}.dat"
    cp /home/marek/work/LH15/Sherpa-GoSamComparison/comparison-nobands/MC_HJETS_LH15/${i}.dat hjetscomp_u_${i}.dat;
    DATFILES="$DATFILES hjetscomp_u_${i}.dat"
  done
  ../make-plots $DATFILES
  cd -
fi

