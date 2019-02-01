function append()
{
    var listItem = document.createElement("li");
    var input = document.getElementById("elem").value;
    listItem.appendChild(document.createTextNode(input));
    listItem.setAttribute("id","item");
    document.getElementById("ul1").appendChild(listItem);
}
function insert()
{
    var listItem = document.createElement("li");
    var input = document.getElementById("elem").value;
    listItem.appendChild(document.createTextNode(input));
    var list =  document.getElementById("ul1");
    list.insertBefore(listItem,list.childNodes[0]);
}
function replace()
{
    var listItem = document.createElement("li");
    var input = document.getElementById("elem").value;
    listItem.appendChild(document.createTextNode(input));
    var item =  document.getElementById("ul1").childNodes[0];
    document.getElementById("ul1").replaceChild(listItem, item);
}
function remove()
{
    document.getElementById("ul1").removeChild(document.getElementById("ul1").childNodes[0]);
}
function order()
{
    document.getElementById("item").parentNode.setAttribute("type", "square");
}
