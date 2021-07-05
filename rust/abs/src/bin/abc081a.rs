fn main() {
    proconio::input! {
      s: String
    }

    // bit演算でビット立ってる数とか取りたいがどうすれば?
    let mut i = 0;
    for s in s.chars() {
        if s == '1' {
            i += 1
        }
    }
    println!("{}", i);
}
