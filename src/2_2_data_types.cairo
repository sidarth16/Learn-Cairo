fn data_type() {
    let x: felt252 = 3;
    let y: u32 = x.try_into().unwrap();

    // Boolean
    let t = true;
    let f: bool = false; // with explicit type annotation


    let my_first_char = 'C';
    let my_first_char_in_hex = 0x43;

    let my_first_string = 'Hello world';
}

fn numeric_operations() {
    // addition
    let sum = 5_u128 + 10_u128;

    // subtraction
    let difference = 95_u128 - 4_u128;

    // multiplication
    let product = 4_u128 * 30_u128;

    // division
    let quotient = 56_u128 / 32_u128; //result is 1
    let quotient = 64_u128 / 32_u128; //result is 2

    // remainder
    let remainder = 43_u128 % 5_u128; // result is 3
}



fn compound_type() {

    // Tuple
    let tup: (u32, u64, bool) = (10, 20, true);

    let tup = (500, 6, true);
    let (x, y, z) = tup;
    if y == 6 {
        println!("y is 6!");
    }

    let (x, y): (felt252, felt252) = (2, 3);

    // Array
    let arr1: [u64; 5] = [1, 2, 3, 4, 5];
    let months = [
        'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September',
        'October', 'November', 'December',
    ];
    let a = [3; 5];  //[3, 3, 3, 3, 3]

    let my_arr = [1, 2, 3, 4, 5];

    // Accessing elements of a fixed-size array by deconstruction
    let [a, b, c, _, _] = my_arr;
    println!("c: {}", c); // c: 3

    // Accessing elements of a fixed-size array by index
    let my_span = my_arr.span();
    println!("my_span[2]: {}", my_span[2]); // my_span[2]: 3
}

fn type_conversion{
    et my_u8: u8 = 10;
    let my_u16: u16 = my_u8.into();
    let my_u32: u32 = my_u16.into();
    let my_u64: u64 = my_u32.into();
    let my_u128: u128 = my_u64.into();

    let my_felt252 = 10;
    // As a felt252 is smaller than a u256, we can use the into() method
    let my_u256: u256 = my_felt252.into();
    let my_other_felt252: felt252 = my_u8.into();
    let my_third_felt252: felt252 = my_u16.into();


    // try_into
    let my_u256: u256 = 10;

    // Since a u256 might not fit in a felt252, we need to unwrap the Option<T> type
    let my_felt252: felt252 = my_u256.try_into().unwrap();
    let my_u128: u128 = my_felt252.try_into().unwrap();
    let my_u64: u64 = my_u128.try_into().unwrap();
    let my_u32: u32 = my_u64.try_into().unwrap();
    let my_u16: u16 = my_u32.try_into().unwrap();
    let my_u8: u8 = my_u16.try_into().unwrap();

    let my_large_u16: u16 = 2048;
    let my_large_u8: u8 = my_large_u16.try_into().unwrap(); // panics with 'Option::unwrap failed.'
}


