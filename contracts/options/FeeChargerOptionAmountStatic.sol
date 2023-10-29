//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18 ;
pragma abicoder v2;

// import "./IFeeCharger.sol"

/**
 * @title FeeChargerStaticAmount
 * @dev No access control mechanis is used by default, it must be configured by
 *      developer according to applications needs
 */
abstract contract FeeChargerOptionAmountStatic {

    event FeeAmountChanged(uint256 oldFeeAmount, uint256 newFeeAmount) ;

    uint256 private _feeAmount ;

    constructor(uint256 feeAmount_) {
        _feeAmount = feeAmount_ ;
    }

    function feeAmount() public view virtual returns (uint256) {
        return _feeAmount ;
    }

    function _setFeeAmount(uint256 newFeeAmount) internal virtual {
        uint256 oldFeeAmount = _feeAmount ;
        _feeAmount = newFeeAmount ;
        emit FeeAmountChanged(oldFeeAmount,newFeeAmount) ;
    }

}
