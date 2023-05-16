require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  networks: {
    hardhat: {
      chainId: 1337, // Chain ID of the Hardhat Network
      gas: "auto", // Gas limit for transactions
      gasPrice: "auto", // Gas price for transactions
      accounts: {
        count: 10, // Number of accounts to generate
        initialIndex: 0, // Index of the first generated account
        mnemonic: "test test test test test test test test test test test junk", // Mnemonic for generating accounts
        path: "m/44'/60'/0'/0", // Derivation path for accounts
        accountsBalance: "10000000000000000000000", // Initial balance for accounts (in wei)
      },
    },
    // Additional network configurations
  },
};
