<p align="center">
    <img src="https://uavvaste.github.io/images/trash.png" />
</p>

# UAVVaste dataset

This is a project to fine tune the META Segment-Anything-Model (SAM), using the UAVVaste dataset as the domain-specific training set. This repository is a brach of the UAVVaste dataset repo (details can be found below. This project is inspired by the capstone project for Constructor Learning, Data Science Bootcamp. 






The UAVVaste dataset consists to date of 772 images and 3718 annotations. The main motivation for the creation of the dataset was the lack of domain-specific data. Therefore, this image set is recommended for object detection evaluation benchmarking but also for developing solutions related to UAVs, remote sensing, or even environmental cleaning. The dataset is made publicly available and will be expanded.

<center>

| **Date**      | **Images count**  | **Annotations count** |
|---------------|:-----------------:|:---------------------:|
| 14.11.2020    |      772          |        3718           |

</center>

The dataset is a part of the research paper: [,,Autonomous, Onboard Vision-Based Trash and Litter Detection in Low Altitude Aerial Images Collected by an Unmanned Aerial Vehicle'' Marek Kraft, Mateusz Piechocki, Bartosz Ptak and Krzysztof Walas - MDPI Remote Sensing](https://www.mdpi.com/2072-4292/13/5/965).

<p align="center">
    <img src="https://github.com/UAVVaste/UAVVaste.github.io/blob/master/50699048692_ea5f052204_o.gif?raw=true" />
</p>

# Usage

## Requirements

``` python
pip3 install -r requirements.txt
```

## Download

``` python
python3 main.py
```

## Notebooks
The notebooks in the Notebooks directory help to prepare the data for finetuning. In particular, we sort the images according to their test-train-split annotations using filter_json_coco_style.ipynb. There are various examples of the finetuning data input format. The notebook filter_json_coco-style.ipynb can be used to convert the coco-style json annotations (masks and bounding boxes) to either .jpg or zipped numpy arrays .npz. The notebook custom_dataset_coco_json.ipynb is a batch dataloadedr which can be used to directly read in the .json files so that they can be then worked upon with pytorch, for training, transfer learning, or fine-tuning. 

custom_dataset_coco_json.ipynb
filter_json_coco_style.ipynb
hlc_convert_json_RAVV.ipynb


# Citation

```
@Article{rs13050965,
AUTHOR = {Kraft, Marek and Piechocki, Mateusz and Ptak, Bartosz and Walas, Krzysztof},
TITLE = {Autonomous, Onboard Vision-Based Trash and Litter Detection in Low Altitude Aerial Images Collected by an Unmanned Aerial Vehicle},
JOURNAL = {Remote Sensing},
VOLUME = {13},
YEAR = {2021},
NUMBER = {5},
ARTICLE-NUMBER = {965},
URL = {https://www.mdpi.com/2072-4292/13/5/965},
ISSN = {2072-4292},
DOI = {10.3390/rs13050965}
}
```
