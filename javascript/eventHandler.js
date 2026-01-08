const eventAdd = () => {
    const btn_lst = document.getElementsByClassName("btn");
    const element = document.getElementById("screen")
    
    for (let btn of btn_lst) {
        if (btn.innerHTML == "=") btn.addEventListener("click", function(){
            const equation = (element.innerHTML)

            const value = (eval(equation))

            element.innerHTML = value
        })
        else if (/[+-x/.0-9]+$/.test(btn.innerHTML)) {
            btn.addEventListener("click", function(){
                if (btn.innerHTML == "x") element.innerHTML  +=  "*"
                else element.innerHTML  +=  (btn.innerHTML)
            })
        }
    }
}

eventAdd()