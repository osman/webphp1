<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Docker PHP Hello World -Jmy Apr2018 </title>
  </head>
  <body>
    <? if ($_POST['who'] != '') {?>
      <h1>Hello <? echo htmlspecialchars($_POST['who']); ?></h1>
      <a href="index.php">Greet someone else</a>
    <? } else { ?>
      <form class="greetingForm" action="index.php" method="post">
        <label for="who">This is run from Docker 5th time <BR> <BR> </label>
        <label for="who">May I know your Name ? </label>
        <input type="text" name="who">
        <input type="submit" name="greet" value="Enter">
      </form>
    <? } ?>
  </body>
</html>
