<!DOCTYPE html>
<html lang="fr">

<head>
  <title>Aaron Randreth</title>
  <meta name="author" content="Aaron Randreth">
  <meta name="description"
    content="Le site personnel de Aaron Randreth, un étudiant en programmation informatique, un artiste audiovisuel, et un écrivain.">
  <meta name="keywords" content="technologie, informatique, art, musique, romans">

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="icon" type="image/x-icon" href="favicon.png">

  <link href="css/reset.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link href="css/navbar.css" rel="stylesheet">
  <link href="css/footer.css" rel="stylesheet">

  <script src="js/navbar.js"></script>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Kenia&display=swap" rel="stylesheet">

  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
</head>

<body>
  #include "partials/navbar.html"

  <main class="about-container flex-group article">
    <nav id="TOC" role="doc-toc">
      <ul>
        <li><a href="#notre-concept" id="toc-notre-concept">Notre
            Concept</a></li>
        <li><a href="#présentation-du-site" id="toc-présentation-du-site">Présentation du Site</a>
          <ul>
            <li><a href="#à-noter" id="toc-à-noter">À noter</a></li>
            <li><a href="#la-fin-du-début-comment-jouer" id="toc-la-fin-du-début-comment-jouer">La fin du début |
                Comment jouer
                ?</a></li>
          </ul>
        </li>
        <li><a href="#nos-technologies" id="toc-nos-technologies">Nos
            Technologies</a>
          <ul>
            <li><a href="#le-front-end-leaflet-et-mapillary" id="toc-le-front-end-leaflet-et-mapillary">Le front-end:
                Leaflet et
                Mapillary</a></li>
            <li><a href="#le-back-end-php-et-sql" id="toc-le-back-end-php-et-sql">Le
                back-end: PHP et SQL</a></li>
          </ul>
        </li>
        <li><a href="#notre-processus-de-création" id="toc-notre-processus-de-création">Notre processus de création</a>
          <ul>
            <li><a href="#création-dun-cahier-des-charges" id="toc-création-dun-cahier-des-charges">Création d’un cahier
                des
                charges</a></li>
            <li><a href="#la-conception-de-la-base-de-données" id="toc-la-conception-de-la-base-de-données">La
                conception de la base de
                données</a></li>
            <li><a href="#création-de-la-spécification-de-notre-api"
                id="toc-création-de-la-spécification-de-notre-api">Création de la
                spécification de notre API</a></li>
            <li><a href="#implémentation-en-parallèle-du-front-et-back-end"
                id="toc-implémentation-en-parallèle-du-front-et-back-end">Implémentation
                en parallèle du front et back end</a></li>
          </ul>
        </li>
        <li><a href="#bilan" id="toc-bilan">Bilan</a>
          <ul>
            <li><a href="#nos-difficultés-et-ce-que-lon-a-appris" id="toc-nos-difficultés-et-ce-que-lon-a-appris">Nos
                difficultés et ce
                que l’on a appris</a></li>
            <li><a href="#le-résultat-final" id="toc-le-résultat-final">Le résultat
                final</a></li>
          </ul>
        </li>
      </ul>
    </nav>
    <h1 id="notre-concept">Notre Concept</h1>
    <p>Geochercheur est un jeu inspiré de GeoGuessr. Dans le concept de
      base, le joueur est placé aléatoirement dans un endroit spécifique dans
      le monde et son objectif est de deviner sa position sur une carte. Nous
      avons un peu repris l’idée. Mais à la place de le placer aléatoirement,
      le joueur pourra choisir un certain thème de parcours. Dans ce parcours
      il y aura plusieurs questions. Tout à la manière de GeoGuessr, le joueur
      de GeoChercheur possèdera un visuel sur son entourage et pourra se
      déplacer. Mais le but final sera quand même de placer le marqueur le
      plus près possible de la bonne position sur la carte. Ainsi un certain
      nombre de point sera calculé selon cette distance.</p>
    <h1 id="présentation-du-site">Présentation du Site</h1>
    <figure>
      <img src="https://cdn.discordapp.com/attachments/1041750500003029165/1060625969490178058/image.png"
        alt="” Page d’accueil” : Cette page est la première que le joueur rencontrera lorsqu’il ira sur le site. Son objectif est de donner envie à la personne de jouer au jeu. Dessus on peut y apercevoir un carrousel avec des commentaires de joueur et un message de bienvenue." />
      <figcaption aria-hidden="true">” Page d’accueil” : Cette page est la
        première que le joueur rencontrera lorsqu’il ira sur le site. Son
        objectif est de donner envie à la personne de jouer au jeu. Dessus on
        peut y apercevoir un carrousel avec des commentaires de joueur et un
        message de bienvenue.</figcaption>
    </figure>
    <figure>
      <img src="https://cdn.discordapp.com/attachments/1041750500003029165/1060626053044899860/image.png"
        alt="“Page de connexion” : Cette page est composée d’un formulaire permettant à un joueur déjà inscrit de se connecter et ainsi de continuer de jouer dans sa session." />
      <figcaption aria-hidden="true">“Page de connexion” : Cette page est
        composée d’un formulaire permettant à un joueur déjà inscrit de se
        connecter et ainsi de continuer de jouer dans sa session.</figcaption>
    </figure>
    <figure>
      <img src="https://cdn.discordapp.com/attachments/1041750500003029165/1060626152034676837/image.png"
        alt="“Page d’inscription” : Cette page est composée d’un formulaire mais cette fois-ci pour s’inscrire au site. Il y a deux paramètres à rentrer le pseudonyme du joueur ainsi que son mot de passe qui doit correspondre à certains critères. Il a aussi la possibilité de choisir une photo de profil de son choix. Il doit aussi cocher une case pour accepter notre politique de confidentialité." />
      <figcaption aria-hidden="true">“Page d’inscription” : Cette page est
        composée d’un formulaire mais cette fois-ci pour s’inscrire au site. Il
        y a deux paramètres à rentrer le pseudonyme du joueur ainsi que son mot
        de passe qui doit correspondre à certains critères. Il a aussi la
        possibilité de choisir une photo de profil de son choix. Il doit aussi
        cocher une case pour accepter notre politique de
        confidentialité.</figcaption>
    </figure>
    <figure>
      <img src="https://cdn.discordapp.com/attachments/1041750500003029165/1061635169670410340/image.png"
        alt="“Page des parcours” : Cette page est la première page que voit le joueur lorsqu’il vient de se connecter. Elle lui montre les différents parcours de jeu disponible et possède une barre de navigation pour pouvoir se déplacer entre les différentes pages créer et le leaderboard." />
      <figcaption aria-hidden="true">“Page des parcours” : Cette page est la
        première page que voit le joueur lorsqu’il vient de se connecter. Elle
        lui montre les différents parcours de jeu disponible et possède une
        barre de navigation pour pouvoir se déplacer entre les différentes pages
        créer et le leaderboard.</figcaption>
    </figure>
    <figure>
      <img src="https://cdn.discordapp.com/attachments/1041750500003029165/1060628803182919830/image.png"
        alt="“Page de jeu (sans validation)” : Cette page est un exemple de page de jeu lorsqu’on démarre un parcours. Le joueur a une vue d’ensemble sur son environnement et possède une minicarte sur la droite pour pouvoir poser le marqueur et le valider." />
      <figcaption aria-hidden="true">“Page de jeu (sans validation)” : Cette
        page est un exemple de page de jeu lorsqu’on démarre un parcours. Le
        joueur a une vue d’ensemble sur son environnement et possède une
        minicarte sur la droite pour pouvoir poser le marqueur et le
        valider.</figcaption>
    </figure>
    <figure>
      <img src="https://cdn.discordapp.com/attachments/1041750500003029165/1060629489832439858/image.png"
        alt="“Page de jeu (avec validation)” : Cette page est un exemple de page de jeu lorsqu’on vient de valider la position du marqueur. Lorsqu’on valide la position, le jeu laisse 5 secondes au joueur pour voir la correction et passe à la deuxième question." />
      <figcaption aria-hidden="true">“Page de jeu (avec validation)” : Cette
        page est un exemple de page de jeu lorsqu’on vient de valider la
        position du marqueur. Lorsqu’on valide la position, le jeu laisse 5
        secondes au joueur pour voir la correction et passe à la deuxième
        question.</figcaption>
    </figure>
    <figure>
      <img src="https://cdn.discordapp.com/attachments/1041750500003029165/1060627311013146695/image.png"
        alt="“Page de fin de Parcours” : Cette page est un exemple de fin de parcours. Il apparait lorsque le joueur a fini toutes les questions d’un parcours. Le score est affiché avec un message de fin." />
      <figcaption aria-hidden="true">“Page de fin de Parcours” : Cette page
        est un exemple de fin de parcours. Il apparait lorsque le joueur a fini
        toutes les questions d’un parcours. Le score est affiché avec un message
        de fin.</figcaption>
    </figure>
    <figure>
      <img src="https://cdn.discordapp.com/attachments/1041750500003029165/1061635170018533426/image.png"
        alt="“Page de création” : Cette page est la page de création de parcours pour les clients. Elle permet aux clients de choisir les questions et les paramètres du parcours qu’ils créent." />
      <figcaption aria-hidden="true">“Page de création” : Cette page est la
        page de création de parcours pour les clients. Elle permet aux clients
        de choisir les questions et les paramètres du parcours qu’ils
        créent.</figcaption>
    </figure>
    <figure>
      <img src="https://cdn.discordapp.com/attachments/1041750500003029165/1061636964853493860/image.png"
        alt="“Page de Leaderboard” : Cette page est un leaderboard qui répertorie tous les joueurs de GeoChercheur et leur score total. Un menu combo box permet de sélectionner le classement pour un seul parcours" />
      <figcaption aria-hidden="true">“Page de Leaderboard” : Cette page est un
        leaderboard qui répertorie tous les joueurs de GeoChercheur et leur
        score total. Un menu combo box permet de sélectionner le classement pour
        un seul parcours</figcaption>
    </figure>
    <figure>
      <img src="https://cdn.discordapp.com/attachments/1041750500003029165/1061635170614128701/image.png"
        alt="“Page de Leaderboard”: Cette version de la page a un classement de parcours séléctionné." />
      <figcaption aria-hidden="true">“Page de Leaderboard”: Cette version de
        la page a un classement de parcours séléctionné.</figcaption>
    </figure>
    <h2 id="à-noter">À noter</h2>
    <p>Les screenshots de la version mobile du site ont été omis pour ne pas
      encombrer le rapport, cependant le front-end est entièrement responsive
      et nous avons même joué à notre jeu sur un vrai téléphone grace au
      serveur local Uwamp/xampp.</p>
    <h2 id="la-fin-du-début-comment-jouer">La fin du début | Comment jouer
      ?</h2>
    <p>Et voilà! La présentation du site est terminée, et vous savez tout ce
      qu’il y a à savoir pour lancer le projet. Nous parlons plus en détail
      des aspects techniques et de la conception du jeu dans la suite du
      rapport, mais si vous êtes impatient de jouer il vous suffit de lancer
      Uwamp, et ensuite d’importer le fichier <code>SQL/database</code> puis
      <code>SQL/insert</code> afin de mettre en place les tables et les
      parcours de démonstration.
    </p>
    <h1 id="nos-technologies">Nos Technologies</h1>
    <p>Pour la création de ce site, un de nos objectifs a été de baser les
      fondations de notre jeu sur des technologies de l’Open Data. Après
      beaucoup de recherches et de difficultés à apprendre à utiliser les
      différentes solutions disponibles, nous avons réussi à dépasser notre
      objectif et à utiliser l’Open Data pour l’entièreté du site. Pour cela
      nous avons maitrisé les outils de leaflet, mapillary, et Uwamp/Xampp
      avec MySql.</p>
    <h2 id="le-front-end-leaflet-et-mapillary">Le front-end: Leaflet et
      Mapillary</h2>
    <p>La page centrale de notre applicatif <code>jeu.html</code>, est
      portée par deux technologies combinées.</p>
    <p>Nous utilisons une carte leaflet comme outil principal d’interaction
      pour le joueur. Il peut y explorer la carte, et déposer un marqueur
      lorsqu’il veut donner une réponse. Nous l’informons ensuite sur cette
      carte de sa vraie position, en lui affichant deux marqueurs et une ligne
      entre les deux points.</p>
    <p>L’outil principal d’exploration quand à lui est Mapillary, avec
      lequel on affiche la streetview qui sert de d’indice au joueur pour se
      repérer.</p>
    <h2 id="le-back-end-php-et-sql">Le back-end: PHP et SQL</h2>
    <p>Notre back-end est structuré en deux couches, une couche base de
      données qui stocke toutes les informations requises par le jeu; et une
      couche API qui cache au front-end le fonctionnement du back-end et
      vice-versa, tout en leur permettant de communiquer entre eux.</p>
    <h1 id="notre-processus-de-création">Notre processus de création</h1>
    <h2 id="création-dun-cahier-des-charges">Création d’un cahier des
      charges</h2>
    <p>La première chose que nous avons faite a été de chercher un idée à
      mettre en place. Après avoir choisi de reproduire Géogussr nous nous
      sommes penchés sur le fonctionalités basiques que nous pensions être
      nécessaires pour avoir une expérience complète. Nous sommes tombés
      d’accord sur trois fonctionalités de base:</p>
    <ul>
      <li>la capacité pour le client d’explorer son environnement.</li>
      <li>la capacité pour le client de jouer/créer des parcours.</li>
      <li>la capacité de s’inscrire et de se connecter pour les clients.</li>
    </ul>
    <h2 id="la-conception-de-la-base-de-données">La conception de la base de
      données</h2>
    <p>Après nous être décidés sur les tâches que nous devions accomplir,
      nous avons réfléchi à la structure de données qui soit la plus flexible
      possible et qui nous permette de remplir le cahier des charges que nous
      nous sommes donnés. Après plusieurs itérations nous sommes arrivés sur
      le modèle relationnel suivant:</p>
    <figure>
      <img src="https://cdn.discordapp.com/attachments/1041750500003029165/1060869810587697152/init2.jpg"
        alt="Schéma du modèle relationnel initial" />
      <figcaption aria-hidden="true">Schéma du modèle relationnel
        initial</figcaption>
    </figure>
    <p>Nous avons affiné ce modèle au fil du développement. Pour arriver au
      schéma suivant:</p>
    <figure>
      <img src="https://cdn.discordapp.com/attachments/1041750500003029165/1060823090289971200/image.png"
        alt="Schéma du modèle relationnel final" />
      <figcaption aria-hidden="true">Schéma du modèle relationnel
        final</figcaption>
    </figure>
    <p>Les tables présentes dans cette base de données finale sont :</p>
    <ul>
      <li>Client qui regroupe les informations du client ( idClient, pseudo,
        icon et mot de passe)</li>
      <li>Parcours qui regroupe le descriptif d’une partie de jeu (IdParcours,
        nom du parcours, image du parcours, description du parcours)</li>
      <li>Question qui regroupe toutes les questions du jeu c’est-à-dire les
        coordonnées d’un lieu (latitude,longitude)</li>
      <li>Compose qui lie une question à un parcours (idQuestion,
        idParcours)</li>
      <li>Historique qui enregistre chaque partie jouée par le client</li>
      <li>ScoreTotal qui enregistre le score total des clients pour chaque
        parcours Et contient aussi un ensemble de procédures et triggers comme
        addClient, ou addComposition, qui permettent de cacher au PHP le
        fonctionnement exact de la base de données.</li>
    </ul>
    <h2 id="création-de-la-spécification-de-notre-api">Création de la
      spécification de notre API</h2>
    <p>Après avoir effectué la conception de la base de données, nous nous
      sommes mis d’accord sur une “spécification d’API”, avec plusieurs
      fichiers JSON qui étaient utilisés à la place du lien api final pour le
      front end, et qui servaient d’exemples de résultat à finir pour le
      back-end.</p>
    <h2 id="implémentation-en-parallèle-du-front-et-back-end">Implémentation
      en parallèle du front et back end</h2>
    <p>Grace aux fichiers JSON qui servaient de spécifications, nous avons
      pu développer le front-end et le back-end en parallèle, avant même que
      les vraies implémentations soient finies. Nous avons ensuite juste
      remplacé le lien des fichiers JSON avec les liens vers les fichiers php
      api dans nos requêtes JS.</p>
    <h1 id="bilan">Bilan</h1>
    <h2 id="nos-difficultés-et-ce-que-lon-a-appris">Nos difficultés et ce
      que l’on a appris</h2>
    <p>Les plus grandes difficultés que l’on a eue lors de ce projet ont été
      l’utilisation de PHP et de Mapillary.</p>
    <p>Php étant un langage que nous avons récemment appris contrairement à
      l’HTML/CSS/JS, nous avons dû prendre un peu plus de temps pour nous y
      acclimater. Son utilisation assez importante dans le projet, comme
      intermédiaire entre le front et le back-end, nous a permis de le
      maîtriser beaucoup mieux.</p>
    <p>Mapillary quant à lui nous a forcé à mener beaucoup de recherches et
      de faire de nombreux d’essais avant de réussir à l’utiliser. En effet ce
      service n’étant pas très connu, les ressources tierces sur l’utilisation
      de son API étaient peu nombreuses. Nous avons donc dû utiliser
      uniquement la documentation officielle, qui n’était pas centralisée ni
      complète. Pour rendre la tache plus difficile, plusieurs versions de
      l’API étaient disponibles, avec plusieurs versions de la documentation
      incompatible entre elles. Un exemple flagrant de l’instabilité de cette
      API, est le fait que Mapillary ait fait un changement quelques jours
      avant la présentation, ce qui a rendu les exemples de la documentation
      et notre application non fonctionnelle. Cela nous a donc forcé à réparer
      ce changement à la dernière minute.</p>
    <h2 id="le-résultat-final">Le résultat final</h2>
    <p>Nous sommes très satisfaits du résultat final, et de ce que l’on a
      appris avec ce projet. Nous avons implémenté toutes les fonctionnalités
      que nous souhaitions, et obtenu des compétences versatiles comme la
      bonne lecture de documentation d’API tierces.</p>
    <p>En rétrospective, l’échelle du projet a cependant été un peu trop
      importante ce qui nous a donné des difficultés pour le finir
      simultanément avec nos autres projets.</p>
  </main>
  #include "partials/footer.html"
</body>
