const charMatrix = [
  "7", "8", "9", "/",
  "4", "5", "6", "x",
  "1", "2", "3", "-",
  "0", ".", "=", "+"
]

const render = () => {
  const htmlContent = charMatrix.map(
    item => 
    `<div class="btn" id="b_${item}">${item}</div>`    
  ).reduce((acc, curr) => {
    return acc + curr
  }, "")

  document.getElementById("btn-list").innerHTML = htmlContent
}

render()