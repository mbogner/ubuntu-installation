#!/bin/bash
find * -maxdepth 1 -mindepth 1 -type d -exec rm -rf {} \;
rm -f */*.deb */*.zip */*.gz */*.tgz */*.lintian
