fn another_function() {
    println!("Another function.");
}

#[executable]
fn main() {
    println!("Hello, world!");
    another_function();
}


// Parameters
fn main() {
    another_function(5);
}
fn another_function(x: felt252) {
    println!("The value of x is: {}", x);
}


// multiple parametrs
fn main() {
    print_labeled_measurement(5, "h");
}
fn print_labeled_measurement(value: u128, unit_label: ByteArray) {
    println!("The measurement is: {value}{unit_label}");
}

// Named Parameters
fn foo(x: u8, y: u8) {}
fn main() {
    let first_arg = 3;
    let second_arg = 4;
    foo(x: first_arg, y: second_arg);
    let x = 1;
    let y = 2;
    foo(:x, :y)
}

// Statement & Expression
fn main() {
    let y = {
        let x = 3;
        x + 1
    }; // Expression inside {}

    println!("The value of y is: {}", y);
}


//Functions with Return Values
fn five() -> u32 {
    5
}
fn call_five() {
    let x = five();
    println!("The value of x is: {}", x);
}


// Const Functions

use core::num::traits::Pow;
const BYTE_MASK: u16 = 2_u16.pow(8) - 1;
fn call_const() {
    let my_value = 12345;
    let first_byte = my_value & BYTE_MASK;
    println!("first_byte: {}", first_byte);
}