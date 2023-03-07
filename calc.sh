#!/bin/bash
is_integer() {
  if [[ "input" =~ ^[+-]?[0-9]+$ ]]; then
    return 0
  else
    return 1
  fi
}
