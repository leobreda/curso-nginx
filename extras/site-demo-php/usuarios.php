<?php include_once('include/arr_pessoa.php');?><!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="iso-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="static/css/stylesheet.css" />
</head>
<body>

    <h1>Usuários</h1>
    <p class="p_links p_back"><a href="./">&laquo; Voltar</a></p>
    
    <p>Fusce sit amet est ullamcorper, luctus libero nec, luctus erat. Nam vestibulum pretium facilisis. </p>
    <ul class="usuarios">
        <?php for($i=0;$i<count($arrPessoa);$i++){ ?>
        <li><img src="./static/img/profile/<?php echo $arrPessoa[$i]['id'];?>.jpg"  />
            <p><a href="usuario_view.php?id=<?php echo $arrPessoa[$i]['id'];?>"><?php echo $arrPessoa[$i]['nome'];?></a></p>
            <p><?php echo $arrPessoa[$i]['idade'];?> anos</p>
            <p><?php echo $arrPessoa[$i]['cidade'];?></p>
        </li>
        <?php }?>
    </ul>
    
  
    <hr />
    <p>Créditos: 
        <br /><a href="https://thispersondoesnotexist.com/" target="_blank">https://thispersondoesnotexist.com/</a>
        <br /><a href="https://gerador-nomes.herokuapp.com/" target="_blank">https://gerador-nomes.herokuapp.com/</a>
       
    </p>
  </body>
</html>