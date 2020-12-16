function clickbutton(){
  const pushPlusButton = document.getElementById("index-plus")
  
  pushPlusButton.addEventListener('mouseover', function(){
    console.log("aaaa")
  })
}

window.addEventListener('load', clickbutton)