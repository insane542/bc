pragma solidity ^0.5.0;
	
library Search{
	    function indexof(uint[]  storage self, uint value) public view returns (uint){
	        for (uint i=0; i< self.length; i++) if (self[i]==value) return  i;
	        return uint(-1);
	    }
	}	
	contract Libraries{
	    uint[] data;
	    constructor() public {
	        data.push(1);
	        data.push(2);
	        data.push(3);
	        data.push(4);
	        data.push(5);
            
	    }
	    function isValuePresent() external view  returns (uint){
	        uint value=4;
	        uint index= Search.indexof(data, value);
	        return  index;
	    }
	}
