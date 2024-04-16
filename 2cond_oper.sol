pragma solidity >=0.8.0;

contract SolidityTest{
function sub(
uint a, uint b) public view returns(
uint){
    uint result = (a > b? a-b : b-a);
    return result;
    }
}
