contract;

pub mod lib;

use ::lib::weird;

abi MyContract {
    fn test_function(a: u256, b: u256) -> u256;
}

impl MyContract for Contract {

    fn test_function(_a: u256, _b: u256) -> u256 {
        let (xR, xR_tmp) = weird(_a, _b);
        revert(255); // Force logs print when using forc test
        

        0x00u256
    }
}



#[test]
fn test() {
    let caller = abi(MyContract, CONTRACT_ID);
    let a = 0x01u256;
    let b = 0x02u256;

    caller.test_function(a, b);
    
}   