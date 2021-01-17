#!/bin/bash

echo Installing all system prerequisites \(These are not part of any virtual environment\)

# ERROR: launchpadlib 1.10.13 requires testresources, which is not installed.
sudo apt install python3-testresources
