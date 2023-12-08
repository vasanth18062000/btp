#!/bin/bash
mkdir -p gen/pg/db
cp -r db/data gen/pg/db/
cds compile '*' > gen/pg/db/csn.json
cp pg-package.json gen/pg/package.json