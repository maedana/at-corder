fn main() {
    proconio::input! {
      mut s: String
    }

    // 入力を反転
    s = s.chars().rev().collect();

    let candidates = vec!["dream", "dreamer", "erase", "eraser"];
    let candidates: Vec<String> = candidates
        .iter()
        .map(|c| {
            let rev: String = c.chars().rev().collect();
            rev
        })
        .collect();

    let mut all_collect = true;
    let mut i = 0;
    while i < s.len() {
        let mut is_collect = false;
        candidates.iter().for_each(|c| {
            let substr = &s[i..s.len()];
            if substr.starts_with(c) {
                is_collect = true;
                i += c.len();
            }
        });

        if !is_collect {
            all_collect = false;
            break;
        }
    }

    println!("{}", if all_collect { "YES" } else { "NO" });
}
