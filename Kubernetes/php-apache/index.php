<html lang="en">
  <head>
    <title>Avalability of Goods in Stock</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
  </head>
  <body>
    <h1>Stock</h1>
    <table>
      <tr>
        <th>product</th>
        <th>code</th>
        <th>price</th>
      </tr>
      <?php
      $servername = getenv('DB_URL');
      $username = getenv('USER_NAME');
      $password = getenv('USER_PWD');
      $dbname = getenv('DB_NAME');
				$mysqli = new mysqli($servername, $username, $password, $dbname);
				$result = $mysqli->query("SELECT * FROM stock"); foreach ($result as $row) {
      echo "
      <tr>
        <td>{$row['product']}</td>
        <td>{$row['code']}</td>
        <td>{$row['price']}</td>
      </tr>
      "; } ?>
    </table>
    <?php
			phpinfo();
		?>
  </body>
</html>

