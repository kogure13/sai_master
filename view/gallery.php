		<div id="content" class="float_r">
        	<ul id="gallery">
        		<?php for($i=1; $i <= 12; $i++) { 
        			if($i < 10) {$a = '0'.$i;}
        			else {$a = $i;} ?> 
                <li>
                	<a href="theme/asset/css/images/gallery/<?=$a?>.jpg" rel="lightbox[portfolio]">
                		<img src="theme/asset/css/images/gallery/<?=$a?>.jpg" alt="image <?=$i?>" />
                	</a>
                </li>
                <?php } ?>                
			</ul>
            
            <div class="cleaner"></div>
            <div class="pagging">
                <ul>
                    <li><a href="#" target="_parent">Previous</a></li>
                    <li><a href="#" target="_parent">1</a></li>
                    <li><a href="#" target="_parent">2</a></li>
                    <li><a href="#" target="_parent">3</a></li>
                    <li><a href="#" target="_parent">4</a></li>
                    <li><a href="#" target="_parent">5</a></li>
                    <li><a href="#" target="_parent">6</a></li>
                    <li><a href="#" target="_parent">Next</a></li>
                </ul>
            </div>	
        </div>
        
        <div id="sidebar" class="float_l">
        	<a href="#"><img src="theme/asset/css/images/ad_300.jpg" alt="image" /></a>
            
            <div class="cleaner h40"></div>
            
            <h5>Categories</h5>
           	<ul class="tmo_list">
                <li><a href="#">Nullam ornare vulputate</a></li>
                <li><a href="#">Vestibulum erat erat</a></li>
                <li><a href="#">Pellentesque eget magna</a></li>
                <li><a href="#">Etiam tempus quam eu odio</a></li>
                <li><a href="#">Donec tempor dapibus</a></li>
            </ul>
            
            <div class="cleaner h40"></div>
            
        	<h5>Flickr Stream</h5>
            <ul class="flickr_stream">
                <li><a href="#"><img class="image_frame" src="theme/asset/css/images/tooplate_image_02.png" alt="" /></a></li>
                <li><a href="#"><img class="image_frame" src="theme/asset/css/images/tooplate_image_03.png" alt="" /></a></li>
                <li class="no_margin_right"><a href="#"><img class="image_frame" src="theme/asset/css/images/tooplate_image_04.png" alt="" /></a></li>
                <li><a href="#"><img class="image_frame" src="theme/asset/css/images/tooplate_image_05.png" alt="" /></a></li>
                <li><a href="#"><img class="image_frame" src="theme/asset/css/images/tooplate_image_06.png" alt="" /></a></li>
                <li class="no_margin_right"><a href="#"><img class="image_frame" src="theme/asset/css/images/tooplate_image_07.png" alt="" /></a></li>
            </ul>            
        </div>

        <script type="text/javascript" src="theme/asset/js/jquery-1.4.3.min.js"></script> 
		<script type="text/JavaScript" src="theme/asset/js/slimbox2.js"></script> 
		<script type="text/javascript">
			$(document).ready(function() {
				$('#gallery').Pagination();
			});
		</script>		