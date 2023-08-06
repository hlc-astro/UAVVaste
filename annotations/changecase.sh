#!/bin/bash

for file in /Users/capelo/Desktop/constructor/final_project/fine_tune_sam/UAVVaste/branch_UAVVaste/UAVVaste/images/*.JPG; do
    mv "$file" "${file%.JPG}.jpg"
done

