//SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.7.0;

contract InfoContract{
  string name;
  uint age;

  event changedInfo(string name,uint age);

  function setInfo(string memory  _name,uint _age) public{
    name = _name;
    age =_age;
    emit changedInfo(name,age);
  }

  function getInfo() public view returns(string memory,uint){
    return (name,age);
  }
}
