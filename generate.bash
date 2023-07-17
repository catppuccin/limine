#!/bin/bash

ProgName="$(basename -- "$0")"
ScriptDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sub_help() {
  echo "Usage: $ProgName <theme>"
  echo "Available themes:"
  echo "  latte"
  echo "  frappe"
  echo "  macchiato"
  echo "  mocha"
}

subcommand="$1"
case "$subcommand" in
  "" | "-h" | "--help")
    sub_help
    exit
    ;;
  latte | frappe | macchiato | mocha)
    declare -A colors
    while IFS=$'\n' read -r line; do
      if [[ "$line" == '$'* ]]; then
        # if starts with $, read key=value
        IFS='=' read -r key value <<< "$line"
        # set key to value in dictionary
        colors["$key"]="$value"
      elif [[ "${#line}" -ne 0 ]]; then
        for key in "${!colors[@]}"; do
          # replace all color names with their value, e.g ${red} becomes f38ba8
          line="${line/"${key}"/"${colors["${key}"]}"}"
        done
        # print
        printf "%s\n" "$line"
      fi
    done < "${ScriptDir}/themes/${subcommand}" || exit 1
    unset IFS
    ;;
  *)
    echo "Error: '$subcommand' is not a known theme." >&2
    echo "Run '$ProgName --help' for help." >&2
    exit 1
    ;;
esac
