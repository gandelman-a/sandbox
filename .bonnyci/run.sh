#!/bin/bash -xe

echo $BONNYCI_TEST_PIPELINE > $BONNYCI_TEST_LOG_DIR/pipeline

if [[ -e /tmp/reused ]]; then
  echo "NODE REUSED"
  cat /tmp/reused
  exit 1
else
  env | grep ZUUL >/tmp/reused
  exit 0
fi
