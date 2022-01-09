#!/bin/sh
rm -rf docs/ &&
docker run --name my-hugo -v /Users/zzx/Project/site:/src -p 1313:1313 --rm -it klakegg/hugo &&
git add -A &&
git commit -m "update:$(date +%Y%m%d)" &&
git push