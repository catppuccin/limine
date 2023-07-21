#!/bin/sh

subcommand="$1"
case "$subcommand" in
  "" | "-h" | "--help")
    echo "Usage: generate.sh <theme>"
    echo "Available themes:"
    echo "  latte"
    echo "  frappe"
    echo "  macchiato"
    echo "  mocha"
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
