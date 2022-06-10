<!D<html>

	<head>
		<meta charset="utf-8">
		<style>
			.kenarlik {border: 2px solid #cdb79e;}

			.gizle {display: none;}

			.fontSize14 {font-size: 14px;}

			.koyu {font-weight: bold}
			.arkaplan{background: #cdb79e}

			body a {text-decoration: none !important}
		</style>
		<script src="js/popper.min.js"></script>
		<link rel="stylesheet" href="../css/bootstrap.min.css" />
		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jQueryRotate.js"></script>
		<script type="text/javascript" src="js/animasyon.js"></script>
		<script>
				$(document).ready(function(){
					$('[data-toggle="tooltip"]').tooltip();
				});
		</script>

		<?php 
		function veriTabaninaBaglan($veriTabani){
				$db= new mysqli("localhost","root","",$veriTabani);
				$db->set_charset("utf8");
				return $db;
		}
		function tekliIcerik($anaBolumIndex){
			$db= veriTabaninaBaglan("odev");
			$sorgu="select icerik,linkid from icerikler where anaBolumIndex=$anaBolumIndex";
			$sonuc=$db->query($sorgu);
			$kayit=$sonuc->fetch_assoc();
			return $kayit ["icerik"];

		}

		function cokluIcerik($anaBolumIndex){
			$db= veriTabaninaBaglan("odev");
			$sorgu="select icerik,linkid from icerikler where anaBolumIndex=$anaBolumIndex";
			$sonuc=$db->query($sorgu);
			return $sonuc;
		}
		function linksorgu($linkid){
			$db= veriTabaninaBaglan("odev");
			$sorgu="SELECT linkler.sayfa from linkler WHERE linkler.linkid=$linkid";

			$sonuc=$db->query($sorgu);
			$kayit=$sonuc->fetch_assoc();
			return $kayit ["sayfa"];

		}





		?>
	</head>

	<body class="bg-light ">

		<div class="container  mt-3">
		<div class="row  ">
				<div class="col-12 kenarlik">
					<div class="row align-items-center">
						<div class="col-1 m-0 p-1 ">

							<?php
						
								$anaBolumIndex=1;
								
							?>

							<img src="<?php echo tekliIcerik($anaBolumIndex) ?>" class="img-fluid" />
						</div>
						<div class="col-auto p-2 ">

							<?php
								$anaBolumIndex=2;
							?>

							<h5 class="p-0  d-none d-lg-block "><?php echo tekliIcerik($anaBolumIndex)?></h5>
							<h6 class="p-0 d-block d-lg-none"><?php echo tekliIcerik($anaBolumIndex)?></h6>
						</div>
						<div class="col-12 col-lg p-2">
							<div class="row justify-content-lg-end py-2 py-lg-0">
								<?php $anaBolumIndex=3;
								$sonuc= cokluIcerik($anaBolumIndex);
								$ks=$sonuc->num_rows;
							for($i=0;$i<$ks;$i++)
							{
								$kayit=$sonuc->fetch_assoc();
								$icerik=$kayit["icerik"];
						echo "<div class='col-auto'> <a href='#' style='color:#996600'>$icerik</a></div>";
							}

								  ?>
					

							</div>
						</div>
					</div>
				</div>
			</div> 
			<div class="row mt-2 ">
				<div class="col-12 p-3 arkaplan text-black rounded">
					<div class="row align-items-center">

						<?php
								$anaBolumIndex=4;

							?>


						<div class="col">
							<h5><?php echo tekliIcerik($anaBolumIndex)?></h5>
						</div>
						<?php
								$anaBolumIndex=5;
								$sonuc=cokluIcerik($anaBolumIndex);
								$kayit=$sonuc->fetch_assoc();
								$icerik=$kayit["icerik"];
								$linkid=$kayit["linkid"];
								if($linkid!=0){
								$link=linksorgu($linkid);
								}
								else{

									$link="#";
								}						
							?>


						<div class="col text-end">
							<h6><a href="<?php echo $link?>"class="text-white"><?php echo $icerik ?><a/></h6>

						</div>

					</div>
				</div>
			</div>
			<div class="row my-3 bg-white  p-3 rounded">
			<div class="col-12 ">
				<div class="row">
					<?php 
					$tekrarsayisi=4;
					$anaBolumIndex=6;
					$sonuc=cokluIcerik($anaBolumIndex);
					for($i=0;$i<$tekrarsayisi;$i++){
									echo '<div class="col ">';
									echo'<div class="card text-center h-100">';
						
								  echo'<div class="card-body">';
								    $kayit=$sonuc->fetch_assoc();
								    $icerik=$kayit["icerik"];
								    echo'<h6 class="card-title">';
								    echo $icerik;
									echo'</h6>';
										$kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
							
								    echo'<img src="'.$icerik.'"class="img-fluid"/>';
								    $kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
								    echo'<p class="py-1 text-success">'.$icerik.'</p>';
								    
								   echo'</div>';
								  echo'<div class="card-footer text-warning">';
								  $kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
								  	echo'<h5 class="text-muted"><del>'.$icerik.'</del></h5>';
								  	$kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
								  	echo'<h4>'.$icerik.'</h4>';
										$kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
										$linkid=$kayit["linkid"];
										if($linkid!=0){
										$link=linksorgu($linkid);
										}
										else{

											$link="#";
										}	
								    echo'<a href="'.$link.'" class="btn btn-danger">'.$icerik.'</a>';
								  echo'</div>';
								echo'</div>';
						echo'</div>';
					}
					?>
				</div>
			</div>	
			</div>
			
		</div>
		<div class="container "> 
		
			<div class="row my-3 bg-white p-1 raunded">
			<div class="col-12">
				<div class="row">
					<?php 
					$tekrarsayisi=4;
					$anaBolumIndex=7;
					$sonuc=cokluIcerik($anaBolumIndex);
					for($i=0;$i<$tekrarsayisi;$i++){
									echo '<div class="col ">';
									echo'<div class="card text-center h-100">';
						
								  echo'<div class="card-body">';
								    $kayit=$sonuc->fetch_assoc();
								    $icerik=$kayit["icerik"];
								    echo'<h6 class="card-title">';
								    echo $icerik;
									echo'</h6>';
										$kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
							
								    echo'<img src="'.$icerik.'"class="img-fluid"/>';
								    $kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
								    echo'<p class="py-1 text-success">'.$icerik.'</p>';
								    
								   echo'</div>';
								  echo'<div class="card-footer text-warning">';
								  $kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
								  	echo'<h5 class="text-muted"><del></del></h5>';
								  	$kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
								  	echo'<h4>'.$icerik.'</h4>';
										$kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
										$linkid=$kayit["linkid"];
										if($linkid!=0){
										$link=linksorgu($linkid);
										}
										else{

											$link="#";
										}	
								    echo'<a href="'.$link.'" class="btn btn-danger">'.$icerik.'</a>';
								  echo'</div>';
								echo'</div>';
						echo'</div>';
					}
					?>


				</div>
			</div>	
			</div>
			
		</div>
		<div class="container "> 
		
			<div class="row my-3 bg-white p-1 raunded">
			<div class="col-12">
				<div class="row">
								<?php 
					$tekrarsayisi=4;
					$anaBolumIndex=8;
					$sonuc=cokluIcerik($anaBolumIndex);
					for($i=0;$i<$tekrarsayisi;$i++){
									echo '<div class="col ">';
									echo'<div class="card text-center h-100">';
						
								  echo'<div class="card-body">';
								    $kayit=$sonuc->fetch_assoc();
								    $icerik=$kayit["icerik"];
								    echo'<h6 class="card-title">';
								    echo $icerik;
									echo'</h6>';
										$kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
							
								    echo'<img src="'.$icerik.'"class="img-fluid"/>';
								    $kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
								    echo'<p class="py-1 text-success">'.$icerik.'</p>';
								    
								   echo'</div>';
								  echo'<div class="card-footer text-warning">';
								  $kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
								  	echo'<h5 class="text-muted"><del></del></h5>';
								  	$kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
								  	echo'<h4>'.$icerik.'</h4>';
										$kayit=$sonuc->fetch_assoc();
										$icerik=$kayit["icerik"];
										$linkid=$kayit["linkid"];
										if($linkid!=0){
										$link=linksorgu($linkid);
										}
										else{

											$link="#";
										}	
								    echo'<a href="'.$link.'" class="btn btn-danger">'.$icerik.'</a>';
								  echo'</div>';
								echo'</div>';
						echo'</div>';
					}
					?>
					
				</div>
			</div>	
			</div>
			
		</div>
	</body>

	</html>