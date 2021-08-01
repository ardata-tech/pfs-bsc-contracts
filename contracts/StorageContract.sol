// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

//  Simple Storage Contract to create a reference of the file stored
//  on PFS.
contract StorageContract {

  //  File Structure
  struct File {
    uint fileID;
    address fileOwner;
    string fileName;
    string fileHash;
  }

  uint public fileID = 0;
  mapping (uint => File) public fileStorage;

  //  Add file function
  function addFile(string memory _fileName, string memory _fileHash, address owner) public returns (bool status) {
    fileID += 1;
    address _fileOwner = owner;
    File memory newFile = File(fileID, _fileOwner, _fileName, _fileHash);
    fileStorage[fileID] = newFile;
    
    return true;
  }
}