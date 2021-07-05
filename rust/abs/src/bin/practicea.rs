fn main() {
    proconio::input! {
        a: i32,
        (b, c): (i32, i32),
        s: String,
    }
    println!("{} {}", a + b + c, s);
}
