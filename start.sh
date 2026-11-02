#!/usr/bin/env bash
# 本地启动脚本：为「移动公众」协议侧车指定 Python 解释器
# .venv 基于 Python 3.12，内含 requests + pycryptodome（侧车必需）
set -e
cd "$(dirname "$0")"
export ECLOUD_PYTHON="$PWD/.venv/bin/python"
echo "ECLOUD_PYTHON=$ECLOUD_PYTHON"
exec node server.js
