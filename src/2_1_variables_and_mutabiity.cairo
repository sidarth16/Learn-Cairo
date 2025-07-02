fn simple_var() {
    let x = 5;
    println!("The value of x is: {}", x);
    x = 6;  //Uncomment to : receive an error message regarding an immutability error
    println!("The value of x is: {}", x);
}

fn mut_var() {
    let mut x = 5;
    println!("The value of x is: {}", x);
    x = 6; 
    println!("The value of x is: {}", x);
}

// Constants
struct AnyStruct {
    a: u256,
    b: u32,
}
enum AnyEnum {
    A: felt252,
    B: (usize, u256),
}
const ONE_HOUR_IN_SECONDS: u32 = 3600;
const ONE_HOUR_IN_SECONDS_2: u32 = 60 * 60;
const STRUCT_INSTANCE: AnyStruct = AnyStruct { a: 0, b: 1 };
const ENUM_INSTANCE: AnyEnum = AnyEnum::A('any enum');
const BOOL_FIXED_SIZE_ARRAY: [bool; 2] = [true, false];

// Shadowing vars
fn shadowing() {
    let x = 5;
    let x = x + 1;
    {
        let x = x * 2;
        println!("Inner scope x value is: {}", x);
    }
    println!("Outer scope x value is: {}", x);
}


// Type conversion
fn conversion(){    
    let x: u64 = 2;
    println!("The value of x is {} of type u64", x);
    let x: felt252 = x.into(); // converts x to a felt, type annotation is required.
    println!("The value of x is {} of type felt252", x);

    let mut x: u64 = 2;
    println!("The value of x is: {}", x);
    //x = 5_u8;   //error: expecting a u64 (the original type) but we got a different type
    println!("The value of x is: {}", x);
}