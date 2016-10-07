/*
split the argument into an array
create a new variable to hold a string
use for loop to loop backwards
store each letter into the new string
return new string
*/

function reverse(str) {
	var newStr = ""
	var splitStr = str.split("")
	for(i = str.length-1; i >= 0; i--) {
		newStr += str[i];
	}
	return newStr
}

var reversed = reverse("hello")
if(true) {
	console.log(reversed);
} else {
	console.log("not reversed");
}