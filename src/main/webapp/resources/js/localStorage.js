function setData(name, val){
    if(storageCheck()){
//	  	window.localStorage[name] = data; // 또다른 방법
        // 객체 저장
        //JSON.stringify : JavaScript 값을 JSON 문자열로 변환합니다.
        // var user = new Object();
        // user.id = "test";
        // user.level = 1;
//		localStorage.setItem("user",user); // 그냥 객체저장하면, 가져올때 문제가 됨. 변환해서 넣어야함.
        if(name == "foodList" || name == "nutritionList"){
            localStorage.setItem(name, JSON.stringify(val));
        } else {
            window.localStorage.setItem(name, val);
        }
//		window.localStorage.user = JSON.stringify({ id:"test", level:1 });
//		window.localStorage.user = JSON.stringify(user);
//         document.getElementById("data").value = null;
    }
}

function init(foodList, nutritionList){
    if(storageCheck()){
        window.localStorage.setItem("foodList", foodList);
        window.localStorage.setItem("nutritionList", nutritionList);
    }
}

function getData(name){
    // localStorage.key
    // localStorage[key]
    // localStorage.getItem(key)
    if(storageCheck()){
        var value = window.localStorage.getItem(name);

        return value;
    }
}

function removeData(){
    // delete localStorage.key
    // delete localStorage[key]
    // localStorage.removeItem(key)

    if(storageCheck()){
        var name = document.getElementById("name").value;
        window.localStorage.removeItem(name);
        //delete localStorage[name]; // 또다른 방법
    }
}

function clearStorage(){
    if(storageCheck()){
        window.localStorage.clear();
    }
}

function storageCheck(){
    if(!window.localStorage){
        alert("로컬 스토리지를 지원하지 않습니다.");
        return false;
    }
    return true;
}