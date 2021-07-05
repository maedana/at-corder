fn main() {
    proconio::input! {
      a: u32,
      b: u32,
      c: u32,
      x: u32,
    }

    let mut count = 0;
    for c500 in 0..=a {
        for c100 in 0..=b {
            for c50 in 0..=c {
                let sum = c500 * 500 + c100 * 100 + c50 * 50;
                if x == sum {
                    count += 1;
                }
            }
        }
    }

    println!("{}", count);
}
