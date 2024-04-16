pragma solidity >=0.8.0;

contract SolidityTest {

uint16 public assignment = 20;
uint public assignment_add = 50;
uint public assign_sub = 50;
uint public assign_mul = 10;
uint public assign_div = 50;
uint public assign_mod = 32;
function getResult() public{
    assignment_add += 10;
    assign_sub -= 20;
    assign_mul *= 10;
    assign_div /= 10;
    assign_mod %= 20;
    return ;
    }
}