window.addEventListener("load", () => {
 let search_bar = document.getElementById("search-bar");

  search_bar.addEventListener("input", () => {
    search(search_bar.value);
  });

   if (document.getElementsByClassName("searchable-section").length != 0){
    search_bar.style.display = "block";
  }  
})

function search(search_str) {
  let articles = Array.from(document.querySelectorAll(".searchable-section article"));
  console.log(articles)
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
