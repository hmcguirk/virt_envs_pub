#!/bin/bash

echo Installing all system prerequisites \(These are not part of any virtual environment\)

# launchpadlib 1.10.13 requires testresources
sudo apt install python3-testresources git vim python3-venv
