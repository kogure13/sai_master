<div id="site_title"><h1><a href="#"></a></h1></div>
<div id="tooplate_menu" class="ddsmoothmenu">
    <ul>
        <li>
            <a href="?page=home" class="<?= ($_GET['page'] == 'home') ? 'selected' : '' ?>">Home</a>
        </li>      
        <!-- 
        <ul>
            <li><a href="#">Sub menu 1</a></li>
            <li><a href="#">Sub menu 1</a></li>
            <li><a href="#">Sub menu 1</a></li>
        </ul> 
        -->
        </li>
        <li><a href="?page=gallery" class="<?= ($_GET['page'] == 'gallery') ? 'selected' : '' ?>">Gallery</a></li>                    
        <li><a href="?page=contact" class="<?= ($_GET['page'] == 'contact') ? 'selected' : '' ?>">Contact</a></li>
        <li><a href="?page=login" class="<?= ($_GET['page'] == 'login') ? 'selected' : '' ?>">Login</a></li>
    </ul>
    <br style="clear: left" />
</div>
