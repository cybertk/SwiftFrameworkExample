project = MyProject

test: test-unit test-carthage test-cocoapods

test-unit:
	xcodebuild test -scheme $(project) -sdk iphonesimulator9.0 ONLY_ACTIVE_ARCH=NO OBJROOT=$(PWD)/build SYMROOT=$(PWD)/build | xcpretty

test-carthage:
	carthage build --verbose --no-skip-current | xcpretty

test-cocoapods:
	pod spec lint --allow-warnings

bootstrap:
	bundle install
	# Cannot brew install carthage on Travis-CI
	# brew update
	# brew install carthage
	# curl -OL https://github.com/Carthage/Carthage/releases/download/0.7.5/Carthage.pkg
	# sudo /usr/sbin/installer -pkg Carthage.pkg -target /

deps:
	carthage bootstrap --verbose | xcpretty

release:
	zip -r -9 $(project).framework.zip Carthage/Build/iOS/*.framework

clean:
	git clean -xfd
	git submodule foreach git clean -xfd
	rm -rf  ~/Library/Developer/Xcode/DerivedData/$(project)-*

.PHONY: all clean test test-unit test-carthage test-cocoapods bootstrap deps release
