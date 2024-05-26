#python train.py --vocab_source=custom --vocab_size=512 --dim=64 --n_layers=5 --n_heads=8 --n_kv_heads=4 
python train.py --vocab_source=custom --vocab_size=512 --dim=64 --n_layers=5 --n_heads=8 --n_kv_heads=4 --dtype=float16 --compile=False --learning_rate=1e-2 --max_iters=5000 --warmup_iters=500 --eval_interval=500
python sample.py --checkpoint=out/ckpt.pt --tokenizer=data/tok512.model --max_new_tokens=512
