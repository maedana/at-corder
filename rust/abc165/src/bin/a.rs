fn main() {
    proconio::input! {
        k: i32,
        (a, b): (i32, i32),
    }

    let ra = a % k;

    println!(
        "{}",
        if ra == 0 || (a + (k - ra)) <= b {
            "OK"
        } else {
            "NG"
        }
    );
}
