$(document).ready(function() {

  var photo = document.getElementById("lizard-photo");
  
  var lizardBtn = document.createElement("button");
  lizardBtn.appendChild(document.createTextNode("Add another lizard"));
  document.getElementById("about-my-pet").appendChild(lizardBtn);
  lizardBtn.id = "addLizard";

  function addLizard() {
    var img = document.createElement("img");
    img.src = "chameleon.png"
    img.id = "picture"
    img.setAttribute('height', 'auto');
    img.setAttribute('width', '225px')
    document.body.appendChild(img);
  }  

  $("#hide").click(function() {
    photo.hidden = true;
  });

  $("#show").click(function() {
    photo.hidden = false;
  });

  $("#lizard-photo").mouseenter(function() {
    photo.style.border = "2px solid blue";
  });

  $("#lizard-photo").mouseleave(function() {
    photo.style.border = "";
  });

  $("#addLizard").click(function() {
    addLizard();
  });

});

/*
just testing some jquery

//this is the same as
var b = document.getElementsByTagName("li");
b = b[0];
console.log(b);
//this
var a = $('li');
a = a[0]
console.log(a);
//takes the old value and adds !!! to it and returns it as a new value. example: goes with any decor!!!
$('li').html(function(index, oldHtml) {
  return oldHtml + '!!!'
});
*/