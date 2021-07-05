fn main() {
    proconio::input! {
      n: i32,
      expected: i32
    }

    for x in 0..=n {
        for y in 0..=n {
            let z = n - x - y;
            let total = x * 10000 + y * 5000 + z * 1000;
            if z >= 0 && total == expected {
                println!("{} {} {}", x, y, z);
                std::process::exit(0);
            }
        }
    }

    println!("{} {} {}", -1, -1, -1);
}
