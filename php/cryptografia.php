<?
$dados = $_GET['dados'];

function get_rnd_iv($iv_len)
{

    $iv = '';

    while ($iv_len-- > 0) {

        $iv .= chr(mt_rand() & 0xff);

        }

        return $iv;

        }


        $senhacryp="costelinha2009";
        function md5_encrypt($plain_text, $password, $iv_len = 1)

        {

        $plain_text .= "\x13";

        $n = strlen($plain_text);

        if ($n % 16) $plain_text .= str_repeat("\0", 16 - ($n % 16));

        $i = 0;

        $enc_text = get_rnd_iv($iv_len);

        $iv = substr($password ^ $enc_text, 0, 512);

        while ($i < $n) {

        $block = substr($plain_text, $i, 16) ^ pack('H*', md5($iv));

        $enc_text .= $block;

        $iv = substr($block . $iv, 0, 512) ^ $password;

        $i += 16;

    }

    return base64_encode(base64_encode($enc_text));
}


echo md5_encrypt($dados, $senhacryp);
