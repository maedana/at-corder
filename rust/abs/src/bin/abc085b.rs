use std::collections::HashSet;

fn main() {
    proconio::input! {
      n: u32,
      d: [[u32; 1]; n]
    }

    let kagamis: HashSet<u32> = d.iter().map(|e| e[0]).collect();
    println!("{}", kagamis.len());
}
