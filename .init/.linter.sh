#!/bin/bash
cd /home/kavia/workspace/code-generation/tictactoeweb-35801-bc0ea6c1/web_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

