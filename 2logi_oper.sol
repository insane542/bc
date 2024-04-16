pragma solidity >=0.8.0;

contract logicalOperator{
function Logic(
bool a, bool b) public view returns(
bool, bool, bool){
    bool and = a&&b;
    bool or = a||b;
    bool not = !a;
    return (and, or, not);
    }
}
