# ⓈⓄⓁⓈⓉⒶⓇⓉⒺⓇ

| An opinionated solidity starter template

## Table of Contents

- [ⓈⓄⓁⓈⓉⒶⓇⓉⒺⓇ](#)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Headers](#headers)
  - [Building](#building)
  - [Testing](#testing)
  - [Gas Usage](#gas-usage)
  - [Docs](#docs)
  - [Environment](#environment)
  - [Deploying](#deploying)
  - [Goto definitions and formatting](#goto-definitions-and-formatting)
  - [Default Configuration](#default-configuration)
  - [Acknowledgement](#acknowledgement)

## Requirements

- [pnpm](https://pnpm.io/installation)
- [foundry](https://github.com/foundry-rs/foundry) | or run `./foundry_install.sh`
- git
- make
- solc >=0.8.17

## Headers

- Clone and install https://github.com/transmissions11/headers
- Run `headers <insert-header>`
- Paste from your clipboard

## Building

| Command              | Description                                   |
| -------------------- | --------------------------------------------- |
| make build           | Default                                       |
| make build_optimized | Optimized build using the `optimized` profile |

## Testing

To run tests, run the command `make test`. To change the logs verbosity, update the makefile's command with less or more `v`

## Gas Usage

| Command           | Description      |
| ----------------- | ---------------- |
| make gas          | Get gas report   |
| make gas_snapshot | Get gas snapshot |

## Docs

| Command        | Description                |
| -------------- | -------------------------- |
| make doc_build | Build docs                 |
| make doc_serve | Serve docs on 0.0.0.0:8080 |

## Environment

Fill in your `.env` at your root with:

```
RPC_URL=
ETHERSCAN_KEY=
PRIVATE_KEY=
```

## Deploying

| Command               | Environment                         |
| --------------------- | ----------------------------------- |
| make deploy_local     | Local anvil (http://localhost:8545) |
| make deploy_mainnet   | Mainnet [chain 1]                   |
| make deploy_goerli    | Goerli [chain 5]                    |
| make deploy_arbitrary | ${CHAIN_ID}                         |

## Goto definitions and formatting

When updating foundry modules, commit your changes locally and run `forge install <package-name>`. Then, update the remappings across the following files to allow builds, security scanning and goto definitions to work properly:

- .vscode/settings.json
- remappings.txt | or run `forge remappings > remappings.txt   `

## Default Configuration

Includes:

- `.gitignore`
- `./vscode/`
- `remappings.txt`
- `Foundry.toml`
- `.github/workflows/`
- `.prettierrc.json`
- `.solhint.json`

## Acknowledgement

_Inspired by_:

- https://github.com/onbjerg/forge-template
- https://github.com/gakonst/forge-template
