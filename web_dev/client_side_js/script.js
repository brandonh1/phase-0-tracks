var photo = document.getElementById("lizard-photo")

function hidePhoto() {
  photo.hidden = true;
}

function showPhoto() {
  photo.hidden = false;
}

function addLizard() {
 
  var img=document.createElement("img");
  img.src="chameleon.png"
  img.id="picture"
  img.setAttribute('height', 'auto');
  img.setAttribute('width', '225px')
  document.body.appendChild(img);
  
}

var newBtn = document.createElement("button");
var text = document.createTextNode("Add another lizard")
newBtn.appendChild(text);
document.getElementById("about-my-pet").appendChild(newBtn);
newBtn.id = "lizard-btn";

var hide = document.getElementById("hide");
hide.addEventListener("click",hidePhoto);
var show = document.getElementById("show");
show.addEventListener("click",showPhoto);

var add_button = document.getElementById("lizard-btn");
add_button.addEventListener("click", addLizard);