budget=0.05

msa_name=PH
beta_base=0.136110588507162
poi_psi=0.00428064406178194
p_zero=0.0005

python run_simulation_temporal.py --MSA $msa_name --epochs 70 \
    --beta_base $beta_base \
    --poi_psi $poi_psi \
    --p_zero $p_zero \
    --budget $budget \
    --temporal_strategy global_uniform

python run_simulation_temporal.py --MSA $msa_name --epochs 70 \
    --beta_base $beta_base \
    --poi_psi $poi_psi \
    --p_zero $p_zero \
    --budget $budget \
    --temporal_strategy global_weighted

for epochs in 0 5 10 15 20
do
python run_simulation_temporal.py --MSA $msa_name --epochs 70 \
    --beta_base $beta_base \
    --poi_psi $poi_psi \
    --p_zero $p_zero \
    --budget $budget --components $components \
    --temporal_strategy global --lp_budget $budget --lp_components 10 --lp_epochs $epochs
done