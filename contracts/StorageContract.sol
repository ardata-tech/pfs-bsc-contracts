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

  struct Directory {
    uint directoryID;
    address directoryOwner;
    string directorName;
    string directoryHash;
  }

  uint public fileID = 0;
  mapping (uint => File) public fileStorage;

  uint public directoryID = 0;
  mapping (uint => Directory) public directoryStorage;

  //  Add file function
  function addFile(string memory _fileName, string memory _fileHash, address owner) public returns (bool status) {
    fileID += 1;
    address _fileOwner = owner;
    File memory newFile = File(fileID, _fileOwner, _fileName, _fileHash);
    fileStorage[fileID] = newFile;
    
    return true;
  }

  function uploadDirectory(string memory _directorName, string memory _directoryHash, address owner) public returns (bool status) {
    directoryID += 1;
    address _directoryOwner = owner;
    Directory memory newFile = Directory(directoryID, _directoryOwner, _directorName, _directoryHash);
    directoryStorage[directoryID] = newFile;
    
    return true;
  }
}