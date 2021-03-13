PACKAGE_NAME:=hello
GOLANG_CROSS_VERSION  = v1.16.1

release:
	@if [ ! -f ".release-env" ]; then \
		echo "\033[91m.release-env is required for release\033[0m";\
		exit 1;\
	fi
	goreleaser release --rm-dist --skip-validate
