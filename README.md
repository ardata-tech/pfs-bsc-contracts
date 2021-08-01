# Simple Storage Contracts
Simple Storage Contract to store files on a File Systems and EVM based chain (BSC)

# Technology
- Truffle
- Solidity
- IPFS library (PFS)

# Overview
This is the direct backend contract of the pfs-bsc-web application (frontend). The contract will be called from the frontend when the user wants to upload a file. 

## Process
When a file is uploaded, a hash is generated from the File System. This hash is then rooted and embedded as data (struct) on the transaction. This transaction is then included on block that is then confirmed by a collection of nodes on the network. The contracts here are compatible with any EVM based chain (BSC, ETH, SKL or Polygon).

## Use Case
The main advantage of using on-chain transaction combined with decentralized storage is the imposition of integrity and authenticity of the data stored. Once the data is stored, a content-based address is generated which is unique to a specific file. This address (hash) is then included on the transaction as part of the metadata, which then generates a transaction hash of it's own based on transaction content. This double hash creates authenticity and imposes integrity over the file stored.

It can be used by several business process:
- real estate documents and land transfers
- invoices and financial reports storage
- identity
- sensitive information
- audit trails 

# Related Components
- pfs-bsc-web - main sample frontend
- pfs-bsc-service - REST Service endpoint for consumers who wants to upload directly from their application via REST API.

# This is for demonstration purposes only
Reach out at info@proofsys.io for implementation and integration inquiries.