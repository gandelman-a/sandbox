#!/bin/bash

FAIL_CHECK=0
FAIL_GATE=1
TEST_OUTPUT="XXX TEST_ID: 340d8642-28c8-46f8-999f-58ff07c0ad18"

echo "$TEST_OUTPUT"

case "$BONNYCI_TEST_PIPELINE" in
    "check") [[ "$FAIL_CHECK" == 1 ]] && exit 1 ;;
    "gate") [[ "$FAIL_GATE" == 1 ]] && exit 1 ;;
esac

exit 0