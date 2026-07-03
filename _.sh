#!/bin/sh

build_apk() {
	version="$1" && \

	apktool b "v${version}" -o "v${version}.apk" && \

	uber-apk-signer --ksAlias uwu -a "v${version}.apk" --overwrite && \

	adb install "v${version}.apk"
}

build_apk "${1:-347}"


# THIS SCRIPT IS FOR DEBUGGING PURPOSES.
# WHO THE HACK KNOWS WHAT THIS WILL TURN INTO?

update_base_url() {
	u="$1"

	# Creates a shell on my phone.
	adb shell <<-EOF1

		# Switches to root context.
		su <<-EOF2

			# Generates a new "configure_dev_roblox.xml" payload and prints result.
			tee /data/data/roblox.freedom.distribution.v347/shared_prefs/configure_dev_roblox.xml <<-EOF3
				<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
				<map>
					<string name="BaseUrl">$u</string>
					<string name="BaseApiUrl">$u</string>
				</map>
			EOF3

		EOF2
	EOF1
}

update_base_url "${2:-visualplugin67.eu.cc:2005}"