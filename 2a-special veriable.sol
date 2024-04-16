pragma solidity <=0.9.0;

contract SpecialVariable
{
    mapping (address => uint) rollNo;
    
    function setRollNO(uint _myNumber) public 
    {
        rollNo[msg.sender] = _myNumber;
    }

    function whatIsMyRollNumber()
            public view returns (uint)
            {
                return rollNo[msg.sender];
            }
}