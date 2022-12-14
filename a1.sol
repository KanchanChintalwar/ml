pragma solidity 0.8.7;


contract Account {
    uint balance=0;

    function deposit (uint money) public returns(uint){
        if(money>0) {
            balance += money;
            return 1;
        }
        return 0;
    }

    function withdraw (uint amt) public returns(uint){
        if(balance>=amt) {
            balance-=amt;
            return 1;
        }
        return 0;
    }

    function showBalance() view public returns(uint){
        return balance;
    }
}