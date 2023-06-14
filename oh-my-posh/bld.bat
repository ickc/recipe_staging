set "CGO_ENABLED=0"
set "LDFLAGS=-s -w -X main.Version=%PKG_VERSION%"
cd src
go build -trimpath -o="%LIBRARY_BIN%\%PKG_NAME%.exe" -ldflags="%LDFLAGS%" || goto :error
cd ..
goto :EOF

:error
echo Failed with error #%errorlevel%.
exit 1
