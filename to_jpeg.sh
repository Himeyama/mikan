#!/usr/bin/env bash

caches=$(ls *)
for cache in $caches; do
    type=$(file $cache)
    ext=$(echo $type | cut -d " " -f 2)
    if [ $ext == "JPEG" ]; then
        if [ $cache == $(basename $cache .jpeg) ]; then
            mv $cache "$cache.jpeg"
        fi
    fi
done
