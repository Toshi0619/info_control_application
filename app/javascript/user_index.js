function clickbutton(){
  const pushPlusButton = document.getElementById("addadd")
  
  pushPlusButton.addEventListener('mouseover', function(){
    console.log("aaaa")
  })
}

window.addEventListener('load', clickbutton)