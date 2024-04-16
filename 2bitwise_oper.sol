pragma solidity >=0.8.0;

contract SolidityTest {
    uint16 public a = 20;
    uint16 public b = 10;
    uint16 public and = a & b;
    uint16 public or = a | b;
    uint16 public xor = a ^ b;
    uint16 public leftshift = a << b;
    uint16 public rightshift = a >> b;
    uint16 public not = ~a ;
}
