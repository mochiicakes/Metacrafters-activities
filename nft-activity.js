/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

const NFTs = []; 
let numberOfNFTs = 0;

function mintNFT(name, desc, attribute) {
  const nftMetadata = { //NFT primary details
    name: name,
    desc: desc,
    attribute: attribute,
  };

  numberOfNFTs++;
  
  NFTs.push(nftMetadata); // concantenate each newly added element to the array

  console.log(`Minted NFT #${numberOfNFTs}:`, nftMetadata, "\n");

  return nftMetadata;
}

function listNFTs() { //function that focuses entirely in  listing all NFTs and each indiv deets
  for (let i = 0; i < NFTs.length; i++) {
    console.log(`NFT #${i + 1} Metadata:`);
    console.log("Name: " + NFTs[i].name);
    console.log("Description: " + NFTs[i].desc);
    console.log("Atributes: " + NFTs[i].attribute);
    console.log("--------------");
  }
}

function getTotalSupply() {
  return numberOfNFTs;
}

mintNFT("Sacabambaspis", "A jawless fish during the Ordovician period. It is now gaining exposure in the net due to is... interesting face.", "Has circle for eyes, and an inverted triangle for mouth. What a rare occurence.");
mintNFT("Java Rice Sparrow", "If there is siomai rice, there's also java rice. Except that in this case, it's a sparrow.", "It's a bird. Often kept as a  pet.  That's all.");
mintNFT("The Void", "For an unknown reason, the void stares back at you--Menacingly. Never knew that the void could look so fluffy and have eyes.", "Would like to say it is rare but we see these things everywhere.");

listNFTs();

const totalSupply = getTotalSupply();
console.log("Total NFT Supply:", totalSupply); // prints total NFTs