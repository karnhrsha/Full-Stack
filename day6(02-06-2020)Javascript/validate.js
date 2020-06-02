function validate()
{
    var v1 = document.getElementById("t1").value;
    var v2 = document.getElementById("t2").value;
    var v3 = document.getElementById("t3").value;
    var v4 = document.getElementById("t4").value;
    var rn = /^[2][2][1][7][1][0][3][0][0-9]{4}$/ ;
    var e = /^[A-Za-z][A-Za-z0-9._-]{3,20}[@][a-z]{3,15}[.][a-z]{2,3}$/ ;
    var mn = /^[6-9][0-9]{9}$/ ;
    if(v1 == '' || v2 == '' || v3 == '' || v4 == '')
    {
        alert('enter all fields');
    }
    else if(rn.test(t4) && e.test(t3) && mn.test(t2))
    {
        alert('validation successful');
    
    }
    else
    {
        alert('enter valid details');
    }
}