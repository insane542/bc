pragma solidity <=0.9.0;

contract IfStatement {
    uint i = 20;

    function decision_making()
    public returns(bool){
        if(i<20){
            return true;
        }
    }
}