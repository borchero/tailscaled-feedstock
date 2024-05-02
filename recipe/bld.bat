@echo on

cd cmd/tailscaled

go-licenses save . ^
    --save_path ../../library_licenses

go install -v ^
    -ldflags "-s -w -X 'tailscale.com/version.shortStamp=v%PKG_VERSION%'" ^
    .
