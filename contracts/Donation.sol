// SPDX-License-Identifier: MIT
pragma solidity ^8.0;

contract Donation {

  // Keep track of total donations
  uint256 public totalDonations;

  // Event to notify about a donation
  event Donated(address donor, uint256 amount);

  // Allows donating Celo to the contract
  function donate() public payable {
    require(msg.value > 0, "Donation amount must be greater than 0");
    totalDonations += msg.value;
    emit Donated(msg.sender, msg.value);
  }

  // Allows withdrawing all donations (only for owner)
  // (This might not be desirable in all cases, consider access control)
  function withdrawDonations() public onlyOwner {
    payable(msg.sender).transfer(totalDonations);
    totalDonations = 0;
  }

  // Modifier to restrict withdrawDonations function to owner
  modifier onlyOwner() {
    require(msg.sender == owner, "Only owner can withdraw donations");
    ;
  }

  // Define the owner address (replace with your actual owner address)
  address public owner = 0xYourOwnerAddress;
}
