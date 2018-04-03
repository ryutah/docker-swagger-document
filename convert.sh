#!/bin/sh

set -e

java -jar /usr/local/lib/swagger2markup-cli-1.3.2.jar convert -i $1 -f tmp
asciidoctor -a toc=left tmp.adoc
rm tmp.adoc
mv tmp.html $2
