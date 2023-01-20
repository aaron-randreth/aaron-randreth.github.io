<!DOCTYPE html>
<html lang="fr">

<head>
  <title>Mes outils | Aaron Randreth</title>
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
  <main class="flex-group">

    <section class="project-section searchable-section">
      <h2 class="section-title flex-full-line">Mes différents langages <span class="highlight">tech</span></h2>
      <div class="flex-full-line flex-center">
        <p class="section-description">
          Les différents langages que je métrise.
        </p>
      </div>

      <article class="project-item select-animation">
        <picture class="project-cover">
          <img class="contain" src="assets/media/languages/laptop.svg" alt="Icon of a laptop">
        </picture>

        <p class="asset-credit">Image provided by Delapouite from <a href="https://game-icons.net">Games Icon</a> under
          <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>
        </p>
        <div class="project-content">
          <ul class="tags highlight">
            <li>languages system</li>
          </ul>
          <h3 class="project-title">Les languages de programmation</h3>
          <p class="project-description">
          <ul>
            <li>Rust</li>
            <li>C/C++</li>
            <li>Java</li>
            <li>Python</li>
          </ul>
          </p>
        </div>
      </article>

      <article class="project-item select-animation">
        <picture class="project-cover">
          <img src="assets/media/languages/aerial-signal.svg" alt="Icon of an antena, to represent the internet">
        </picture>

        <p class="asset-credit">Image provided by Lorc from <a href="https://game-icons.net">Games Icon</a> under <a
            href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a></p>
        <div class="project-content">
          <ul class="tags highlight">
            <li>tech</li>
            <li>jeux</li>
          </ul>
          <h3 class="project-title">Les languages du dévelopement web</h3>
          <p class="project-description">
          <ul>
            <li>Html/Css/Js</li>
            <li>Jquery</li>
            <li>Tailwind</li>
            <li>Bootstrap</li>
          </ul>
          </p>
        </div>
      </article>

      <article class="project-item select-animation">
        <picture class="project-cover">
          <img src="assets/media/languages/passport.svg" alt="Icon of a pile of papers, to represent data science">
          <p class="asset-credit">Image provided by Lorc from <a href="https://game-icons.net">Games Icon</a> under <a
              href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a></p>

        </picture>

        <div class="project-content">
          <ul class="tags highlight">
            <li>tech</li>
            <li>livres</li>
            <li>webnovel</li>
          </ul>
          <h3 class="project-title">Les outils de la data science</h3>
          <p class="project-description">
          <ul>
            <li>Python numpy, and panda</li>
            <li>SQL</li>
          </ul>
          </p>
        </div>
      </article>

    </section>


  </main>
  #include "partials/footer.html"
</body>

</html>
