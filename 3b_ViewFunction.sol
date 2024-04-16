pragma solidity >=0.8.0;

contract SolidityTest { 
    uint num1 = 2;
    uint num2 = 4;

    function getResult() public view returns (uint product, uint sum) {
        uint a = 10; 
        uint b = 16;
        sum = a + b;
        product = a * b; 
    }
}
