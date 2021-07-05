fn main() {
    proconio::input! {
      (n, a, b): (u32, u32, u32)
    }

    let mut total = 0;
    for m in 1..=n {
        let sub_total: u32 = m
            .to_string()
            .chars()
            .map(|c| {
                let i: u32 = c.to_string().parse().unwrap();
                i
            })
            .sum();
        if sub_total >= a && sub_total <= b {
            total += m;
        }
    }

    println!("{}", total);
}
