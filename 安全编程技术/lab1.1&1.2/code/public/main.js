
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
    event.preventDefault();
    document.getElementById("my list2").innerHTML = "";
    axios.post("/deleteAll")
}

function search() {
    var parent = document.getElementById("my list2");
    parent.innerHTML = ""
    key = document.getElementById("sousuo").value;
    axios.post("/searchEvent", {key:key})
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