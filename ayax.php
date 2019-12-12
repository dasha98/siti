<?php
	$mysqli = mysqli_connect("localhost", "root", "", "bb");
	$output = '';
	if(isset($_POST["query"])){
		$search = mysqli_real_escape_string($mysqli, $_POST["query"]);
		$query = "
			SELECT * FROM tb_kniga WHERE name LIKE '%" .$search.  "%' 
		";
	}
	else{
		$query = "
			SELECT * FROM tb_kniga ORDER BY id
		";
	}
	$result = mysqli_query($mysqli, $query);
	if(mysqli_num_rows($result) > 0){
		$output .= '
		<div class="table-responsive">
		<table border = "1">
			<tr>
				<th>Название книги</th>				
				<th>Количество страниц</th>
				<th>Издательство</th>
				<th>Год</th>
			</tr>
		';
	while($row = mysqli_fetch_array($result)){
		$output .= '
			<tr>
				<td>'.$row["name"].'</td>				
				<td>'.$row["stranic"].'</td>
				<td>'.$row["izdatelstvo"].'</td>
				<td>'.$row["god"].'</td>
			</tr>
		';
	}
	echo $output;
	}
	else{
		echo 'Данных о книге нет!';
	}
?>


