#!/usr/bin/env bash

out_directory="out/"

if [[ -z "$1" ]]; then
	srcs="$(cd lessons && echo **/*.rs)"
else
	srcs="${1/#lessons\///}"
fi

set -o errexit

for f in $srcs; do
	echo "Compiling lessons$f"
	rustc --out-dir "${out_directory}$(dirname $f)/" "lessons/$f"
	echo "Running lessons$f"
	"./${out_directory}${f%.*}"
	echo "Testing lessons$f"
	rustc --test --out-dir "${out_directory}$(dirname $f)/" "lessons/$f"
	"./${out_directory}${f%.*}"
	echo ""
done

