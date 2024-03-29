<!DOCTYPE html>
<html lang="fr">

#define TITLE Jeu Hex
#define DESC Quoi de mieux que les classiques du Jeu Vidéo pour passer du bon temps ? \
Nous avons reproduit de nombreux jeux iconiques comme le Démineur, Hex, et 6-qui prends. Tout cela \
pour votre plus grand plaisir :)(et aussi pour nous entraîner à la programmation).

#include "partials/head.html"

<body>
  #include "partials/navbar.html"

  <main class="about-container flex-group article">
    <h1 id="projet-hex-du-groupe-203">Rapport de Projet Hex</h1>
    <p><strong>Membres</strong> : Yousrah SOULE, Aaron RANDRETH, Ilo
      RABIARIVELO, Adrien DEU </p>
    <p><strong>Groupe</strong> : 203</p>

    <nav id="TOC" role="doc-toc">
      <ul>
        <li><a href="#résumé-de-notre-implémentation" id="toc-résumé-de-notre-implémentation">Résumé de notre
            implémentation</a></li>
        <li><a href="#notre-structure-de-projet" id="toc-notre-structure-de-projet">Notre structure de projet</a>
          <ul>
            <li><a href="#quelques-points-à-noter" id="toc-quelques-points-à-noter">Quelques points à noter</a></li>
            <li><a href="#le-diagramme-uml" id="toc-le-diagramme-uml">le diagramme
                UML</a></li>
          </ul>
        </li>
        <li><a href="#ce-que-lon-pourrais-rajouter" id="toc-ce-que-lon-pourrais-rajouter">Ce que l’on pourrais
            rajouter</a></li>
        <li><a href="#synthèse-de-nos-tests-unitaires" id="toc-synthèse-de-nos-tests-unitaires">Synthèse de nos
            tests
            unitaires</a></li>
        <li><a href="#bilan-du-projet" id="toc-bilan-du-projet">Bilan du
            projet</a>
          <ul>
            <li><a href="#nos-difficultés" id="toc-nos-difficultés">Nos
                difficultés</a></li>
            <li><a href="#ce-que-le-projet-nous-a-appris" id="toc-ce-que-le-projet-nous-a-appris">Ce que le projet
                nous a
                appris</a></li>
            <li><a href="#le-résultat-final" id="toc-le-résultat-final">Le résultat
                final</a></li>
          </ul>
        </li>
      </ul>
    </nav>

    <h2 id="résumé-de-notre-implémentation">Résumé de notre
      implémentation</h2>
    <p>Dans ce projet nous avons implémenté le jeu Hex, avec un interface
      sur la ligne de commande, et deux modes de jeux: “joueur” où deux
      joueurs s’affrontent, et “seul” où un seul joueur fait face à un
      ordinateur. Cette ordinateur n’a ici pas d’algorithme complexe, mais
      comme nous le montrerons dans ce rapport, il est très simple grâce à
      notre architecture de créer un robot plus complexe.</p>
    <h2 id="notre-structure-de-projet">Notre structure de projet</h2>
    <h3 id="quelques-points-à-noter">Quelques points à noter</h3>
    <p>Pour le jeu de hex, nous avons repéré deux axes de changements
      principaux: les joueurs, et le plateau. Pour les joueurs, notre jeu
      simple contient deux types de joueurs, mais on peut très bien imaginer
      des expansions qui créeraient des robots plus intelligents, ou des
      joueurs humains qui jouent un coup aléatoire tous les n coups. Pour le
      plateau nous avons utilisé un tableau à deux dimensions mais il est tout
      à fait possible que dans le future qu’une implémentation avec une
      structure de donnée différente soit requise.</p>
    <p>Nous avons donc créé des interfaces et des fabriques pour ces deux
      types de classes. Afin de limiter le plus possible la dépendance de
      l’ihm, qui évolue plutôt lentement, à ceux-ci.</p>
    <p>Nous avons utilisé le pattern de délégation sur notre classe Plateau,
      afin de nous permettre de facilement changer les règles du jeu, qui
      pourraient évoluer à un rythme différent de l’implémentation de
      plateau.</p>
    <h3 id="le-diagramme-uml">le diagramme UML</h3>
    <figure>
      <img
        src="https://cdn.discordapp.com/attachments/1041750500003029165/1059522049816666223/VLBDQlCm4BplKonyX-yKquOUImdzAKaXDBGF43RErb4YIwvibPGqxrvanHLQGdmmQ6TMCxkQITkHwtojuJ--Drfrg4ndyGORghY5yCVnVWpjJfc67DKzC2TNAOFNLwB-jE_O6T8FLbk7bQDlGRYtRiqkmYjDvGu03DNSDbGogasD_nxx3m-0uIirjItEflDutB8lPWjD7PF7sw8Go8lrxDq0O48MofgS7t0x6jt5ncTQEVNfELvmYN4I1pX2vdqRfPFzmRkuUYZ7uwjRAr6Q-fgK0J7HJr7aBHALtOdSporTPFHpZ2E8-TYduS9csVWQmru1GsROVGIQsAJ0n0upy6mncKbEDhmVd1m0C_eRLvgNNwhih78CV_d9wyk-68maHb8NpvQ0WPD2SPfUwiRtkA2PnpZICvsKRsb3vlcoIYAUsqrOwuJDsjVw5m00.png"
        alt="Notre diagramme UML" />
      <figcaption aria-hidden="true">Notre diagramme UML</figcaption>
    </figure>
    <h2 id="ce-que-lon-pourrais-rajouter">Ce que l’on pourrais rajouter</h2>
    <ul>
      <li>Grace à la l’interface IRegle_victoire, sans modifier le reste du
        code, nous pouvons modifier les règles du jeux en créant une nouvelle
        classe qui l’implémente. Cette classe pourrait par exemple faire gagner
        un joueur si il lie deux côté adjacent ou transformer les cases
        hexagonales en carré.</li>
      <li>En créant de nouvelles classes joueurs puis en modifiant la
        fabrique, nous pouvons augmenter la difficulté du mode “seul” en faisant
        un robot intelligent.</li>
      <li>En créant de nouvelles classes plateau puis en modifiant la
        fabrique, nous pourrions rendre le jeu plus rapide mais plus gourmand en
        espace, ou vice-versa</li>
      <li>En modifiant uniquement le switch case de la classe IHM nous pouvons
        créer d’autres modes de jeu, comme un mode robot contre robot.</li>
      <li>Comme l’IHM est isolé de toutes les autres classes, pour rajouter
        d’autres types d’IHM comme un GUI il suffit de créer une classe sans
        modifier le reste du programme.</li>
    </ul>
    <h2 id="synthèse-de-nos-tests-unitaires">Synthèse de nos tests
      unitaires</h2>
    <p>Pour les joueurs nous avons des tests de cohérence assez simple pour
      s’assurer que:</p>
    <ul>
      <li>
        <p>Les noms sont ceux attendus; le nom donné pour l’humain, et le -
          nom séquentiel (R0, R1..) pour le robot.</p>
      </li>
      <li>
        <p>Les joueurs jouent bien au bon endroit</p>
      </li>
    </ul>
    <p>Pour le plateau nous avons vérifié que:</p>
    <ul>
      <li>
        <p>Le plateau s’affiche comme voulu.</p>
      </li>
      <li>
        <p>La fonctionnalité de recréation d’un plateau à partir d’un état
          de jeu déjà commencé fonctionne.</p>
      </li>
      <li>
        <p>La validité ou la possibilité de placer un pion sur le
          plateau.</p>
      </li>
      <li>
        <p>Agagne fonctionne pour tout les joueurs, dans le plus de
          scénarios divers possibles pour essayer d’éviter les cas
          spéciaux.</p>
      </li>
    </ul>
    <h2 id="bilan-du-projet">Bilan du projet</h2>
    <h3 id="nos-difficultés">Nos difficultés</h3>
    <p>Un des points sur lequel nous avons passé le plus de temps sur le
      projet a été la gestion des dépendances. Dès le début avec les
      différents packages nous avons créé des interfaces, pour inverser les
      dépendances et éviter à l’IHM d’être dépendant des classes concrètes.
      Cependant, à cause de la différence de comportement entre le joueur
      humain qui a besoin d’un dialogue de l’IHM et le joueur robot qui n’en a
      pas besoin, nous avons finit par avoir des dépendances textuelles
      <!--   néfastes.: comme illustré ci-dessous:</p> -->
      <!-- <div class="sourceCode" id="cb1"> -->
      <!--   <pre class="sourceCode java"><code class="sourceCode java"><span id="cb1-1"><a href="#cb1-1" aria-hidden="true" -->
      <!--           tabindex="-1"></a></span> -->
      <!--       <span id="cb1-2"><a href="#cb1-2" aria-hidden="true" tabindex="-1"></a><span class="cf">if</span> <span -->
      <!--           class="op">(</span>j1<span class="op">.</span><span class="fu">getClass</span><span -->
      <!--           class="op">().</span><span class="fu">getName</span><span class="op">().</span><span -->
      <!--           class="fu">equals</span><span class="op">(</span><span -->
      <!--           class="st">&quot;joueur.JoueurHumain&quot;</span><span class="op">))</span> <span -->
      <!--           class="op">{</span></span> -->
      <!--       <span id="cb1-3"><a href="#cb1-3" aria-hidden="true" tabindex="-1"></a></span> -->
      <!--       <span id="cb1-4"><a href="#cb1-4" aria-hidden="true" tabindex="-1"></a> <span class="bu">System</span><span -->
      <!--           class="op">.</span><span class="fu">out</span><span class="op">.</span><span -->
      <!--           class="fu">println</span><span class="op">(</span>j1<span class="op">.</span><span -->
      <!--           class="fu">getNom</span><span class="op">()</span> <span class="op">+</span> <span class="st">&quot; : -->
      <!--           Saisir les coordonnées du pion à poser</span></span> -->
      <!--       <span id="cb1-5"><a href="#cb1-5" aria-hidden="true" tabindex="-1"></a> sur le plateau <span -->
      <!--           class="op">:</span><span class="st">&quot;);</span></span> -->
      <!--       <span id="cb1-6"><a href="#cb1-6" aria-hidden="true" tabindex="-1"></a></span> -->
      <!--       <span id="cb1-7"><a href="#cb1-7" aria-hidden="true" tabindex="-1"></a> <span class="bu">String</span> coord -->
      <!--         <span class="op">=</span> sc<span class="op">.</span><span class="fu">next</span><span -->
      <!--           class="op">();</span></span> -->
      <!--       <span id="cb1-8"><a href="#cb1-8" aria-hidden="true" tabindex="-1"></a></span> -->
      <!--       <span id="cb1-9"><a href="#cb1-9" aria-hidden="true" tabindex="-1"></a> j1<span class="op">.</span><span -->
      <!--           class="fu">jouer</span><span class="op">(</span>coord<span class="op">,</span> plateau<span -->
      <!--           class="op">);</span> <span class="op">}</span></span></code></pre> -->
      <!-- </div> -->
      <!-- <p>Pour régler cela nous avons rajouté une méthode dans l’interface -->
      <!--   IJoueur:</p> -->
      <!-- <div class="sourceCode" id="cb2"> -->
      <!--   <pre class="sourceCode java"><code class="sourceCode java"><span id="cb2-1"><a href="#cb2-1" aria-hidden="true" -->
      <!--           tabindex="-1"></a></span> -->
      <!--       <span id="cb2-2"><a href="#cb2-2" aria-hidden="true" tabindex="-1"></a><span class="kw">public</span> <span -->
      <!--           class="dt">boolean</span> <span class="fu">needs_input</span><span class="op">();</span></span></code> -->
      <!--   </pre> -->
      <!-- </div> -->
      <!-- <p>qui nous permet de généraliser le code et d’éviter de rendre l’IHM -->
      <!--   dépendant à une implémentation spécifique:</p> -->
      <!-- <div class="sourceCode" id="cb3"> -->
      <!--   <pre class="sourceCode java"><code class="sourceCode java"><span id="cb3-1"><a href="#cb3-1" aria-hidden="true" -->
      <!--           tabindex="-1"></a> <span class="cf">if</span> <span class="op">(</span>j1<span class="op">.</span><span -->
      <!--           class="fu">needs_input</span><span class="op">())</span></span> -->
      <!--       <span id="cb3-2"><a href="#cb3-2" aria-hidden="true" tabindex="-1"></a> <span class="co">// saisie des -->
      <!--           coordonées par le joeur</span></span> -->
      <!--       <span id="cb3-3"><a href="#cb3-3" aria-hidden="true" tabindex="-1"></a></span> -->
      <!--       <span id="cb3-4"><a href="#cb3-4" aria-hidden="true" tabindex="-1"></a> j1<span class="op">.</span><span -->
      <!--           class="fu">jouer</span><span class="op">()</span></span></code></pre> -->
      <!-- </div> -->
    <p>Un aspect que nous n’avons pas réussi à résoudre a été les
      dépendances lié aux fabriques. Même si l’IHM n’est pas du tout
      dépendante des différentes classes Joueurs, et Plateau, elle est
      dépendante des classes concrètes des fabriques. Cette dépendance étant
      cependant une dépendance de création, à un endroit très simple à
      modifier, elle n’est pas énormément néfaste.</p>
    <!-- <p>Les deux attributs de IHM, où se trouve cette dépendance:</p> -->
    <!-- <div class="sourceCode" id="cb4"> -->
    <!--   <pre class="sourceCode java"><code class="sourceCode java"><span id="cb4-1"><a href="#cb4-1" aria-hidden="true" -->
    <!--           tabindex="-1"></a></span> -->
    <!--       <span id="cb4-2"><a href="#cb4-2" aria-hidden="true" tabindex="-1"></a> <span class="kw">private</span> <span -->
    <!--           class="dt">static</span> IFabriquePlateau fplateau <span class="op">=</span> <span class="kw">new</span> -->
    <!--         <span class="fu">FabriquePlateau</span><span class="op">();</span></span> -->
    <!--       <span id="cb4-3"><a href="#cb4-3" aria-hidden="true" tabindex="-1"></a> <span class="kw">private</span> <span -->
    <!--           class="dt">static</span> IFabriqueJoueur fjoueur <span class="op">=</span> <span class="kw">new</span> -->
    <!--         <span class="fu">FabriqueJoueur</span><span class="op">();</span></span></code></pre> -->
    <!-- </div> -->
    <h3 id="ce-que-le-projet-nous-a-appris">Ce que le projet nous a
      appris</h3>
    <p>Avec ce projet, durant lequel nous avons fortement utilisé github,
      toute l’équipe s’est amélioré à l’utilisation de git que ce soit avec
      l’interface web de github ou avec la ligne de commande.</p>
    <p>En terme de programmation, le projet nous a permis de mettre en
      pratique les principes SOLID, et les Designs Patterns que l’on a étudié
      en TP. Nous avons donc pu observer en utilisant ces outils la facilité
      avec laquelle on peut modifier ce jeu par rapport à nos projets
      antécédents.</p>
    <h3 id="le-résultat-final">Le résultat final</h3>
    <p>Nous avons été plutôt satisfait par le projet, il nous semble très
      flexible et facile à faire évoluer, et toutes les fonctionnalités que
      nous voulions implémenter fonctionnent.</p>
  </main>
  #include "partials/footer.html"
</body>

</html>
