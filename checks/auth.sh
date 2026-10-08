#!/bin/sh
# /auth issues JWTs and /protected requires one.
set -e
H=http://web:5000
curl -fsS -H "Content-Type: application/json" -d '{"username":"user2","password":"abcxyz"}' "$H/auth" | grep -q access_token
test "$(curl -sS -o /dev/null -w "%{http_code}" "$H/protected")" = 401
