.DEFAULT_GOAL := gen

rm:
	rm -f ./setmsconfig/MSGenerationSetConfig.pb.go
	rm -f ./setmsconfig/MSGenerationSetConfig_grpc.pb.go

gen:
	protoc --go_out=. --go_opt=paths=import \
	--go-grpc_out=. --go-grpc_opt=paths=import \
proto/MSSetConfig.proto