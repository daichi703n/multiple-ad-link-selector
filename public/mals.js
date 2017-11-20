//This JavaScript get MALS registered link, and Replace HTML View
function getLink(){
  //console.log("getLink")
  // Select item on Server Side
  const got_link = new Promise((resolve,reject) => {
    const request = new XMLHttpRequest()
    request.open("GET", link_api, true)
    request.timeout = 30000; // time in milliseconds
    //Success
    request.addEventListener("load", (event) => {resolve(event.target.responseText)})
    //Fail
    request.ontimeout = function(e) {
      console.error("Request timed out - Please contact MALS help")
    }
    request.addEventListener("load", (event) => {
      if(event.target.status != 200){
        reject(console.error("HTTP Status: "+event.target.status+" - Please contact MALS help"));
      }
    });
    request.addEventListener("error", () => {
        reject(console.error("Network Error - Please contact MALS help"));
    });
    request.send()
  })
  return got_link
}

async function setLink(){
  const selected_link = await getLink()
  console.log("MALS Link has got")
  //console.log(selected_link)
  const target=document.getElementById("mals_replace_target")
  //target.innerHTML = selected_link+msg

  //const decoded = selected_link.replace(/(\\u)([0-9A-F]{4})/g, function(match,p1,p2){
  //  return String.fromCharCode(parseInt(p2, 16));
  //});
  //console.log(JSON.parse(selected_link))
  target.innerHTML = JSON.parse(selected_link)//+msg //ToDo MultiUser
}

function getQuery(path) {
    if(path.indexOf("?") == -1){
      console.log("Error: MalsKey is not set"); return;
    }
    const variables = path.split("?")[1].split("&");
    const obj = {};
    variables.forEach(function(v, i) {
        const variable = v.split("=");
        obj[variable[0]] = String(variable[1]);
    });
    return obj;
}

const jsPath = (function() {
    if (document.currentScript) {
        return document.currentScript.src;
    } else {
        const scripts = document.getElementsByTagName('script'),
        script = scripts[scripts.length-1];
        if (script.src) {
            return script.src;
        }
    }
})();
const root_url = window.location.protocol+"//"+window.location.host
//console.log(root_url)

query = getQuery(jsPath)
//console.log(query.malskey)
//const link_api = "/links"
const link_api = root_url+"/api/selector/v1/links/random?"+query.malskey
//ToDo: in Advanced edition, msg will be unvisible
const msg = '<div id="mals_message"><font color="lightgray">'+
'<a href='+root_url+' target="_blank">This Link is Generated by MALS</a><br>'+
'</font></div>'

setLink()
//console.log("Finish mals.js")
