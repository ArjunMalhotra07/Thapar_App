run:
	@flutter run --no-enable-impeller 

freeze:
	@flutter pub run build_runner build --delete-conflicting-outputs

MSG ?= update

push:
	@git commit -m "$(MSG)"
	@git push origin main

gradle:
	@cd android && ./gradlew clean && ./gradlew build
keystore:
	@keytool -genkey -v -keystore ./android/app/release.keystore -alias thaparapp-flutter -keyalg RSA -keysize 2048 -validity 10000
sha:
	@keytool -list -v -keystore /Users/apple/Desktop/arjun/myprojects/thapar/thaparapp/android/app/release.keystore -alias thaparapp-flutter