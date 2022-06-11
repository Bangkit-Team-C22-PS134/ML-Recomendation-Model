# Circle Machine Learning Model

## Installation
Clone this repository and import into your prefered working directory
```bash
git clone https://github.com/Bangkit-Team-C22-PS134/ML-Recomendation-Model
```

## Python Environments
### Required Packages:
The following packages need to be installed in python env before we run the Notebook:
```
    tensorflow
    tensorflow_hub
    pandas
    numpy
    tensorflow-datasets
    tensorflow_recommenders
```

## Dataset Info
Our dataset acquired from various form of Google Form that we distribute in various demographic and has been pre-processed for input to our model

Our Dataset consist of this column:
```
Gender                                        object
Age                                            int64
Caregiver_Gender                              object
Caregiver_Age                                  int64
ADHD-Hiperaktif-dan-kurang-fokus               int32
Depresi                                        int32
Gangguan-kecemasan                             int32
Gangguan-makan                                 int32
Gangguan-stres-pascatrauma                     int32
Skizofrenia                                    int32
Caregiver-ADHD-Hiperaktif-dan-kurang-fokus     int32
Caregiver-Depresi                              int32
Caregiver-Gangguan-kecemasan                   int32
Caregiver-Gangguan-makan                       int32
Caregiver-Gangguan-stres-pascatrauma           int32
Caregiver-Skizofrenia                          int32
```

This one row contain User data and the prefered Caregiver data


## The Model
Our query model will look like this , consisted of three model : <br> 
**User Feature Model**
 <br>
 **Caregiveer Feature Model**
 <br>
 **NLM model**

![Two Tower](https://raw.githubusercontent.com/Bangkit-Team-C22-PS134/ML-Recomendation-Model/main/images/Tower%20model.png)

for NLM model you can refer to this tfhub :
https://tfhub.dev/google/nnlm-id-dim50/2

## Generating Model
To generate the model and training it , you need to run 
TFRS_Model_V2_With_Acc.ipynb

this will create User Model weights from trained model

## Using the Model
To use the query model , you need to construct the two tower retrieval model and then load the weights from previously trained weight saved in recommender_weights folder