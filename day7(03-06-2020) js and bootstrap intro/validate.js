function validate()
{
    var result = "";
    result += validateName();
    result += validateEmail();
    result += validatePassword();
    result += validateTerms();
    if (result == "") return true;
    alert("Validation result:\n\n" + result);
    return false;
}
function validateName()
{
    var name = document.getElementsByName("name")[0].value;
    if(name.length <= 3)
    {
        return "Name should be at least 3 charecters.\n";
    }
    return "";
}
function validatePassword()
{
    var password = valueOf("password");
    var retype = valueOf("retype_password");
    if (password.length <= 6)
    {
        return "password should be at least 6 charecters.\n";
    }
    if (password != retype)
    {
        return "passwords donot match.\n";
    }
    return "";
}
function validateEmail()
{
    var email = valueOf("email");
    var retype = valueOf("retype_email");
    if (email.indexOf('@') == -1)
    {
        return "Email should be a valid address.\n";
    }
    if (email != retype)
    {
        return "email address donot match.\n";
    }
    return "";
}
function validateTerms()
{
    var terms = document.getElementsByName('terms')[0];
    if (!terms.checked)
    {
        return "please accept the terms of service and privacy policy";
    }
    return "";
}
function valueOf(name)
{
    return document.getElementsByName(name)[0].value;
}