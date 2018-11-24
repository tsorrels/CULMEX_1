<html>
<head>
</head>
<body>
<?php

$file = htmlspecialchars($_GET["file"]);
echo $file . '<br>';

$text = file_get_contents($file);
echo $text;


?>
</body>
</html>
