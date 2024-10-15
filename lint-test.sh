#! /bin/bash

if flake8 . | grep -q "0"; then
    echo "Lint has passed and ready to merge"
else
    echo "Lint failed, fix the issues"
    exit 1
fi