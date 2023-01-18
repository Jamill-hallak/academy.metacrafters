//by jnbez

pragma solidity ^0.8.17;


contract metacrafters{

uint256 public number ;
address owner; 


constructor(){
    number=11 ;
    owner=msg.sender ;
}
 modifier onlyOwner {
      require(msg.sender == owner,"caller must be the owner");
      _;
   }


function test_number33(uint256 _number) public  onlyOwner{
    if(_number<=11){revert();}
    assert(_number==33);
    number =33 ;
}
function test_number10 (uint256 _number)public {
    require(_number==10,"the number must be 10");
    assert(_number==10);
    number=10 ;
}


}
