var num1 =null;
var num2 =null;

function first()
{
    var name=window.prompt("Podaje imie");
    var i;
    var asc="";
    
    for(i=0;i<name.length;i++)
    {
        asc+=parseInt(name.charCodeAt(i),10).toString(2)+" ";
    }
    document.writeln(asc);

    var zeros=0;
    var ones=0;
    var j;
    for(j=0;j<asc.length;j++)
    {
        if(asc.charAt(j)=="1")
        {
            ones++;
        }
        else if(asc.charAt(j)=="0")
        {
            zeroes++;
        }
    }


    var day="";
    switch(new Date().getDay())
    {
        case 0:
            day="Niedziela";
            break;
        case 1:
            day="Poniedziałek";
            break;
        case 2:
            day="Wtorek";
            break;
        case 3:
            day="Środa";
            break;
        case 4:
            day="Czwartek";
            break;
        case 5:
            day="Piątek";
            break;
        case 6:
            day="Sobota";
            break;
    }
    if(name!==null)
    {
        document.writeln("Witaj "+name+"<br>"+"Dziś jest "+day);
    }
}

function loop()
{
    num1 = parseInt(document.getElementById("num1").value);
    num2 = parseInt(document.getElementById("num2").value);

    var i;
    var res1="";
    for(i=0;i<=num2;i++) 
    {
        res1=res1+(num1*(i+1))+", "; 
    }
    document.getElementById("multi").innerHTML="Wielokrotności a: "+ res1;

    var j=0;
    var res2="";
    while(j<=num2)
    {   
        res2=res2+Math.pow(num1,j+1)+", ";
        j++;
    }
    document.getElementById("pow").innerHTML="Potęgi a: "+res2;

    var res3="";
    var k=0;
    do
    {
        res3=res3+(num1+num2*k)+", ";
        k++;
    }
    while(k<=num2);

        document.getElementById("seq").innerHTML="Ciąg arytmetyczny o podstawie a i różnicy b: "+res3;
}

function add()
{
    loop();
    num1 = document.getElementById("num1").value;
    num2 = document.getElementById("num2").value; 
    var res = parseInt(num1)+parseInt(num2);
    if(!Number.isNaN(res))
    {
        document.getElementById("result").innerHTML="Wynik: "+res ;
        
    }
    else
    {
        document.getElementById("result").innerHTML="Nie podano liczb";
        window.alert("Podaj wszystkie liczby!");        
    }

}

function subtract()
{
    loop();
    num1 = document.getElementById("num1").value;
    num2 = document.getElementById("num2").value; 
    var res = parseInt(num1)-parseInt(num2);
    document.getElementById("result").innerHTML=res;
    if(!Number.isNaN(res))
    {
        document.getElementById("result").innerHTML="Wynik: "+res ;
        
    }
    else
    {
        document.getElementById("result").innerHTML="Nie podano liczb";
        window.alert("Podaj wszystkie liczby!");        
    }
}

function multiply()
{
    loop();
    num1 = document.getElementById("num1").value;
    num2 = document.getElementById("num2").value; 
    var res = parseInt(num1)*parseInt(num2);
    document.getElementById("result").innerHTML=res;
    if(!Number.isNaN(res))
    {
        document.getElementById("result").innerHTML="Wynik: "+res ;
        
    }
    else
    {
        document.getElementById("result").innerHTML="Nie podano liczb";
        window.alert("Podaj wszystkie liczby!");        
    }
}

function divide()
{
    loop();
    num1 = document.getElementById("num1").value;
    num2 = document.getElementById("num2").value; 
    var res = parseFloat(num1)/parseFloat(num2);
    document.getElementById("result").innerHTML=res;
    if(!Number.isNaN(res))
    {
        document.getElementById("result").innerHTML="Wynik: "+res ;
        
    }
    else
    {
        document.getElementById("result").innerHTML="Nie podano liczb";
        window.alert("Podaj wszystkie liczby!");        
    }
}

function random()
{
    
    var r=Math.floor(Math.random()*256);
    var g=Math.floor(Math.random()*256);
    var b=Math.floor(Math.random()*256);
    var color="rgb("+r+","+g+","+b+")";
    document.body.style.backgroundColor=color;
}

function start()
{
    num1 = document.getElementById("num1").value;
    num2 = document.getElementById("num2").value;
    document.getElementById("add").addEventListener("click", add);
    document.getElementById("sub").addEventListener("click", subtract);
    document.getElementById("mul").addEventListener("click", multiply);
    document.getElementById("div").addEventListener("click", divide);
}

first();
window.addEventListener( "load", start, false );