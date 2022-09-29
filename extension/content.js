console.log("here we go");
var keyword = 'some'; 
var paragraphs = document.getElementsByTagName("p");

console.log(paragraphs);


for (paragraph of paragraphs) {
    var content = paragraph.innerHTML;

    if (content.includes(keyword)) {
        paragraph.style["background-color"] = "#FF0";
    }
}

