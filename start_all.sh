#! /bin/bash

APP_DIR="/app"
SCRIPT_DIR="$APP_DIR/scripts"

nohup python3 "$SCRIPT_DIR/cli_srv.py" &
nohup python3 "$SCRIPT_DIR/file_srv.py" &
echo "Viewer is running at http://localhost:8012"
python3 -m http.server -d $APP_DIR 8012

