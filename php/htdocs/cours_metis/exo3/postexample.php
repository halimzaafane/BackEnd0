<!DOCTYPE html>
<html>
<body>

<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
  Name: <input type="text" name="aname">
  <input type="text" name="bname">
  <input type="text" name="cname">
  <input type="text" name="dname">
  <input type="text" name="ename">
  <input type="submit">
</form>

<?php

    $name = $_POST;
    echo'<pre>';
    var_dump($name);

?>

</body>
</html>