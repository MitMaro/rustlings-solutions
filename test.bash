#!/usr/bin/env bash

out_directory="out/"

srcs="$(cd lessons && echo **/*.rs)"

for f in $srcs; do
	rustc --out-dir "${out_directory}$(dirname $f)/" "lessons/$f"
	"./${out_directory}${f%.*}"
done

