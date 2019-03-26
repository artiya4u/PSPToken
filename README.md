# PSPToken

To testnet
```bash
npm install -g truffle
cd PSPToken
npm install
export MNEMONIC='this is your testnet ether wallet seed words for deploy on rinkeby'
truffle migrate --reset --network rinkeby
```

To mainnet
```bash
export MNEMONIC='this is your real ether wallet seed words for deploy on mainnet'
truffle migrate --reset --network mainnet
```

Uploading you code to Etherscan
- Install and convert to 1 file.
```bash
npm install -g truffle-flattener
truffle-flattener contracts/PSPToken.sol > PSPTokenFlattened.sol
```
- Upload "PSPTokenFlattened.sol" and verify on Etherscan.

