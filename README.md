# tf2_object_detection
this is repository to test object detection using tensorflow 2 object detection API

1. prepareing workspace
(please refer README.md in workspace/training_demo/).

2. preparing object detection API from tensorflow org
this is in main.ipynb

3. download / prepare for dataset
1) prepare your own dataset and label it through labelImg
2) make csv using xml_to_csv.py, and switch it into tfrecord using generate_tfrecord.py
3) make .pbtxt which tells label of dataset    


4. training / evaluating

5. export model (normal model / tflite model)

6. inferencing 

7. tflite model lightweighting.

follow through main.ipynb.

