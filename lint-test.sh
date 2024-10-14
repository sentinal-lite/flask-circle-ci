#! /bin/bash

if flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics | grep -q "0"; then
    echo "Lint has passed and ready to merge"
else
    echo "Lint failed, fix the issues"
    exit 1
fi