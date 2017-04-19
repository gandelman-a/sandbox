#!/bin/bash

FAIL_CHECK=0
FAIL_GATE=1
TEST_OUTPUT="XXX TEST_ID: c9efef9a-f6e9-42db-bb73-921a1e11294f"

echo "$TEST_OUTPUT"

case "$BONNYCI_TEST_PIPELINE" in
    "check") [[ "$FAIL_CHECK" == 1 ]] && exit 1 ;;
    "gate") [[ "$FAIL_GATE" == 1 ]] && exit 1 ;;
esac

exit 0