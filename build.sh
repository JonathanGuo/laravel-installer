#!/usr/bin/env bash

generated_warning() {
	cat <<-EOH
		#
		# NOTE: THIS DOCKERFILE IS GENERATED VIA "build.sh"
		#
		# PLEASE DO NOT EDIT IT DIRECTLY.
		#
	EOH
}
# Generate the docker file with template with warning message prepended
{ generated_warning; cat Dockerfile.template; } > Dockerfile.build.template

build_date=$(date '+%F %T %Z')

sed -e 's/%%BUILD_DATE%%/'"$build_date"'/g' < Dockerfile.build.template > Dockerfile
docker build -t "chcjonathanguo/laravel-installer:latest" -f Dockerfile .

rm -f Dockerfile.build.template