pragma solidity >=0.8.0;

contract SolidityTest { 

    function getResult() public view returns ( uint sum) {
        uint a = 1; 
        uint b = 2;
        sum = a + b;
    }
}
