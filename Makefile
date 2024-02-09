# include .env file and export its env vars
# (-include to ignore error if it does not exist)
-include .env

# Clean the repo
clean  :; forge clean && rm -rf node_modules

# Install the Modules
install :; forge install; pnpm install; pip3 install slither-analyzer

# Update Dependencies
update :; forge update

# Builds
build :; forge build

# Optimized build
build_optimized :; FOUNDRY_PROFILE=optimized forge build

# Test Coverage
cover :; forge coverage

# Gas report
gas :; forge clean && forge test --gas-report 

# Gas Snapshot to .gas-snapshot
gas_snapshot :; forge clean && forge snapshot

# deploy local
deploy_local :; forge script ./script/Deploy.s.sol:Deployer \
	--fork-url "http://localhost:8545" \
	--private-key ${PRIVATE_KEY} \
	-vvv \
	--broadcast

deploy_goerli :; FOUNDRY_PROFILE=optimized forge script ./script/Deploy.s.sol \
	--rpc-url ${RPC_URL} \
	--private-key ${PRIVATE_KEY} \
	-vvv \
	--broadcast \
	--chain-id 5 \
	--etherscan-api-key ${ETHERSCAN_API_KEY} \
    --verify

deploy_arbitrary :; FOUNDRY_PROFILE=optimized forge script ./script/Deploy.s.sol \
	--rpc-url ${RPC_URL} \
	--private-key ${PRIVATE_KEY} \
	-vvv \
	--broadcast \
	--chain-id ${CHAIN_ID}

deploy_mainnet :; FOUNDRY_PROFILE=optimized forge script ./script/Deploy.s.sol \
	--rpc-url ${RPC_URL} \
	--private-key ${PRIVATE_KEY} \
	-vvv \
	--broadcast \
	--chain-id 1 \
	--etherscan-api-key ${ETHERSCAN_API_KEY} \
    --verify

# Tests
test :; FOUNDRY_PROFILE=test forge clean && forge test # --ffi # enable if you need the `ffi` cheat code on HEVM

# Doc buld
doc_build :; forge doc --build

# Doc serve
doc_serve :; forge doc --serve

# Lint
lint :; pnpm lint

# Lint check
lint_check :; pnpm lint:check

# Fmt
fmt :; pnpm fmt

# Fmt check
fmt_check :; pnpm fmt:check

# Coverage
coverage :; forge coverage --match-contract Unit

# Local node -- produces a block every 15 seconds
node :; anvil --block-time 15 > /dev/null 2>&1 &

# Local node eth fork
node_fork :; anvil --fork-url ${RPC_URL} > /dev/null 2>&1 &

# Kill daemon node
node_kill :; killall anvil
