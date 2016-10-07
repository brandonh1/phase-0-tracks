/*
create variable phrase to store the longest phrase
create variable longest to store the length of first element in array
use for loop to compare lengths of our variable and the elements in the array
IF the element's length is longer than our variable
  store the element into phrase
  store the element's length into longest
return phrase
*/

function longestPhrase(arr) {
	var longest = arr[0].length;
	var phrase = arr[0];
	for(var i = 1; i < arr.length; i++) {
		if(arr[i].length > longest) {
			phrase = arr[i];
			longest = arr[i].length;
		}
	}
	return phrase;
}

var longestWord = longestPhrase(["long phrase","longest phrase","longer phrase"]);
console.log(longestWord);