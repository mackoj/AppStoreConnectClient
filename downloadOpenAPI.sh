
curl https://developer.apple.com/sample-code/app-store-connect/app-store-connect-openapi-specification.zip --output app-store-connect-openapi-specification.zip 
unzip app-store-connect-openapi-specification.zip
rm app-store-connect-openapi-specification.zip

mv "App Store Connect OpenAPI Specification"/app-store-connect-openapi-spec.json openapi.json
rm -rf "App Store Connect OpenAPI Specification"

