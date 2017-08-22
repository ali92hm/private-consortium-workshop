pragma solidity ^0.4.11;

contract Conference {

  address public Organizer;
  uint public Registrants;
  uint public Quota;
  mapping (address => uint) RegistrantsPaid;

  event Deposit(address from, uint amount);
  event Refund(address to, uint amount);

  function Conference() {
    Organizer = msg.sender;
    Quota = 5;
    Registrants = 0;
  }

  function BuyTicket() payable {
    if (msg.value > 0) {
      if (Registrants < Quota && RegistrantsPaid[msg.sender] == 0) {
        RegistrantsPaid[msg.sender] = msg.value;
        Registrants++;
        Deposit(msg.sender, msg.value);
      }
      else {
        if (!msg.sender.send(msg.value)) {
          revert();
        }
      }
    }
  }

  function ChangeQuota(uint newquota) {
    if (msg.sender != Organizer) {
      revert();
    }

    Quota = newquota;
  }

  function RefundTicket(address recipient, uint amount) {
    if (msg.sender != Organizer) {
      revert();
    }

    if (RegistrantsPaid[recipient] == amount) {
      address myAddress = this;

      if (myAddress.balance >= amount) {
        if (recipient.send(amount))
        {
          Refund(recipient, amount);
          RegistrantsPaid[recipient] = 0;
          Registrants--;
        }
      }
    }
  }

  function Destroy() {
    if (msg.sender == Organizer) {
      // without this funds could be locked in the contract forever!
      suicide(Organizer);
    }
  }
}
