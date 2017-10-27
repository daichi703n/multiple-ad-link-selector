function getLink(){
  console.log("getLink")
  // Select item on Server Side
  const got_link = new Promise((resolve,reject) => {
    const request = new XMLHttpRequest()
    request.open("GET", '/links')//, false) //false: sync
    request.addEventListener('load', (event) => resolve(request.responseText));
    //request.addEventListener("load", (event) => {
        //console.log(event.target.status)
        //console.log(event.target.responseText)
    //})
    request.send()
    //http://www.pori2.net/js/DOM/2.html
  })
  return got_link
}

//https://sbfl.net/blog/2016/07/13/simplifying-async-code-with-promise-and-async-await/#asyncawait
async function setLink(){
  const selected_link = await getLink()
  console.log("Link has got")
  console.log(selected_link)
  const target=document.getElementById("js-replacer")
  target.innerHTML = selected_link
}

//selected_link = setLink()
setLink()

//alert('replacer.js')
console.log('/public/mals.js')

//https://asciidwango.github.io/js-primer/use-case/ajaxapp/xhr/


var offer_item = new Array()
//offer_item.push('<table border="0" cellpadding="0" cellspacing="0"><tr><td><p style="font-size:12px;line-height:1.4em;margin:5px;word-wrap:break-word"></p></td><td><div style="background-color:#FFFFFF;margin:0px;padding-top:6px;text-align:center;overflow:auto;"><a href="https://hb.afl.rakuten.co.jp/hgc/14bccbe5.7ff72f60.14bccbe6.28807e17/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmokko-ya%2Fiphone7case-woodcase%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmokko-ya%2Fi%2F10000921%2F&link_type=picttext&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0dGV4dCIsInNpemUiOiIzMDB4MzAwIiwibmFtIjoxLCJuYW1wIjoiZG93biIsImNvbSI6MSwiY29tcCI6ImxlZnQiLCJwcmljZSI6MCwiYm9yIjowLCJjb2wiOjB9" target="_blank" rel="nofollow" style="word-wrap:break-word;"  ><img src="https://hbb.afl.rakuten.co.jp/hgb/14bccbe5.7ff72f60.14bccbe6.28807e17/?me_id=1199861&item_id=10000921&m=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmokko-ya%2Fcabinet%2Fiphone7woodcase%2Fiphone7case-s1.jpg%3F_ex%3D80x80&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmokko-ya%2Fcabinet%2Fiphone7woodcase%2Fiphone7case-s1.jpg%3F_ex%3D300x300&s=300x300&t=picttext" border="0" style="margin:2px" alt="" title=""></a><p style="font-size:12px;line-height:1.4em;text-align:left;margin:0px;padding:2px 6px;word-wrap:break-word"><a href="https://hb.afl.rakuten.co.jp/hgc/14bccbe5.7ff72f60.14bccbe6.28807e17/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmokko-ya%2Fiphone7case-woodcase%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmokko-ya%2Fi%2F10000921%2F&link_type=picttext&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0dGV4dCIsInNpemUiOiIzMDB4MzAwIiwibmFtIjoxLCJuYW1wIjoiZG93biIsImNvbSI6MSwiY29tcCI6ImxlZnQiLCJwcmljZSI6MCwiYm9yIjowLCJjb2wiOjB9" target="_blank" rel="nofollow" style="word-wrap:break-word;"  >■【8/7】iPhone8/7用木製ケース「Wooden case for iPhone8/7」木目が美しいカバー【Qi対応】</a></p></div></td></tr></table>')
//offer_item.push('<table border="0" cellpadding="0" cellspacing="0"><tr><td><p style="font-size:12px;line-height:1.4em;margin:5px;word-wrap:break-word"></p></td><td><div style="background-color:#FFFFFF;margin:0px;padding-top:6px;text-align:center;overflow:auto;"><a href="https://hb.afl.rakuten.co.jp/hgc/14bccbe5.7ff72f60.14bccbe6.28807e17/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmokko-ya%2Fnhp014%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmokko-ya%2Fi%2F10000399%2F&link_type=picttext&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0dGV4dCIsInNpemUiOiIzMDB4MzAwIiwibmFtIjoxLCJuYW1wIjoiZG93biIsImNvbSI6MSwiY29tcCI6ImxlZnQiLCJwcmljZSI6MCwiYm9yIjowLCJjb2wiOjB9" target="_blank" rel="nofollow" style="word-wrap:break-word;"  ><img src="https://hbb.afl.rakuten.co.jp/hgb/14bccbe5.7ff72f60.14bccbe6.28807e17/?me_id=1199861&item_id=10000399&m=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmokko-ya%2Fcabinet%2Fpc01%2Ffullkiboard-s1.jpg%3F_ex%3D80x80&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmokko-ya%2Fcabinet%2Fpc01%2Ffullkiboard-s1.jpg%3F_ex%3D300x300&s=300x300&t=picttext" border="0" style="margin:2px" alt="" title=""></a><p style="font-size:12px;line-height:1.4em;text-align:left;margin:0px;padding:2px 6px;word-wrap:break-word"><a href="https://hb.afl.rakuten.co.jp/hgc/14bccbe5.7ff72f60.14bccbe6.28807e17/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmokko-ya%2Fnhp014%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmokko-ya%2Fi%2F10000399%2F&link_type=picttext&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0dGV4dCIsInNpemUiOiIzMDB4MzAwIiwibmFtIjoxLCJuYW1wIjoiZG93biIsImNvbSI6MSwiY29tcCI6ImxlZnQiLCJwcmljZSI6MCwiYm9yIjowLCJjb2wiOjB9" target="_blank" rel="nofollow" style="word-wrap:break-word;"  >木でできたキーボード「Full Ki-Board」</a></p></div></td></tr></table>')

// Pickup item by random
//var selected_item=offer_item[Math.floor(Math.random() * offer_item.length)]
//console.log(selected_item)
console.log("END mals.js")
