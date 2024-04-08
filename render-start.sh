#!/usr/bin/env bash
gunicorn public-testing.wsgi:application -w "${WEB_CONCURRENCY:-4}" -k uvicorn.workers.UvicornWorker
