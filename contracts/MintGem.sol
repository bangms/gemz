// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract MintGem is ERC721Enumerable {
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {} // 이건 배포될 때 한 번 실행되는데 erc721 프로젝트의 name과 symbol을 정해주는 역할
    
    function mintGem() public {
        // total supply란 이 nft 에서 발행된 nft의 총량을 리턴하는 함수
        uint tokenId = totalSupply() + 1;


        // mint 함수는 인자 두개를 필요로 함 (민트하는 사람(이 함수를 실행한 사람), 토큰 아이디) // 토큰 아이디를 사용할 때는 ERC721Enumerable 에서 제공하는 total supply를 사용할 것
        _mint(msg.sender, tokenId); 
    }
}
