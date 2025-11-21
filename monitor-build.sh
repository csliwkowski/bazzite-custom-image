#!/bin/bash
# Monitor the BlueBuild process

SHELL_ID="a8213c"

echo "Monitoring BlueBuild process (Shell ID: $SHELL_ID)"
echo "Press Ctrl+C to stop monitoring (build will continue in background)"
echo "========================================================================"
echo ""

# Function to get latest output
get_output() {
    # This would use the BashOutput tool in Claude Code
    # For manual monitoring, you can check the process
    ps aux | grep bluebuild | grep -v grep
}

# Show if the process is still running
while true; do
    if ps -p $(pgrep -f "bluebuild build") > /dev/null 2>&1; then
        echo "[$(date '+%H:%M:%S')] Build is still running..."
        get_output
    else
        echo "[$(date '+%H:%M:%S')] Build process completed or stopped."
        break
    fi
    sleep 10
done
