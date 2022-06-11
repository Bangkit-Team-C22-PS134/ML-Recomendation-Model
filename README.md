# Circle Machine Learning Model

## Installation
Clone this repository and import into **Android Studio**
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

### API URL:
Point api url at `app/src/main/java/com/circle/app/di/CoreModule.kt` with the following info:
```
val hostname = "POINT_TO_YOUR_ENDPOINT"
```

## Build variants
Use the Android Studio *Build Variants* button to choose between **production** and **staging** flavors combined with debug and release build types


## Generating signed APK
From Android Studio:
1. ***Build*** menu
2. ***Generate Signed APK...***
3. Fill in the keystore information *(you only need to do this once manually and then let Android Studio remember it)*
