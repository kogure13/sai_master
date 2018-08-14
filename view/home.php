        <div id="slider-wrapper">

            <div id="slider" class="nivoSlider">
                <img src="theme/asset/css/images/slider/toystory.jpg" alt="" />
                <a href="http://dev7studios.com"><img src="theme/asset/css/images/slider/up.jpg" alt="" title="This is an example of a caption" /></a>
                <img src="theme/asset/css/images/slider/walle.jpg" alt="" />
                <img src="theme/asset/css/images/slider/nemo.jpg" alt="" title="#htmlcaption" />
            </div>
            <div id="htmlcaption" class="nivo-html-caption">
                <strong>This</strong> is an example of a <em>HTML</em> caption with <a href="#">a link</a>.
            </div>

        </div>

        <div class="col one_third no_margin_right">
            <a href="#"><img src="theme/asset/css/images/ad_300.jpg" alt="image" /></a>
        </div>        

        <div id="content" class="float_l">
        
            <h2>Judul Sambutan</h2>
            <div class="image_frame image_fl"><span></span><img src="theme/asset/css/images/tooplate_image_01.jpg" alt="" /></div>
            <p><em>This template is provided by tooplate website. Duis ornare nibh non libero blandit et dapibus quam tincidunt. Duis venenatis elit id tellus blandit adipiscing.</em></p>
            <p>Donec in erat id libero pharetra condimentum sed nec ligula. Vivamus elementum nibh elit. Etiam malesuada, mauris id porttitor sollicitudin, arcu eros vestibulum nibh, sed ornare erat risus et justo. Curabitur consequat sagittis ultrices. Suspendisse a dolor nisi. Duis semper, orci eu sollicitudin luctus, nibh leo bibendum lectus, ac lobortis lorem sapien quis ante.</p>
            <div class="image_frame image_fr"><span></span><img src="theme/asset/css/images/tooplate_image_02.jpg" alt="" /></div>
            <p>Aenean vitae elit neque. Fusce non tristique odio. Suspendisse metus mi, fringilla sit amet condimentum sed, elementum non dolor. Nulla magna elit, posuere at pulvinar id, suscipit porttitor neque. Pellentesque feugiat adipiscing mi nec faucibus. Suspendisse feugiat porttitor fermentum. Praesent lorem urna, dapibus vitae pellentesque id, ullamcorper quis ligula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce a purus sit amet dui placerat tincidunt id quis nibh.</p>

        <div class="cleaner h40"></div>

        <div class="col one_third">
                <h5>Services</h5>
                <ul class="tmo_list">
                    <li>Integer placerat dolor vel</li>
                    <li>Condimentum vulputate augue</li>
                    <li>Felis pharetra felis sed</li>
                    <li>Tortor mi in massa donec</li>
                    <li>Dolor vel condimentum</li>
                    <li>Augue felis pharetra felis sed</li>
                    <li>Vulputate tortor mi in massa</li>
                </ul>
            </div>
            <div class="col one_third no_margin_right">
                <h5>Flickr Stream</h5>
                <ul class="flickr_stream">
                    <li><a href="#"><img class="image_frame" src="images/tooplate_image_02.png" alt="" /></a></li>
                    <li><a href="#"><img class="image_frame" src="images/tooplate_image_03.png" alt="" /></a></li>
                    <li class="no_margin_right"><a href="#"><img class="image_frame" src="images/tooplate_image_04.png" alt="" /></a></li>
                    <li><a href="#"><img class="image_frame" src="images/tooplate_image_05.png" alt="" /></a></li>
                    <li><a href="#"><img class="image_frame" src="images/tooplate_image_06.png" alt="" /></a></li>
                    <li class="no_margin_right"><a href="#"><img class="image_frame" src="images/tooplate_image_07.png" alt="" /></a></li>
                </ul>
            </div>        
        </div>

        <div id="sidebar" class="float_r">                                
            <h5>Articel</h5>
            <div class="rp_pp">
                <a href="#">Integer venenatis pharetra magna vitae ultrices</a>
                <p>Feb 23, 2048 - 20 Comments</p>
                <div class="cleaner"></div>
            </div>
            <div class="rp_pp">
                <a href="#">Vestibulum quis nulla nunc, nec lobortis nunc.</a>
                <p>Feb 16, 2048 - 20 Comments</p>
                <div class="cleaner"></div>
            </div>
            <div class="rp_pp">
                <a href="#">Pellentesque convallis tristique mauris.</a>
                <p>Feb 10, 2048 - 20 Comments</p>
                <div class="cleaner"></div>
            </div>

            <div class="cleaner h40"></div>

            <h5>News update</h5>
            <ul class="demo">
                <li class="news_item rp_pp">
                    <a href="#">Integer venenatis pharetra magna vitae ultrices</a>
                    <p>Feb 23, 2048 - 20 Comments</p>
                    <div class="cleaner"></div>    
                </li>
                <li class="news_item rp_pp">
                    <a href="#">Vestibulum quis nulla nunc, nec lobortis nunc.</a>
                    <p>Feb 16, 2048 - 20 Comments</p>
                    <div class="cleaner"></div>    
                </li>
                <li class="news_item rp_pp">
                    <a href="#">Pellentesque convallis tristique mauris.</a>
                    <p>Feb 10, 2048 - 20 Comments</p>
                    <div class="cleaner"></div>    
                </li>
            </ul>            
            
        </div>        
               
        <div class="cleaner"></div>

<script type="text/javascript" src="theme/asset/js/jquery-1.4.3.min.js"></script>
<script type="text/javascript" src="theme/asset/js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider({
            animSpeed: 500,
            pauseTime: 5000,
            controlNavThumbs: false
        });
    });
</script>