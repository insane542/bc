pragma solidity >=0.8.0;

contract SolidityTest { 

    function getResult() public view returns (uint product, uint sum) {
        uint num1 = 2; 
        uint num2 = 10;
        sum = num1 + num2;
        product = num1 * num2;
    }
}
