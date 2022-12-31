class NavBar extends HTMLElement {
  constructor() {
    super();
  }

  connectedCallback() {
    // Create a shadow root
    this.attachShadow({ mode: "open" });
    // this.append_new(this.shadowRoot, "link",
    //   {
    //     rel: "stylesheet",
    //     href: "css/navbar.css"
    //   }
    // );
    //

    // Injected to avoid Flashed of unstyled content
    this.append_new(this.shadowRoot, "style", 
      {
        innerHTML: `
/* Navbar */

@import url('https://fonts.googleapis.com/css2?family=Kenia&display=swap');

:root{
  --clr-primary-1000: #010b13;
  --clr-primary-900: #100c08;
  --clr-secondary-500: grey;
  --clr-secondary-100: #EDB0DD;
  --clr-secondary-0: #fef4ec;
}

.highlight {
  --color: var(--clr-secondary-100);
  font-family: "Kenia";
  font-size: 1rem;
  text-transform: uppercase;
  color: var(--color);
}

.search-bar:is(:focus, :focus-visible) {
  outline: 6px double var(--clr-secondary-100);;
}

.main-navbar {
  display: grid;
  align-items: center;
  gap: 2em;
  grid-template-columns: 200px auto 200px;
  position: relative;
  padding: 0 1em;
  margin-bottom: 2em;

  color: var(--clr-secondary-0);
}

.logo {
  margin: 0;
  padding-top: 0.5rem;
  object-fit: scale-down;

  color: var(--clr-secondary-100);
  font-family: "Kenia";
  font-size: 2rem;

  text-align: center;
  text-decoration: none;
}

.navbar-list {
  display: flex;
  gap: 1em;
  justify-content: center;

  list-style: none;
  text-transform: uppercase;
  color: inherit;
}

.navbar-list a {
  display: inline-block;
  width: 100%;
  color: inherit;
  text-decoration: inherit;
}

/* .navbar-list :is(li, a) { */
/*   font-weight: normal; */
/* transition: font-weight 500ms ease-in-out; */
/* } */
.navbar-list :is(li, a):is(:hover, :focus) {
  outline: none;
  /* font-weight: 1000; */
  color: var(--clr-secondary-100);
  text-decoration: underline;
}

.navbar-checkbox {
  display: none;
}

.search-bar {
  height: 2rem;
  width: 100%;
  background: white;
  border: none;
  border-radius: 15px;
}

.navbar-checkbox-label {
  display: none;
}


@media (max-width: 900px) {
  .main-navbar {
    gap: 1em;
  }

  .main-navbar {
    display: grid;
    grid-template-columns: 100px 1fr 100px;
  }

  .navbar-list {
    display: flex;
    flex-direction: column;
  }

  .logo {
    grid-column: 2;
    grid-row: 1;
    margin: 0 auto;
  }

  .navbar-checkbox-label{
    grid-column: 3;
    grid-row: 1;
  }

  .search-bar {
    grid-column: 1 / 4;
    grid-row:3;
  }

  .navbar-list {
    --animation-speed: 500ms;

    max-height: 1000px;
    transform-origin: top;
    transition: 
      max-height calc(var(--animation-speed) / 2) ease-in-out,
      margin var(--animation-speed) ease-in-out, 
      padding var(--animation-speed) ease-in-out, 
      opacity calc(var(--animation-speed) / 2 - 100ms) ease-in;

    grid-column: 1 / 4;
    grid-row:2;
  }

  .navbar-checkbox:checked ~ .navbar-list:not(:focus-within) {
    max-height: 0;
    margin: 0;
    padding: 0;
    opacity: 0;
    overflow: hidden;
  }

  .navbar-checkbox-label{
    position: relative;
    height: 100%;
    display: flex;
    align-items: center;
  }

  .navbar-checkbox-label span,
  .navbar-checkbox-label span::before,
  .navbar-checkbox-label span::after {
      display: block;
      background: white;
      height: 3px;
      width: 2em;
      border-radius: 2px;
      content: "";
      position: absolute;

  }


  .navbar-checkbox-label span {
    left: 65%;
  }
  .navbar-checkbox ~ .navbar-checkbox-label span::before,
  .navbar-checkbox ~ .navbar-checkbox-label span::after {
    right: 50%;
    transition: right 500ms ease-in-out;
  }

  .navbar-checkbox:checked ~ .navbar-checkbox-label span::before,
  .navbar-checkbox:checked ~ .navbar-checkbox-label span::after {
    right: 0;
  }

  .navbar-checkbox-label span::before {
      top: 7px;
  }

  .navbar-checkbox-label span::after {
      bottom: 7px;
  }

}


`
      })

    const navbar = document.createElement("nav");
    navbar.className = "main-navbar focus-grow";

          // <img class="logo" src="assets/img/tmp-logo2.png" alt="logo">
    navbar.innerHTML = `
          <a class="logo" href="index.html" alt="retour à l'acceuil">Aaron</a>
          <input class="navbar-checkbox" type="checkbox" name="navbar-checkbox" id="navbar-checkbox" checked>
          <label class="navbar-checkbox-label" for="navbar-checkbox"><span></span></label>
          <ul class="navbar-list">
            <li><a href="projects.html">projets</a></li>
            <li><a href="xp.html">experiences</a></li>
            <li><a href="tools.html">outils</a></li>
          </ul>
          <input id="search-bar" class="search-bar" type="text" name="" value="">`;

    // <a class="account" href="#">
    //   <img src="assets/img/doggos/pug.jpg" alt="icon">
    //   <p class="account-score">100</p>
    // </a>`;

    this.shadowRoot.append(navbar);

    let search_bar = this.shadowRoot.getElementById("search-bar");

    search_bar.addEventListener("input", () => {
      search(search_bar.value);
    });

    window.addEventListener("load", 
      () => {
       if (document.getElementsByClassName("searchable-section").length == 0){
        search_bar.style.display = "none";
        // search_bar.disabled =  true;
        // search_bar.style.cursor = "not-allowed";
      }       
    })



  }

  append_new(parent, child_type, child_attributes) {
    parent.append(Object.assign(document.createElement(child_type), child_attributes));
  }
}

customElements.define("nav-bar", NavBar);

function search(search_str) {
  let articles = Array.from(document.querySelectorAll(".searchable-section article"));
  let query = search_str.trim().toLowerCase(); 

  for (const article of articles) {
    let title = article.getElementsByTagName("h3")[0].textContent.toLowerCase();
    let tags = article.querySelector(".tags");
    tags = (tags != null)?tags.textContent.toLowerCase():"";

    let in_query = query.split(" ").some(keyword => title.includes(keyword) || tags.includes(keyword) ) || query === "";

    article.style.visibility = (in_query) ? "visible" : "hidden";
    article.style.maxHeight = (in_query) ? "1000px" : 0;
    article.style.maxWidth = (in_query) ? "var(--max-card-size)" : 0;
  }
}
