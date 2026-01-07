const eventAdd = () => {
    let number = ""

    const btn_lst = document.getElementsByClassName("btn");
    for (let btn of btn_lst) {
        if (/[+-x/.0-9]+$/.test(btn.innerHTML)) {
            btn.addEventListener("click", function(){number + btn.innerHTML})
        }
        else btn.addEventListener
    }


}

eventAdd()