epochs=50
freq=4 # update frequence

directions=("zh_ar" "ar_zh")
export PYTHONWARNINGS='ignore:semaphore_tracker:UserWarning'
for direct in ${directions[@]}
  do
      echo "------------------------------------------------------------training ${direct}....------------------------------------------------------------"
      python paddleseq_cli/train.py -c examples/ikcest22/configs/${direct}.yaml   --update-freq $freq --max-epoch $epochs
  done


echo "all done"

