// const { default: axios } = require("axios")


function loadEvent() {
    axios.get("/loadEvent")
    .then((res)=>{
        // console.log(res)
        for(i in res.data){
            var creatediv = document.createElement("div")
            var li = document.createElement("li")
            // console.log(i)
            var text = res.data[i].text
            li.innerHTML = text
            li.className = "todo-item"
            var btn = document.createElement("button")
            const data = {
                text:text
            }
            btn.onclick = function (event) {
                axios.post("/deleteOne",data)
                .then((res)=>{
                    // console.log(res)
                    event.target.parentElement.remove()
                })
                .catch(()=>{
                    alert('delete error')
                })
            }
            btn.innerText = "删除"
            btn.className="button"
            li.appendChild(btn)
            var element = document.getElementById("my list2");
            element.appendChild(li);
        }
        
    })
    .catch(function(err){
        console.log("get error")
    })
}

function addEvent() {
    var creatediv = document.createElement("div")
    var li = document.createElement("li")
    var text = document.getElementById("ipt").value
    li.innerHTML = text
    li.className = "todo-item"
    var btn = document.createElement("button")
    const dedata = {
        text:text
    }
    btn.onclick = function (event) {
        axios.post("/deleteOne",dedata)
        .then((res)=>{
            // console.log(res)
            event.target.parentElement.remove()
        })
        .catch(()=>{
            alert('delete error')
        })
    }
    btn.innerText = "删除"
    btn.className="button"
    li.appendChild(btn)
    var element = document.getElementById("my list2");
    element.appendChild(li);
    const data = {
        id:Date(),
        data:text
    }
    axios.post("/addEvent",data)
    document.getElementById('ipt').value=''
}

function deleteEvent(event) {
    var parent = document.getElementById("my list2");
    parent.innerHTML = ""
    axios.post("/deleteAll")
        .then((res)=>{
            // console.log(res)
            event.target.parentElement.remove()
        })
        .catch(()=>{
            alert('delete error')
        })
}

function search() {
    key = document.getElementById("sousuo").value;
    //console.log(key);
    if (key == "") return;
    n=document.getElementsByClassName("todo-item").length;
    for (i=0;i<n;++i) {
        if (document.getElementsByClassName("todo-item")[i].innerText.indexOf(key) != -1) {
            document.getElementsByClassName("todo-item")[i].style.visibility = "visible";
        } else {
            document.getElementsByClassName("todo-item")[i].style.visibility = "hidden";
        }
        //console.log(indexOf(key));
    }

}