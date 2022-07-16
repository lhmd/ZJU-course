input.focus(); 
let arr = new Array();
button1.onclick = function(){
    let todolist = document.createElement('li');//创建新元素
    todolist.setAttribute('class','todolists');
    let deletebutton = document.createElement('button');
    deletebutton.setAttribute('class','deletebuttons'); 
    deletebutton.setAttribute('type','submit');//删除按钮
    let check = document.createElement('input');
    check.setAttribute('class','deletebuttons'); 
    check.setAttribute('type','checkbox'); 
    let buttoncontent = document.createTextNode("Delete");
    deletebutton.appendChild(buttoncontent); 
    let input = document.getElementById("input");
    let value = input.value;

    if(value.length === 0){
        alert("不能为空");
        input.focus();
        return;
    }//bonus2
    else{
        let newcontent = document.createTextNode(value);
        todolist.appendChild(newcontent);
        arr.push(todolist.innerHTML);
        //saveData(arr);
        truetodo.append(check);
        truetodo.append(deletebutton);
        truetodo.append(todolist);
        deletebutton.onclick = function(){//删除当前备忘
            let pos = arr.indexOf(todolist.innerHTML);
            let removedItem = arr.splice(pos,1);
            todolist.parentElement.removeChild(deletebutton); 
            todolist.parentElement.removeChild(todolist);
            saveData(arr);
            input.focus(); 
        }
        todolist.onclick = function(){//修改备忘的功能bonus4
            let inner=prompt("修改后的待办");
            if(inner.length !== 0){
                let pos = arr.indexOf(todolist.innerHTML);
                arr.splice(pos,1,inner);
                todolist.innerHTML = inner;
                saveData(arr);
            }
            input.focus();
        }
    }
    input.value = '';
    input.focus();
}
function saveData(data){
    localStorage.setItem("mytodolists",JSON.stringify(data));
}
function loadData() {
    let hisTory = localStorage.getItem("mytodolist");
    if(hisTory !=null){
        return JSON.parse(hisTory);  //JSON对象转换为JS对象
    }
    else { return []; }
}
function clear() {
    localStorage.clear();
    load();
}//清空功能（未实现）
window.addEventListener("load", loadData);

button2.onclick = function search(){//搜索函数
    key = document.getElementById("ListName").value;
    //console.log(key);
    if (key == "") return;
    n=document.getElementsByClassName("todolists").length;
    for (i=0;i<n;++i) {
        if (document.getElementsByClassName("todolists")[i].innerText.indexOf(key) != -1) {
            document.getElementsByClassName("todolists")[i].style.visibility = "visible";
        } else {
            document.getElementsByClassName("todolists")[i].style.visibility = "hidden";
        }
        //console.log(indexOf(key));
    }
}
