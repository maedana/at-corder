fn main() {
    proconio::input! {
        (a, b): (i32, i32),
        (c, d): (i32, i32),
    }

    println!("{}", a * d - b * c);
}
