names=$(python ./print_all_elbs.py)
region="--region eu-central-1"
if [ "$1" == "--dry-run" ]; then
    for name in $names; do ./copy_classic_load_balancer.py --name $name --register-targets $region --dry-run; done
else
    for name in $names; do ./copy_classic_load_balancer.py --name $name --register-targets $region; done    
fi
