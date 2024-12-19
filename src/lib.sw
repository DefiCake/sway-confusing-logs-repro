library;

pub fn weird(_a: u256, _b: u256) -> (u256, u256) {
    let mut a = _a; // a = _a = 1
    let mut b = _b; // b = _b = 2
    
    log(b); // Decoded log value: 2, log rb: 1970142151624111756

    let mut b_tmp = b; // b_tmp = b = 2
    // log(b_tmp); // If you enable this log, results seem to be ok?
    
    b = a; // b = a = 1

    
    log(b_tmp); // Decoded log value: 1, log rb: 1970142151624111756 => gives 1, but should be 2
    
    b = a + a;

    log(b_tmp); // Decoded log value: 2, log rb: 1970142151624111756, it recovers its value. At some point I have got 3, but I don't know how I did it

    (b, b_tmp)
}
