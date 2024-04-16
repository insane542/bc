pragma solidity ^0.5.0;
// Creating a contract
contract requireStatement {
// Defining function to
// check input
function checkInput(uint8 _input) public pure returns(string memory){
require(_input >= 0, "invalid uint");
require(_input <= 255, "invalid uint8");
return "Input is Uint8";
}
// Defining function to
// use require statement
function Odd(uint _input) public pure returns(bool){
require(_input % 2 != 0);
return true;
}
}
