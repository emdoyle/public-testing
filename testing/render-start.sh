#!/usr/bin/env bash
gunicorn testing.wsgi:application -w "${WEB_CONCURRENCY:-4}" -k uvicorn.workers.UvicornWorker
