async function main() {
    // Get the contract factory and signer
    const SpiralMatrix = await ethers.getContractFactory("SpiralMatrix2");
    const [deployer] = await ethers.getSigners();
  
    // Deploy the contract
    const spiralMatrix = await SpiralMatrix.deploy();
    await spiralMatrix.deployed();
  
    console.log("Contract deployed at address:", spiralMatrix.address);
  
    // Call the spiralClockwise function
    await spiralMatrix.spiralClockwise();
  
    // Call the spiralCounterClockwise function
    await spiralMatrix.spiralCounterClockwise();
  
    // Print the updated water grid
    const waterGrid = await spiralMatrix.waterGrid();
    console.log("Updated Water Grid:");
    console.log(waterGrid);
  }
  
  // Run the main function
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error);
      process.exit(1);
    });
  