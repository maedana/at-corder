fn main() {
    proconio::input! {
      n: u32,
      mut a: [u32; n]
    }

    a.sort();
    let mut cards_a: Vec<u32> = vec![];
    let mut cards_b: Vec<u32> = vec![];
    loop {
        match a.pop() {
            Some(v) => cards_a.push(v),
            None => break,
        }
        match a.pop() {
            Some(v) => cards_b.push(v),
            None => break,
        }
    }

    let sum_a: u32 = cards_a.iter().sum();
    let sum_b: u32 = cards_b.iter().sum();
    println!("{}", sum_a - sum_b);
}
