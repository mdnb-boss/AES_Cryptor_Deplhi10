<?

$dados = $_GET['dados'];

$senhacryp="costelinha2009";
function md5_decrypt($enc_text, $password, $iv_len = 1)

{

$enc_text = base64_decode(base64_decode($enc_text));

$n = strlen($enc_text);

$i = $iv_len;

$plain_text = '';

$iv = substr($password ^ substr($enc_text, 0, $iv_len), 0, 512);

while ($i < $n) {

$block = substr($enc_text, $i, 16);

$plain_text .= $block ^ pack('H*', md5($iv));

$iv = substr($block . $iv, 0, 512) ^ $password;

$i += 16;

}

return preg_replace('/\\x13\\x00*$/', '', $plain_text);

}





echo md5_decrypt($dados, $senhacryp);


?>