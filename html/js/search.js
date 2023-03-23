window.addEventListener("DOMContentLoaded", function(){
   document.getElementById("searchButton").addEventListener("click", clickHandler)
});


function clickHandler(){
   searched = document.getElementById("searchBar")
   console.log(searched)
   let xhr = new XMLHttpRequest();
   xhr.addEventListener("load", responseReceivedHandler);
   xhr.responseType = "json";
   let queryString = "none" + "searched=" + searched
   xhr.open("GET", queryString);
   xhr.send();
 }
 
 function responseReceivedHandler(){
    let html = "";
    let response = document.getElementById("response")
    response.innerHTML = "Test"
    if (this.status != 200){
       html = "<p>Connection could not be made with the server, please try again later or contact our administrators</p>"
    }
    else{
       html = this.response;
    }
    response.innerHTML = html
 }
 