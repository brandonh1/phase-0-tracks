/*
RELEASE 0
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

/*
RELEASE 1
use for in loop to compare two objects
return true if one pair is the same
for in can be used on either of the objects passed in
  this will only work if their properties are the same names

//this function works if they don't have the same property names
//won't work if their lengths aren't the same
function sharePair(obj1,obj2) {
	arr1 = [];
	arr2 = [];
	for(var prop in obj1) {
		arr1.push(obj1[prop])
	}
	for(var prop2 in obj2) {
		arr2.push(obj2[prop2])
	}
	for(var i = 0; i < arr1.length; i++) {
		if(arr1[i] == arr2[i]) {
			return true;
		}
	}
	return false;
}  
*/

function sharePair(obj1,obj2) {
	for(var prop in obj1) {
		if(obj1[prop] == obj2[prop]) {
			return true;
		}
	}
	return false;
}

var persons = {
	"person1": {
		name: "Steven",
		age: 54
	},
	"person2": {
		name: "Tamir",
		age: 54
	}

}

var shared = sharePair(persons["person1"],persons["person2"]);
console.log(shared);

/*
RELEASE 2
use for loop where the argument is how many times it will loop
use math.random twice
  once to determine how long it will be
  second to make random numbers
use fromCharCode to turn numbers into letters
*/

function randomWords(length) {
	var words = [];
	var word = "";
	for(var i = 0; i < length; i++) {
		//determines how long the word will be
		wordLength = Math.floor(Math.random() * 10) + 1;
		for(var j = 0; j < wordLength; j++) {
			//makes random number. between 65-90 in unicode is A-Z
			var randomNum = Math.floor(Math.random() * 26) + 65;
			//makes random letter from the random number
			var letter = String.fromCharCode(randomNum);
			word += letter;
		}
		words.push(word);
		word = ""; //clearing variable so the next random word doesn't get combined with previous one
	}
	return words;
}

var wordList = randomWords(3);
console.log(wordList);