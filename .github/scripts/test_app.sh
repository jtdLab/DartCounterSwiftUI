#!/bin/bash

set -eo pipefail

xcodebuild -workspace DartCounterSwiftUI.xcworkspace \
            -scheme DartCounterSwiftUI \
            -destination platform=iOS\ Simulator,OS=14.4,name=iPhone\ 11 \
            clean test | xcpretty
