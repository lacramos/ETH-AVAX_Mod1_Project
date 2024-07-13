
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract ATMWithdraw
{
    uint public accBalance = 2000;

    //Requires the accBalance to be greater than or equal to the amount to be withdrawed and the amount to be not more than 1000
    function withdraw(uint amount) public {
        require(accBalance >= amount, "You have less than the amount to be withdrawed. The transaction is cancelled.");
        accBalance -= amount;
        if (amount > 1000)
            revert("The amount to be withdrawed exceeds the limit. Please enter an amount that is not more than 1000");
            
        assert(accBalance >= 200);
    }

}