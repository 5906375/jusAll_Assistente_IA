// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ContratoAcessivel {
    address public signatario;
    string public hashDocumento;

    constructor(string memory _hashDocumento) {
        signatario = msg.sender;
        hashDocumento = _hashDocumento;
    }

    function assinar(string memory _hashConfirmacao) public view returns (bool) {
        return keccak256(bytes(_hashConfirmacao)) == keccak256(bytes(hashDocumento));
    }
}
