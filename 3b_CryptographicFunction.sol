pragma solidity >=0.8.0;

contract Test { 
    function callKeccak256() public pure returns (bytes32 result) {
        return keccak256("ABC");
    } 
}
