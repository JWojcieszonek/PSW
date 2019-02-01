function changeBackground() 
{
    var select = document.getElementById("select1");
    var color = select.options[select.selectedIndex].value;
    document.bgColor=color;
}
function changeText()
{
    var select = document.getElementById("select2");
    var color = select.options[select.selectedIndex].value;
    document.body.style.color=color;
}
function changeFont(font)
{
   var select=document.getElementById("select3");
   var font =select.options[select.selectedIndex];
   document.body.style.fontFamily=font.value;
}