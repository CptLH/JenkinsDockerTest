#!/bin/bash
echo "Running automated tests..."
# Simulate a test
if curl -s https://www.google.com > /dev/null; then
    echo "Test passed: Internet is reachable."
    exit 0
else
    echo "Test failed: No internet connection."
    exit 1
fi