<!DOCTYPE html> 
<html> 
	<head> 
		<style> 
			table { 
				border-collapse: collapse; 
			} 
			th { 
				background-color:green; 
				Color:white; 
			} 
			th, td { 
				width:150px; 
				text-align:center; 
				border:1px solid black; 
				padding:5px 
			
			} 
			.geeks { 
				border-right:hidden; 
			} 
			.gfg { 
				border-collapse:separate; 
				border-spacing:0 15px; 
			} 
			h1 { 
				color:green; 
			} 

			tr:nth-child(even){
		background: #94ad23;
	}

		</style> 
	</head> 
	<body> 
		<center> 
		<h1>GeeksforGeeks</h1> 
		<h2>Row spacing in a table</h2> 
		<table> 
			<tr> 
				<th>Employee ID</th> 
				<th>Name</th> 
				<th>Gender</th> 
				<th>Age</th> 
			</tr> 
		<tbody class = "gfg"> 
			<tr> 
				<td class = "geeks">10001</td> 
				<td>Thomas</td> 
				<td>M</td> 
				<td>32</td> 
			</tr> 
			<tr> 
				<td class = "geeks">10002</td> 
				<td>Sally</td> 
				<td>F</td> 
				<td>28</td> 
			</tr> 
			<tr> 
				<td class = "geeks">10003</td> 
				<td>Anthony</td> 
				<td>M</td> 
				<td>24</td> 
			</tr> 
			<tr> 
				<td class = "geeks">10003</td> 
				<td>Anthony</td> 
				<td>M</td> 
				<td>24</td> 
			</tr> 
			<tr> 
				<td class = "geeks">10003</td> 
				<td>Anthony</td> 
				<td>M</td> 
				<td>24</td> 
			</tr> 
			<tr> 
				<td class = "geeks">10003</td> 
				<td>Anthony</td> 
				<td>M</td> 
				<td>24</td> 
			</tr> 
			<tr> 
				<td class = "geeks">10003</td> 
				<td>Anthony</td> 
				<td>M</td> 
				<td>24</td> 
			</tr> 
			<tr> 
				<td class = "geeks">10003</td> 
				<td>Anthony</td> 
				<td>M</td> 
				<td>24</td> 
			</tr> 
			<tr> 
				<td class = "geeks">10003</td> 
				<td>Anthony</td> 
				<td>M</td> 
				<td>24</td> 
			</tr> 

		</tbody>
		</table> 
		</center> 
	</body> 
</html> 
