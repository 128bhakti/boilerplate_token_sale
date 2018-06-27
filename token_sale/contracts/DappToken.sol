pragma solidity ^0.4.2;

contract DappToken {
    string  public name = "DApp Token";
    string  public symbol = "DAPP";
    string  public standard = "DApp Token v1.0";
    uint256 public totalSupply;

    event Transfer(
// will take the address _from, address _to, and _value
    /*Write your code here*/
    );

    event Approval(
// will take _owner address, _spender address, and _value
   /*Write your code here*/
    );

    mapping(address => uint256) public balanceOf;           
    //array of hash table to which we store key(address of owner) & value(unsigned int) and also to keep track of address of accounts holding tokens

    mapping(address => mapping(address => uint256)) public allowance;   
    // Nested mapping that A approves B to spend C amount, keep track of all of the approved transactions

    function DappToken (uint256 _initialSupply) public {     //initialsupply to be initialized in migrations/2_deploy_contracts.js
        balanceOf[msg.sender] = _initialSupply;   //calls balanceOf mapping that returns balance of that owner ->takes in address returns balance
        totalSupply = _initialSupply;                       

        // allocate the initial supply
    }

    // Transfer of funds from sender to receivers account
    
    function transfer(address _to, uint256 _value) public returns (bool success) {

        // Check balance of the sender and it should be greater than or equal to the value to be transferred
        // decrement the sender's balance with value and increment the receiver's balance with value
        // call event Transfer

    /*    Write your code here   */

        return true;
    }

    // Delegated Transfer


    function approve(address _spender, uint256 _value) public returns (bool success) {
        

        // Allowance will say this much amount is allowed to spent
        // Sender 'A' allowes Spender 'B' to spend 'C' amount of tokens or values
        //call Approval event
        /*Write your code here*/

        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {

    // Take address of acc 'A' from which amount value is to be transferred to acc 'B'
    // call Transfer event

    //Require _from has enough tokens
    //Require allowance is big enough
    //Change the balance
    //Update the allowance
    //Transfer event
    //Return a boolean

    
      /*Write your code here*/

        return true; 
    }
}

