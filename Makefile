PROTO_BASE := api
GEN_DIR := gen/go

.PHONY: generate
generate:
	@mkdir -p $(GEN_DIR)
	protoc \
		-I $(PROTO_BASE) \
		--go_out=$(GEN_DIR) \
		--go_opt=paths=source_relative \
		--go-grpc_out=$(GEN_DIR) \
		--go-grpc_opt=paths=source_relative \
		$(PROTO_BASE)/common/v1/common.proto \
		$(PROTO_BASE)/user/v1/user_service.proto

.PHONY: clean
clean:
	rm -rf $(GEN_DIR)