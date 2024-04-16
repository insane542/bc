// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringsExample {
    string public text;

    function setText() public returns (string memory) {
        text = "Hello World";
        return text;
    }
}
