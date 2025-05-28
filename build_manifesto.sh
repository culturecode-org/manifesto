#!/usr/bin/env bash
EN_SECTIONS_DIR="./sections"
ES_SECTIONS_DIR="./translations/es/secciones"

EN_OUTPUT="./MANIFESTO_FULL.md"
ES_OUTPUT="./translations/es/MANIFIESTO_FULL.md"

echo "building root manifesto..."
> "$EN_OUTPUT"

for file in $(ls "$EN_SECTIONS_DIR"/*.md | sort); do
  cat "$file" >> "$EN_OUTPUT"
  echo -e "\n\n---\n\n" >> "$EN_OUTPUT"
done

echo "English manifesto built at $EN_OUTPUT"

echo "building translation/es manifesto..."
> "$ES_OUTPUT"

for file in $(ls "$ES_SECTIONS_DIR"/*.md | sort); do
  cat "$file" >> "$ES_OUTPUT"
  echo -e "\n\n---\n\n" >> "$ES_OUTPUT"
done

echo "Spanish manifesto built at $ES_OUTPUT"
