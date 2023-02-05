<?php include_once('include/arr_pessoa.php');

for($i=0;$i<count($arrPessoa);$i++)
{
    if($arrPessoa[$i]['id']==intval($_REQUEST['id']))
    {
        $pessoa = $arrPessoa[$i];
    }

}


?><!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="iso-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="static/css/stylesheet.css" />
</head>
<body>

<h1>Visualizar usuário</h1>

    <p class="p_links p_back"><a href="javascript:history.go(-1);">&laquo; Voltar</a></p>
    
   <ul class="usuarios detalhe">
        <li><img src="./static/img/profile/<?php echo $pessoa['id'];?>.jpg"  />
            <p><a href="#"><?php echo $pessoa['nome'];?></a></p>
            <p><?php echo $pessoa['idade'];?></p>
            <p><?php echo $pessoa['cidade'];?></p>
        </li>
    </ul>
    <p>Fusce sit amet est ullamcorper, luctus libero nec, luctus erat. Nam vestibulum pretium facilisis. </p>
   
  
    <hr />
    <p>Créditos: 
        <br /><a href="https://thispersondoesnotexist.com/" target="_blank">https://thispersondoesnotexist.com/</a>
        <br /><a href="https://gerador-nomes.herokuapp.com/" target="_blank">https://gerador-nomes.herokuapp.com/</a>
       
    </p>
  </body>
</html>