// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract CrowdFunding {
    struct Campaign{
        address owner;
        string title;
        string desc;
        uint256 target;
        uint256 deadline;
        uint256 amountCollected;
        string img;
        address[] donators;
        uint256[] donations;
    }

    mapping(uint256 => Campaign) public campaigns;

    uint256 public numberOfCampaigns = 0;

    function createCampaign(address _owner, string memory _title, string memory _desc, uint256 _target, uint256 _deadline, string memory _img ) public returns (uint256) {
        Campaign storage campaign = campaigns[numberOfCampaigns];

        require(campaign.deadline < block.timestamp , "Deadline should be a time in the future!");

        campaign.owner = _owner;
        campaign.title = _title;
        campaign.desc = _desc;
        campaign.owner = _owner;
        campaign.target = _target;
        campaign.deadline = _deadline;
        campaign.img = _img;
        campaign.amountCollected = 0;

        numberOfCampaigns++;

        return numberOfCampaigns-1;
    }

    function donateToCampaign(){}

    function getDonators(){}

    function getCampaigns(){}



}