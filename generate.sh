#!/bin/sh

sub_help() {
  echo "Usage: generate.sh <theme>"
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
    sed -f "./themes/${subcommand}_colors" "./themes/${subcommand}"
    ;;
  *)
    echo "Error: '$subcommand' is not a known theme." >&2
    echo "Run 'generate.sh --help' for help." >&2
    exit 1
    ;;
esac
