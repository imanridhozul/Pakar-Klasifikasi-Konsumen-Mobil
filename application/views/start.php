<html>	
    <body>
</div>
	<div id="containeral">
		<?php
			$u = base_url();
			foreach($quest as $q)
			{
				if($q->status!=1){
					echo"
  						<center><h4 style='font-color:red;'>$q->action</h4></center>
					";
					foreach($ans as $as)
					{
						if($as->gambar=='')
						{
							echo"
							<a class='trans' href='".$u."ControlPakar/start/$as->direct/$as->idj'>
								$as->pilihan
										
							</a>
						
						";
						}
						else
						{
							echo"
							<div class='popup'><a class='trans' href='".$u."ControlPakar/start/$as->direct/$as->idj'>
								$as->pilihan
								<span><img src='$u/$as->gambar'></span>				
							</a></div>
						
						";
						}
						
					}
				}
				else
				{
						echo "<center>";
						echo"<h4>Mobil masuk dalam kategori <b>$q->action</b></h4>";
						echo"<h4><br>Ulang Evaluasi  ?</h4> ";
						echo "</center>";
						echo"
							<a class='trans' href='".$u."ControlPakar/start/p1/0'>
														<h3>ya</h3>
							</a>							
							<a class='trans'><button style='background:none;border:none;'onclick='sweet()''><h3>Klik untuk penjelasan lebih lanjut</h3></button></a>
							";
							$ket='null';
							foreach($penjelasan as $as)
							{
								$ket = $as->penjelasan;
							}
							echo"<script>
							function sweet (){

								swal('$q->action', '$ket', 'success');

							}</script>";
						$id = $q->id;
				}
					
			}
		?>
		</div>
		
		<a class="trans" href="<?php echo $u;?>" style="font-size:18pt;position:absolute;left:2%;top:0%;height:34px;width:100px;"><center>Beranda</center></a>
<style>
			.trans
			{
				width:auto;
				font-size:13pt;text-decoration:none;color:white;
			}
			.trans:hover
			{
				background:#446CB3;
			}
			.trans:hover
			{
				opacity:0.5;
			}
			.popup {
	zoom:1.0;
	position:relative;
	text-decoration:none;
}
.popup span {
	position:fixed;
	top:170px;
	right:10px;
	width:350px;
	padding:10px;
	
	
	right:-999em;
	z-index:990;
        
}
.popup:hover {visibility:visible}
.popup:hover span {right:50px;}
* html .popup span {position:absolute;}
		</style>
</html>