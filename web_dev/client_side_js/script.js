var photo = document.getElementById("lizard-photo")

function hidePhoto() {
  photo.hidden = true;
}

function showPhoto() {
  photo.hidden = false;
}


var hide = document.getElementById("hide");
hide.addEventListener("click",hidePhoto);
var show = document.getElementById("show");
show.addEventListener("click",showPhoto);
