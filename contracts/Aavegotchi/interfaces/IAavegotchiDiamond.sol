// SPDX-License-Identifier: MIT
pragma solidity 0.7.3;
pragma experimental ABIEncoderV2;

import "../libraries/LibAppStorage.sol";
import "../facets/AavegotchiFacet.sol";

interface IAavegotchiDiamond {
    function buyPortals(uint256 _ghst) external;

    function ghstAddress() external view returns (address contract_);

    function getAavegotchiSVG(uint256 _tokenId) external view returns (string memory ag);

    function balanceOf(address _owner) external view returns (uint256 balance);

    function tokenOfOwnerByIndex(address _owner, uint256 _index) external view returns (uint256 tokenId);

    function ownerOf(uint256 _tokenId) external view returns (address owner);

    function safeTransferFrom(
        address _from,
        address _to,
        uint256 _tokenId,
        bytes calldata _data
    ) external;

    function safeTransferFrom(
        address _from,
        address _to,
        uint256 _tokenId
    ) external;

    function transferFrom(
        address _from,
        address _to,
        uint256 _tokenId
    ) external;

    function approve(address _approved, uint256 _tokenId) external;

    function setApprovalForAll(address _operator, bool _approved) external;

    function getApproved(uint256 _tokenId) external view returns (address approved);

    function isApprovedForAll(address _owner, address _operator) external view returns (bool approved);

    function addCollateralTypes(LibAppStorage.AavegotchiCollateralTypeInput[] memory _collateralTypes) external;

    function removeCollateralType(address _collateralType) external;

    function collaterals() external view returns (address[] memory collateralTypes_);

    function aavegotchiNameAvailable(string memory _name) external view returns (bool available_);

    function setAavegotchiName(uint256 _tokenId, string memory _name) external;

    function openPortal(uint256 _tokenId) external;

    function portalAavegotchiTraits(uint256 _tokenId)
        external
        view
        returns (AavegotchiFacet.PortalAavegotchiTraits[10] memory portalAavegotchiTraits_);

    function claimAavegotchiFromPortal(
        uint256 _tokenId,
        uint256 _option,
        uint256 _stakeAmount
    ) external;

    function getAavegotchi(uint256 _tokenId) external view returns (AavegotchiFacet.AavegotchiInfo memory aavegotchiInfo_);

    function allAavegotchiIdsOfOwner(address _owner) external view returns (uint256[] memory tokenIds_);

    function allAavegotchisOfOwner(address _owner) external view returns (AavegotchiFacet.AavegotchiInfo[] memory aavegotchiInfos_);

    function portalAavegotchisSVG(uint256 _tokenId) external view returns (string[] memory svg_);
}
