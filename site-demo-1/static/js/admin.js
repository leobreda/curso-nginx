function login()
{
    if(document.frmLogin.username.value=='')
    {
        alert('Informe o usuário');
        document.frmLogin.username.focus();
        return false;

    }
    if(document.frmLogin.password.value=='')
    {
        alert('Informe a senha');
        document.frmLogin.password.focus();
        return false;

    }
    return true;
}