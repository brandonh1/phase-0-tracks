var colors = ["blue", "red", "green", "orange"];
var names = ["Ed", "Rasp", "horse", "morse"];
colors.push("pink");
names.push("Mosby");

var horses = {};

for(var i = 0; i < colors.length; i++) {
	horses[names[i]] = colors[i];
}

console.log(horses);

function Car(brand, year, color) {
	console.log("Our new car: ", this);

	this.brand = brand;
	this.year = year;
	this.color = color;

	this.honk = function() {console.log("HHHOOONNNKKKKKKK!!!");};
  	console.log("CAR INITIALIZATION COMPLETE");
}

var newCar = new Car("Toyota",2010,"blue");
console.log(newCar);
newCar.honk();