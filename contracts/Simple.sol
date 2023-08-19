// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract VotingSystem {
    mapping(string => uint256) public votes;

    function voteForCandidate(string memory candidate) public {
        require(bytes(candidate).length > 0, "Candidate name cannot be empty");
        votes[candidate]++;
    }

    function getVotesForCandidate(string memory candidate) public view returns (uint256) {
        return votes[candidate];
    }
}
