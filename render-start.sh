#!/usr/bin/env bash
gunicorn public-testing.wsgi:application -w "${WEB_CONCURRENCY:-4}" -b 0.0.0.0:"$PORT"
