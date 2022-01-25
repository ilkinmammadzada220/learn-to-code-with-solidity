// SPDX-License-Indetifier: GPL-3.0
pragma solidity ^0.8.4;
contract BlindAuction {

    struct Bid {
        bytes32 blindedBod;
        uint deposit;
    }

    address payable public beneficiary;
    uint public biddingEnd;
    uint public revealEnd;
    bool public ended;

    mapping(address => Bid[]) public bids;

    address public highestBidder;
    uint public highestBid;

    //Allowed withdrawals of previous bids
    mapping(address => uint) pendingReturns;

    event AuctionEnded(address winner, uint highestBid);

    event AuctionEnded(address winnder, uint highestBid);

    //Errors that describe failures.@author

    /// The function has been called too early.
    /// Try again at `time`.
    error
}