<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>@NinjaPaineis</title>
<style>
body{background:#0a0a0a;color:#fff;font-family:Arial;text-align:center}
.box{background:#151515;padding:20px;border-radius:15px;margin:20px;border:1px solid #00ff88}
h1{color:#00ff88}
button{width:90%;padding:12px;margin:8px;background:#00ff88;border:none;border-radius:8px;font-weight:bold}
input{width:85%;padding:10px;margin:5px;border-radius:8px;border:none}
.msg{color:#00ff88;margin-top:10px}
</style>
</head>
<body>

<div id="canal">
<h1>@NinjaPaineis</h1>
<p>Inscreva-se para continuar</p>
<a href="https://www.youtube.com/@NinjaPaineis" target="_blank"><button>IR PARA O CANAL</button></a><br><br>
<button onclick="document.getElementById('canal').style.display='none';document.getElementById('login').style.display='block'">JÁ ME INSCREVI</button>
</div>

<div id="login" style="display:none" class="box">
<h1>@NinjaPaineis</h1>
<h2>PAINEL NINJA</h2>
<input id="user" placeholder="USUARIO"><br>
<input id="pass" type="password" placeholder="SENHA"><br>
<button onclick="logar()">ENTRAR</button>
<p id="erro"></p>
</div>

<div id="painel" style="display:none" class="box">
<h1>@NinjaPaineis</h1>
<h2>PAINEL NINJA</h2>
<button onclick="ativar('Aimbot')">Aimbot</button>
<button onclick="ativar('AimFov')">AimFov</button>
<button onclick="ativar('Bala Mágica')">Bala Mágica</button>
<button onclick="ativar('Esp Linha')">Esp Linha</button>
<button onclick="ativar('Esp Caixa')">Esp Caixa</button>
<button onclick="ativar('Excluir Arquivos')">Excluir Arquivos</button>
<button onclick="document.getElementById('ia').style.display='block'">IA Sensibilidade</button>
<p id="status" class="msg"></p>

<div id="ia" style="display:none;margin-top:15px">
<h3>IA Gerador</h3>
<input id="dpi" placeholder="Seu DPI ex: 360">
<button onclick="gerar()">GERAR</button>
<p id="res"></p>
</div>
</div>

<script>
function logar(){
if(document.getElementById('user').value=='NINJA' && document.getElementById('pass').value=='wq10'){
document.getElementById('login').style.display='none';
document.getElementById('painel').style.display='block';
}else{document.getElementById('erro').innerHTML='Usuário ou senha errado';}
}
function ativar(nome){
document.getElementById('status').innerHTML=nome+' ativado com sucesso!';
setTimeout(()=>{document.getElementById('status').innerHTML='';},2000);
}
function gerar(){
let dpi=document.getElementById('dpi').value||360;
document.getElementById('res').innerHTML='Geral '+(Math.round(100-dpi/10))+' | Red '+ (Math.round(90-dpi/10));
}
</script>
</body>
</html>
