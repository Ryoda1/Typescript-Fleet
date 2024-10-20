#!/bin/bash


if [ -z "$1" ]; then
  echo "Ошибка: укажите файл TypeScript для компиляции и запуска."
  echo "Пример: ./compile-and-run-ts.sh файл.ts"
  exit 1
fi

if ! command -v tsc &> /dev/null; then
  echo "Ошибка: TypeScript не установлен."
  exit 1
fi

if ! command -v node &> /dev/null; then
  echo "Ошибка: Node.js не установлен."
  exit 1
fi

tsc "$1"

if [ $? -eq 0 ]; then
  echo "Компиляция прошла успешно!"

  filename=$(basename -- "$1")
  filename="${filename%.*}"

  node "$filename.js"
else
  echo "Ошибка компиляции!"
  exit 1
fi
