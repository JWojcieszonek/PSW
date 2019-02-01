var texts =[
    "Enter your name (only letters up to 20 characters)",
    "Enter your last name (only letters up to 30 characters)",
    "Enter your email adress",
    "Enter your phone number (000-000-000)",
    "Enter your password",
    "Enter your year of birth",
    ""
];
var help;

function start()
{
    help=document.getElementById("help");
    setListeners(document.getElementById("firstName"),0);
    setListeners(document.getElementById("lastName2"), 1);
    setListeners(document.getElementById("email"),2);
    setListeners(document.getElementById("phone"),3);
    setListeners(document.getElementById("password"),4);
    setListeners(document.getElementById("year"),5);

    var form = document.getElementById("form");
    form.addEventListener("submit",function(){return confirm("Are you sure you want to submit the form?");},false);
    form.addEventListener("reset",function(){return confirm("Are you sure you want to clear the form?");},false);
}
function setListeners(object, number)
{
    object.addEventListener("focus",function(){help.innerHTML = texts[number];},false);
    object.addEventListener("blur",function(){help.innerHTML=texts[6];},false);
}
window.addEventListener("load",start,false);