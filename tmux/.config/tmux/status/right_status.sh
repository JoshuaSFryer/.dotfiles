#!/bin/bash

function date_time() {
	printf "%s " "$(date +'%Y-%m-%d %H:%M %Z')"
}

function main() {
	date_time
}

main
