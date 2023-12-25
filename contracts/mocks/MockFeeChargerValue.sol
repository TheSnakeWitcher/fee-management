// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;


import { FeeChargerValue } from "../FeeChargerValue.sol";


contract MockFeeChargerValue is FeeChargerValue {

    constructor(uint256 feeAmount_) FeeChargerValue(feeAmount_) {}

    function chargeFees(address feeReceiver) public {
        _chargeFees(feeReceiver);
    }

}
