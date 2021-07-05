fn main() {
    proconio::input! {
      (a, b) : (u32, u32)
    }

    println!("{}", if a * b % 2 == 0 { "Even" } else { "Odd" })
}
