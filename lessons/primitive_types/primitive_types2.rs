fn main() {
	// Characters (`char`)
	
	let my_first_initial = 'C';
	if my_first_initial.is_alphabetic() {
		println!("Alphabetical!");
	} else if my_first_initial.is_numeric() {
		println!("Numerical!");
	} else {
		println!("Neither alphabetic nor numeric!");
	}
	
	let your_character = '4';
	if your_character.is_alphabetic() {
		println!("Alphabetical!");
	} else if your_character.is_numeric() {
		println!("Numerical!");
	} else {
		println!("Neither alphabetic nor numeric!");
	}
}
