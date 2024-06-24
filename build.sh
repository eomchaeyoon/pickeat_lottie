#!/bin/bash

# Flutter 설치
curl -LO https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_2.5.3-stable.tar.xz
tar xf flutter_linux_2.5.3-stable.tar.xz
export PATH="$PATH:`pwd`/flutter/bin"

# Flutter 패키지 설치
flutter pub get

# Flutter 웹 빌드
flutter build web
