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
    else if(!mn.test(v2))
    {
        alert('enter valid mobile no');
    }
    else if(!e.test(v3))
    {
        alert('enter valid email id');
    }
    else if(!rn.test(v4))
    {
        alert('enter valid rollno');
    }
    else{
        alert('validation successful');
    }
}