PROTO_BASE := api
GEN_DIR := gen/go

PROTOSET_USER_OUT := user_service_v1.protoset
PROTOSET_PLACE_OUT := place_service_v1.protoset


.PHONY: generate-user
generate-user:
	@mkdir -p $(GEN_DIR)
	protoc \
		-I $(PROTO_BASE) \
		--go_out=$(GEN_DIR) \
		--go_opt=paths=source_relative \
		--go-grpc_out=$(GEN_DIR) \
		--go-grpc_opt=paths=source_relative \
		$(PROTO_BASE)/user/v1/user_service.proto

.PHONY: generate-place
generate-place:
	@mkdir -p $(GEN_DIR)
	protoc \
		-I $(PROTO_BASE) \
		--go_out=$(GEN_DIR) \
		--go_opt=paths=source_relative \
		--go-grpc_out=$(GEN_DIR) \
		--go-grpc_opt=paths=source_relative \
		$(PROTO_BASE)/place/v1/place_service.proto

.PHONY: generate
generate:
	make generate-user && make generate-place


.PHONY: protoset-user
protoset-user:
	protoc \
		-I $(PROTO_BASE) \
		--include_imports \
		--descriptor_set_out=$(PROTOSET_USER_OUT) \
		$(PROTO_BASE)/user/v1/user_service.proto

.PHONY: protoset-place
protoset-place:
	protoc \
		-I $(PROTO_BASE) \
		--include_imports \
		--descriptor_set_out=$(PROTOSET_PLACE_OUT) \
		$(PROTO_BASE)/place/v1/place_service.proto

.PHONY: protoset
protoset:
	make protoset-user && make protoset-place


.PHONY: clean
clean:
	rm -rf $(GEN_DIR) $(PROTOSET_USER_OUT) $(PROTOSET_PLACE_OUT)
