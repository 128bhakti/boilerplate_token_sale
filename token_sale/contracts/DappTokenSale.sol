pragma solidity ^0.4.2;

import "./DappToken.sol"; //imported inorder to be referenced by contract var

contract DappTokenSale {
    address admin; //is not public because we dont want to expose the address of the admin
    DappToken public tokenContract; //contract type variable inorder to access DappToken
    uint256 public tokenPrice;
    uint256 public tokensSold;

    event Sell(address _buyer, uint256 _amount);        //_buyer is the one who triggers the event

    function DappTokenSale(DappToken _tokenContract, uint256 _tokenPrice) public {
    // Assign an admin a person who deploy the Contract
    // Sign a Token Contract to purchase tokens
    // Token Price
        admin = msg.sender;   // msg is a global variable which has sender addr of person who calls the function

        tokenContract = _tokenContract; // Token contract
        tokenPrice = _tokenPrice;   // set Token price
    }

    // Buy Tokens

    function multiply(uint x, uint y) internal pure returns (uint z) {          //refer to https://github.com/dapphub/ds-math/blob/master/src/math.sol
        require(y == 0 || (z = x * y) / y == x);
    }

    function buyTokens(uint256 _numberOfTokens) public payable {  //payable because we want someone to send ether transactions through this functn
    //require that value is equal to tokens
    //require that the contract has enough tokens
    /require that a transfer is successful
    //code to keep track of number of tokens sold
    // trigger sell event
    
       /*Write your code here*/
    }

    //Ending token DappTokenSale

    function endSale() public {

    //Require admin
    //Transfer remaining Dapp token to admin
        //Destroy contract (don't destroy here though)
        // Just transfer the balance to the admin

    /* write your code here*/
    }
}
