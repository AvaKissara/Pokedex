<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="public/css/style.css"> 
	<link rel="stylesheet" href="admin/style.css"> 
	
    <title>Pokedex</title>   

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.8.0/html2pdf.bundle.min.js" integrity="sha512-w3u9q/DeneCSwUDjhiMNibTRh/1i/gScBVp2imNVAMCt6cUHIw6xzhzcPFIaL3Q1EbI2l+nu17q2aLJJLo4ZYg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
    <div class="wrapper">
        <nav class="mega-menu">
            <ul class="mega-menu-main">
                <a href="/" class="navbar-brand"><img src="img/Pokémon_logo.svg.png" alt="" class="d-inline-block align-text-top"></a>
                <li class="lvl-0">
                <a href="#">Champions d'arènes</a>
                <ul class="mega-menu-tab">
                    <li class="lvl-1">
                    <ul class="lvl-2 champ-frise">
                        <li><a href="./champion?nom=Pierre"><img src="https://eternia.fr/public/media//rfvf/champions/art_pierre.jpg" class="img-dress-small" alt=""></a></li>
                        <li><a href="./champion?nom=Ondine"><img src="https://eternia.fr/public/media//rfvf/champions/art_ondine.jpg" class="img-dress-small" alt=""></a></li>
                        <li><a href="./champion?nom=Major Bob"><img src="https://eternia.fr/public/media//rfvf/champions/art_majorbob.jpg" class="img-dress-small" alt=""></a></li>
                        <li><a href="./champion?nom=Erika"><img src="https://eternia.fr/public/media//rfvf/champions/art_erika.jpg" class="img-dress-small" alt=""></a></li>
                        <li><a href="./champion?nom=Koga"><img src="https://eternia.fr/public/media//rfvf/champions/art_koga.jpg" class="img-dress-small" alt=""></a></li>
                        <li><a href="./champion?nom=Morgane"><img src="https://eternia.fr/public/media//rfvf/champions/art_morgane.jpg" class="img-dress-small" alt=""></a></li>
                        <li><a href="./champion?nom=Auguste"><img src="https://eternia.fr/public/media//rfvf/champions/art_auguste.jpg" class="img-dress-small" alt=""></a></li>
                        <li><a href="./champion?nom=Giovanni"><img src="https://eternia.fr/public/media//rfvf/champions/art_giovanni.jpg" class="img-dress-small" alt=""></a></li>
                    </ul>
                    </li>
                </ul>
                </li>
                <li class="lvl-0">
                <a href="/#">Conseil 4</a>
                <ul class="mega-menu-tab">
                <li class="lvl-1">
                    <ul class="lvl-2 conseil-frise">
                        <li><a href="./conseil4?nom=Olga"><img src="https://eternia.fr/public/media//rfvf/champions/art_olga.jpg" class="img-dress-small" alt=""></a></li>
                        <li><a href="./conseil4?nom=Aldo"><img src="https://eternia.fr/public/media//rfvf/champions/art_aldo.jpg" class="img-dress-small" alt=""></a></li>
                        <li><a href="./conseil4?nom=Agatha"><img src="https://eternia.fr/public/media//rfvf/champions/art_agatha.jpg" class="img-dress-small" alt=""></a></li>
                        <li><a href="./conseil4?nom=Peter"><img src="https://eternia.fr/public/media//rfvf/champions/art_peter.jpg" class="img-dress-small" alt=""></a></li>
                        <li><a href="./conseil4?nom=Blue"><img src="https://eternia.fr/public/media//letsgo/fichesperso/blue.jpg" class="img-dress-small" alt=""></a></li>
                    </ul>
                    </li>
                </ul>
                </li>
                <li class="lvl-0">
                    <a href="/pokeball-builder">Boutique</a>
                </li>
                <li class="lvl-0">
                    <a href="admin/login">Espace dresseur</a>
                </li>
                </ul>
                </li>
            </ul>
        </nav>