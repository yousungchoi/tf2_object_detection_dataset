#!/bin/bash
start=`date +%s`
echo $start
PIPELINE_CONFIG_PATH='/home001/yousung.choi/projects/project_coordination/workspace/training_demo/models/my_ssd_mobilenet_v2_fpnlite_640640.config'
#MODEL_DIR='/home/yousungchoi/projects/project_coordination/workspace/training_demo/models/1st_trial'
#PIPELINE_CONFIG_PATH='/home/yousungchoi/projects/project_coordination/workspace/training_demo/models/my_ssd_mobilenet_v2_coco17_tpu-8.config'
MODEL_DIR='/home001/yousung.choi/projects/project_coordination/workspace/training_demo/models/2nd_trial_210322'
NUM_TRAIN_STEPS=1000
SAMPLE_1_OF_N_EVAL_EXAMPLES=1
#CUDA_VISIBLE_DEVICES=1 python /home/yousungchoi/projects/project_coordination/models/research/object_detection/model_main_tf2.py \
python /home001/yousung.choi/projects/project_coordination/models/research/object_detection/model_main_tf2.py \
	    --pipeline_config_path=${PIPELINE_CONFIG_PATH} \
            --model_dir=${MODEL_DIR} 
#     --checkpoint_dir=${MODEL_DIR}  
#     --num_train_steps=${NUM_TRAIN_STEPS}
end=`date +%s`
echo $end
runtime=$((end-start))
echo $runtime

# Training session
