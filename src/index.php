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
        <label for="who">This is run from Docker 1</label>
        <label for="who">Say hello to</label>
        <input type="text" name="who">
        <input type="submit" name="greet" value="Say Hello">
      </form>
    <? } ?>
  </body>
</html>
