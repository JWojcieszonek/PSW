function linksList()
{
    
    var links = document.links;
    var list= "<ul>";

    for(var i=0;i<links.length;i++)
    {
        currentLink=links.item(i);
        list+="<li><a href='"+currentLink.href+"'>"+currentLink.href +"</li>";
    }
    list+="</ul>";
    document.getElementById("div1").innerHTML=list;
    //document.writeln(list);
}
function imageSources()
{
    var images = document.images;
    var list="<ul>";
    for(var i=0; i<images.length;i++)
    {
        list+="<li>"+document.images.item(i).src +"</li>";
    }
    list+="</ul>";
    document.getElementById("div2").innerHTML=list;

}
function getName()
{
    document.getElementById("p1").innerHTML=document.forms.namedItem("name").innerHTML;
}
function numberOfAnchors()
{
    document.getElementById("p2").innerHTML=document.anchors.length;
}
function load()
{
    linksList();
    imageSources();

}
window.addEventListener("load",load,false);