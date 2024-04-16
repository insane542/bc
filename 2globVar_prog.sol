pragma solidity >=0.8.0;
contract Test {
address public admin;
constructor() public {
    admin = msg.sender;
    }
}
