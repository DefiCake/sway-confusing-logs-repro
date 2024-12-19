library;

pub fn weird(_a: u256, _b: u256) -> (u256, u256) {
    let mut a = _a; // a = _a = 1
    let mut b = _b; // b = _b = 2
    
    log(b); // {"LogData":{"data":"0000000000000000000000000000000000000000000000000000000000000002" ...

    let mut b_tmp = b; // b_tmp = b = 2
    
    b = a; // b = a = 1

    
    log(b_tmp); // {"LogData":{"data":"0000000000000000000000000000000000000000000000000000000000000001" => gives 1, but should be 2
    
    b = a + a;

    log(b_tmp); // At some point I have been getting 0000000000000000000000000000000000000000000000000000000000000003 here? Now I can no longer reproduce that

    (b, b_tmp)
}
