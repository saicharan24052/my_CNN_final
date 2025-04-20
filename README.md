# Convolutional-Neural-Network-using-SystemVerilog

This project implements a **Convolutional Neural Network (CNN)** using **SystemVerilog** to recognize **handwritten digits** (0–9), such as those from the MNIST dataset.

---

## 🧠 Architecture

The model includes:
- Convolution Layer
- ReLU Activation
- Max Pooling
- Fully Connected Layer


The testbench's images are taken from MNIST digits dataset.

![MNISTCapture](https://github.com/user-attachments/assets/130c6234-61d7-4f0a-9727-18b32fd3bed4)


All weights and reference calculated by "cnn_model.py"


# Simulation Results:
 I have taken the digit-2 for the testbench

 ![testbench](https://github.com/user-attachments/assets/b4e9295b-9397-425e-be71-3913808840d1)


The index of the highest number among the 10 classes is the output (i.e., argmax is used to determine the output).

![result1](https://github.com/user-attachments/assets/4ba911f9-8215-49a1-b277-f1b42fe2fd7d)

![result](https://github.com/user-attachments/assets/0c20c073-df57-4b4e-bf5b-6428892a5e93)

# NOTE:

The files in the 'xsim' folder(in github) should be copied to your Vivado simulation directory located at '/.sim.behave/xsim'. This '.sim' folder is automatically created after simulating the project for the first time. 'xsim' folder(in github) contains the image files in text format.

The 'necessary_files' folder contains MATLAB code for a replica of the CNN model, along with scripts that convert images into a text format compatible with the above design.

