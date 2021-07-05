fn main() {
    proconio::input! {
      n: u32,
      mut a: [u32; n]
    }

    let mut count = 0;
    loop {
        if is_any_odd(&a) {
            break;
        }
        count += 1;
        a = a.iter().map(|&v| v / 2).collect()
    }
    println!("{}", count);
}

fn is_any_odd(a: &Vec<u32>) -> bool {
    a.iter().any(|&v| v % 2 != 0)
}
