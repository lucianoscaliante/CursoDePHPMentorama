<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabela com Html e PHP</title>
</head>
<body>
    <?php
        $listaCompra = array(
            'Arroz' => 2, 'Feijão' => 1, 'Oleo' => 2, 'leite' => 3, 'Sal' => 1
        )
    ?>
    <h1>Lista de Compra do Mercado</h1>
    <table border=1>
        <tr>
            <th> Item </th>
            <th> Quantidade </th>
        </tr>
        <?php
            foreach($listaCompra as $Item => $Quantidade) {
                echo "<tr>";
                echo "<td>$Item</td>";
                echo "<td>$Quantidade</td>";
                echo "</tr>";
            }
        ?>
    </table>
</body>
</html>