cd /tmp

export ARD_VERSION=0.19.3
export ARB_LATEST_VERSION=$(curl --silent "https://api.github.com/repos/arduino/arduino-cli/releases/latest" | jq '.tag_name' | sed -E 's/.*"([^"]+)".*/\1/')
echo "Installing Arduino CLI $ARD_VERSION. Latest version is $ARB_LATEST_VERSION"

curl -sL https://github.com/arduino/arduino-cli/releases/download/{$ARD_VERSION}/arduino-cli_{$ARD_VERSION}_macOS_64bit.tar.gz | tar xz

chmod +x ./arduino-cli

mv -f arduino-cli $LOCAL_BIN/uno
