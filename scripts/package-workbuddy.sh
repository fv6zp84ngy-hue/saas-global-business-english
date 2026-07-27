#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
version="$(tr -d '[:space:]' < "$repo_root/VERSION")"
source_skill="$repo_root/saas-global-business-english/SKILL.md"
output_dir="$repo_root/dist"
package_name="saas-global-business-english-workbuddy-v${version}.zip"

if [[ ! "$version" =~ ^[0-9]+\.[0-9]+\.[0-9]+(-[0-9A-Za-z][0-9A-Za-z.-]*)?$ ]]; then
  echo "Invalid VERSION: $version" >&2
  exit 1
fi

if [[ ! -f "$source_skill" ]]; then
  echo "Missing source Skill: $source_skill" >&2
  exit 1
fi

temp_dir="$(mktemp -d)"
cleanup() {
  rm -rf -- "$temp_dir"
}
trap cleanup EXIT

mkdir -p "$temp_dir/saas-global-business-english" "$output_dir"
cp "$source_skill" "$temp_dir/saas-global-business-english/SKILL.md"
touch -t 198001010000 "$temp_dir/saas-global-business-english" \
  "$temp_dir/saas-global-business-english/SKILL.md"
rm -f -- "$output_dir/$package_name"

(
  cd "$temp_dir"
  zip -X -q -r "$output_dir/$package_name" "saas-global-business-english"
)

echo "$output_dir/$package_name"
