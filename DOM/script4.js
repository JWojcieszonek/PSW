function createCanvas()
{
    var side=200;
    var tabBody=document.getElementById("tabBody");

    for(var i=0;i<side;i++)
    {
        var row= document.createElement("tr");
        for(var j=0;j<side;j++)
        {
            var cell=document.createElement("td");
            row.appendChild(cell);
        }
       
        tabBody.appendChild(row);
    }
    document.getElementById("canvas").addEventListener("mousemove",mouseMove,false);
    document.getElementById("pwr").addEventListener("mousedown",mouseDown);
    document.getElementById("pwr").addEventListener("mouseup",mouseUp);
    document.getElementById("text").addEventListener("mouseover",mouseOver);
    document.getElementById("text").addEventListener("mouseout",mouseOut);
}
function mouseMove(event)
{
    if ( event.target.tagName.toLowerCase() == "td" )
    {
        if(event.ctrlKey)
        {
            event.target.setAttribute("class","blue");
        }
        if(event.shiftKey)
        {
            event.target.setAttribute("class","red");
        }
        if(event.altKey)
        {
            event.target.setAttribute("class","black");
        }
        if(event.mouseDown)
        {
            event.target.setAttribute("class","white");
        }
    }
}
function mouseDown()
{
    document.getElementById("pwr").style.width="200px";
    document.getElementById("pwr").style.height="290px";   
}
function mouseUp()
{
    document.getElementById("pwr").style.width="100px";
    document.getElementById("pwr").style.height="145px";
}
function mouseOver()
{
    document.getElementById("text").style.fontSize="1.5em";
    document.getElementById("text").style.color="blue";
}
function mouseOut()
{
    document.getElementById("text").style.fontSize="1em";
    document.getElementById("text").style.color=document.body.style.color;
}
function showCoordinates(event)
{
    var x=event.clientX;
    var y=event.clientY;
    document.getElementById("p3").innerHTML="X: "+x+" Y: "+y;
}
function mouseDown()
{
    document.getElementById("pwr").style.width="200px";
    document.getElementById("pwr").style.height="290px";
    
}
window.addEventListener( "load", createCanvas, false );