pragma solidity <=0.9.0;

contract IfElse {
    uint i=20;
    bool even;

    function decision_making()
    public payable returns(bool){
        if(i%2 == 0){
            even =true;
        }
        else{
            even = false;
        }
        return even;
    }
}