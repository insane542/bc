pragma solidity >=0.8.0;

contract SolidityTest {
    uint storedData;

    constructor() public {
        storedData = 10;
    }

    function getResult() public view returns (string memory) {
        uint a = 10;
        uint b = 2;
        uint result = a + b;
        return integerToString(result);
    }

    function integerToString(uint _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }

        uint j = _i;
        uint len = 0;
        while (j != 0) {
            len++;
            j /= 10;
        }

        bytes memory bstr = new bytes(len);

        for (uint k = len; _i != 0; k--) {
            bstr[k - 1] = bytes1(uint8(48 + (_i % 10)));

            _i /= 10;
        }

        return string(bstr);
    }
}
