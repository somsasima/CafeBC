pragma solidity ^0.5.1;

contract cafe {  


  //---events---
  event Bought(
    address from,   
    string text
  );
  
  event RegistrationError(
    address from,
    string text,
    string reason
  );

  // store the proof for a student in the contract state
  
  
  // record a student name
  function Buy(string memory name) public payable {

    if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("Matcha Latte"))){
        if (msg.value != 0.06 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, name, 
            "Incorrect amount of Ether. 0.02 ether for registration");
        
        //---refund back to the sender---
        msg.sender.transfer(msg.value);
        
        //---exit the function---
        return;
         }
        emit Bought(msg.sender, name);
        
    }
    else if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("Chocolate Ice"))){
        if (msg.value != 0.05 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, name, 
            "Incorrect amount of Ether. 0.02 ether for registration");
        
        //---refund back to the sender---
        msg.sender.transfer(msg.value);
        
        //---exit the function---
        return;
         }
        emit Bought(msg.sender, name);
    }
    else if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("Americano Ice"))){
        if (msg.value != 0.04 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, name, 
            "Incorrect amount of Ether. 0.02 ether for registration");
        
        //---refund back to the sender---
        msg.sender.transfer(msg.value);
        
        //---exit the function---
        return;
         }
        emit Bought(msg.sender, name);
    }
    else if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("Salad"))){
        if (msg.value != 0.03 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, name, 
            "Incorrect amount of Ether. 0.02 ether for registration");
        
        //---refund back to the sender---
        msg.sender.transfer(msg.value);
        
        //---exit the function---
        return;
         }
        emit Bought(msg.sender, name);
    }
    else if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("Sandwich"))){
        if (msg.value != 0.02 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, name, 
            "Incorrect amount of Ether. 0.02 ether for registration");
        
        //---refund back to the sender---
        msg.sender.transfer(msg.value);
        
        //---exit the function---
        return;
         }
        emit Bought(msg.sender, name);
    }
    else if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("Pizza"))){
        if (msg.value != 0.01 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, name, 
            "Incorrect amount of Ether. 0.02 ether for registration");
        
        //---refund back to the sender---
        msg.sender.transfer(msg.value);
        
        //---exit the function---
        return;
         }
        emit Bought(msg.sender, name);
    }
  }
}