#!/usr/bin/env bash

# Compiles the Elixir modules the Elixir converter generated with elixirc together with the hand written runtime and the
# Elixir sources of the dependencies (META-INF/elixir/src of their jars). This project's sources are written to
# <output>/src for dependent projects and its .beam files to <output>/ebin.
# compiler is elixirc.bat. Git Bash (MSYS) needs cmd //c and Cygwin needs cmd /c; stdin is closed so cmd never waits.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -w "$6")"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No Elixir sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
mkdir -p "$output_dir/src" "$output_dir/ebin" "$object_dir/ebin"
cp -R "$source_dir/." "$output_dir/src/"

files=()
for runtime in "$runtime_dir"/*.ex; do files+=("$(cygpath -w "$runtime")"); done
if [ -d "$dependency_dir/src" ]; then
    while IFS= read -r file; do files+=("$(cygpath -w "$file")"); done < <(find "$dependency_dir/src" -type f -name '*.ex' | sort)
fi
count=0
while IFS= read -r file; do files+=("$(cygpath -w "$file")"); count=$((count + 1)); done < <(find "$source_dir" -type f -name '*.ex' | sort)
echo "Elixir sources: $count"

cmd_flag="/c"
if [ "$(uname -o)" = "Msys" ]; then
    cmd_flag="//c"
fi
cmd "$cmd_flag" "$compiler" "${compiler_flags[@]}" -o "$(cygpath -w "$object_dir/ebin")" "${files[@]}" < /dev/null
status=$?
if [ "$status" = "0" ]; then
    cp "$object_dir"/ebin/*.beam "$output_dir/ebin/" 2>/dev/null
    echo "Elixir compiled: $artifact"
    exit 0
fi
echo "Elixir build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
