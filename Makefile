run:
	@flutter run --no-enable-impeller 

freeze:
	@flutter pub run build_runner build --delete-conflicting-outputs

MSG ?= update

push:
	@git commit -m "$(MSG)"
	@git push origin main
