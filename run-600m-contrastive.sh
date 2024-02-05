WANDB_PROJECT=llama2-embedding-600m-contrastive \
deepspeed run_contrastive.py \
--deepspeed ds_config_zero3.json \
--output_dir="./embedding-model-llama-600m-contrastive" \
--model_name_or_path="mesolitica/llama-600m-hf-32768-fpf" \
--train_data="/home/ubuntu/mosaic-embedding-pairs" \
--per_device_train_batch_size="4" \
--gradient_accumulation_steps 2 \
--learning_rate="2e-5" \
--num_train_epochs="4" \
--max_seq_length 8192 \
--save_steps="300" \
--save_total_limit="3" \
--do_train \
--gradient_checkpointing \
--logging_steps 1 \
--normalized True \
--temperature 0.02 \
--query_max_len 8192 \
--passage_max_len 8192 \
--train_group_size 3  \
--sentence_pooling_method="mean" \
--max_grad_norm 0.5 \
--bf16