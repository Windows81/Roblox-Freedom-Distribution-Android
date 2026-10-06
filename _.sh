#!/bin/sh

# THIS SCRIPT IS USED FOR DEBUGGING PURPOSES.
# WHO THE HACK KNOWS WHAT THIS WILL TURN INTO?

version="${1:-347}"  # Default to v437.
baseurl="$2"

build_apk() {
	version="$1" && \

	apktool b "v${version}" -o "v${version}.apk" && \

	uber-apk-signer --overwrite --ksAlias uwu -a "v${version}.apk" && \

	adb install "v${version}.apk"
}

build_apk "$version"

update_base_url() {
	[ ! -n "${baseurl}" ] && return
	version="$1"
	baseurl="$2"

	# Creates a shell on my phone.
	adb shell <<-EOF1

		# Switches to root context.
		su <<-EOF2

			# Generates a new "configure_dev_roblox.xml" payload and prints result.
			tee /data/data/roblox.freedom.distribution.v${version}/shared_prefs/configure_dev_roblox.xml <<-EOF3
				<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
				<map>
					<string name="BaseUrl">${baseurl}</string>
					<string name="BaseApiUrl">${baseurl}</string>
				</map>
			EOF3

		EOF2
	EOF1
}

update_base_url "${version}" "${baseurl}"