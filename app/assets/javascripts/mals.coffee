# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#alert('replacer.js')
console.log('js')

#https://asciidwango.github.io/js-primer/use-case/ajaxapp/xhr/
###
request = new XMLHttpRequest()
request.open("GET", 'data/links')
request.addEventListener("load", (event) => {
    console.log(event.target.status) # => 200
    console.log(event.target.responseText) # => "{...}"
})
request.send()
###
#http://www.pori2.net/js/DOM/2.html

offer_item = new Array()
offer_item.push('<table border="0" cellpadding="0" cellspacing="0"><tr><td><p style="font-size:12px;line-height:1.4em;margin:5px;word-wrap:break-word"></p></td><td><div style="background-color:#FFFFFF;margin:0px;padding-top:6px;text-align:center;overflow:auto;"><a href="https://hb.afl.rakuten.co.jp/hgc/14bccbe5.7ff72f60.14bccbe6.28807e17/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmokko-ya%2Fiphone7case-woodcase%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmokko-ya%2Fi%2F10000921%2F&link_type=picttext&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0dGV4dCIsInNpemUiOiIzMDB4MzAwIiwibmFtIjoxLCJuYW1wIjoiZG93biIsImNvbSI6MSwiY29tcCI6ImxlZnQiLCJwcmljZSI6MCwiYm9yIjowLCJjb2wiOjB9" target="_blank" rel="nofollow" style="word-wrap:break-word;"  ><img src="https://hbb.afl.rakuten.co.jp/hgb/14bccbe5.7ff72f60.14bccbe6.28807e17/?me_id=1199861&item_id=10000921&m=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmokko-ya%2Fcabinet%2Fiphone7woodcase%2Fiphone7case-s1.jpg%3F_ex%3D80x80&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmokko-ya%2Fcabinet%2Fiphone7woodcase%2Fiphone7case-s1.jpg%3F_ex%3D300x300&s=300x300&t=picttext" border="0" style="margin:2px" alt="" title=""></a><p style="font-size:12px;line-height:1.4em;text-align:left;margin:0px;padding:2px 6px;word-wrap:break-word"><a href="https://hb.afl.rakuten.co.jp/hgc/14bccbe5.7ff72f60.14bccbe6.28807e17/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmokko-ya%2Fiphone7case-woodcase%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmokko-ya%2Fi%2F10000921%2F&link_type=picttext&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0dGV4dCIsInNpemUiOiIzMDB4MzAwIiwibmFtIjoxLCJuYW1wIjoiZG93biIsImNvbSI6MSwiY29tcCI6ImxlZnQiLCJwcmljZSI6MCwiYm9yIjowLCJjb2wiOjB9" target="_blank" rel="nofollow" style="word-wrap:break-word;"  >■【8/7】iPhone8/7用木製ケース「Wooden case for iPhone8/7」木目が美しいカバー【Qi対応】</a></p></div></td></tr></table>')
#offer_item.push('<table border="0" cellpadding="0" cellspacing="0"><tr><td><p style="font-size:12px;line-height:1.4em;margin:5px;word-wrap:break-word"></p></td><td><div style="border:1px solid #000000;background-color:#FFFFFF;margin:0px;padding-top:6px;text-align:center;overflow:auto;"><a href="https://hb.afl.rakuten.co.jp/hgc/14bccbe5.7ff72f60.14bccbe6.28807e17/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmokko-ya%2Fnhp014%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmokko-ya%2Fi%2F10000399%2F&link_type=picttext&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0dGV4dCIsInNpemUiOiIzMDB4MzAwIiwibmFtIjoxLCJuYW1wIjoiZG93biIsImNvbSI6MSwiY29tcCI6ImxlZnQiLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjB9" target="_blank" rel="nofollow" style="word-wrap:break-word;"  ><img src="https://hbb.afl.rakuten.co.jp/hgb/14bccbe5.7ff72f60.14bccbe6.28807e17/?me_id=1199861&item_id=10000399&m=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmokko-ya%2Fcabinet%2Fpc01%2Ffullkiboard-s1.jpg%3F_ex%3D80x80&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmokko-ya%2Fcabinet%2Fpc01%2Ffullkiboard-s1.jpg%3F_ex%3D300x300&s=300x300&t=picttext" border="0" style="margin:2px" alt="" title=""></a><p style="font-size:12px;line-height:1.4em;text-align:left;margin:0px;padding:2px 6px;word-wrap:break-word"><a href="https://hb.afl.rakuten.co.jp/hgc/14bccbe5.7ff72f60.14bccbe6.28807e17/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmokko-ya%2Fnhp014%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmokko-ya%2Fi%2F10000399%2F&link_type=picttext&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0dGV4dCIsInNpemUiOiIzMDB4MzAwIiwibmFtIjoxLCJuYW1wIjoiZG93biIsImNvbSI6MSwiY29tcCI6ImxlZnQiLCJwcmljZSI6MCwiYm9yIjoxLCJjb2wiOjB9" target="_blank" rel="nofollow" style="word-wrap:break-word;"  >木でできたキーボード「Full Ki-Board」</a></p></div></td></tr></table>')
offer_item.push('<table border="0" cellpadding="0" cellspacing="0"><tr><td><p style="font-size:12px;line-height:1.4em;margin:5px;word-wrap:break-word"></p></td><td><div style="background-color:#FFFFFF;margin:0px;padding-top:6px;text-align:center;overflow:auto;"><a href="https://hb.afl.rakuten.co.jp/hgc/14bccbe5.7ff72f60.14bccbe6.28807e17/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmokko-ya%2Fnhp014%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmokko-ya%2Fi%2F10000399%2F&link_type=picttext&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0dGV4dCIsInNpemUiOiIzMDB4MzAwIiwibmFtIjoxLCJuYW1wIjoiZG93biIsImNvbSI6MSwiY29tcCI6ImxlZnQiLCJwcmljZSI6MCwiYm9yIjowLCJjb2wiOjB9" target="_blank" rel="nofollow" style="word-wrap:break-word;"  ><img src="https://hbb.afl.rakuten.co.jp/hgb/14bccbe5.7ff72f60.14bccbe6.28807e17/?me_id=1199861&item_id=10000399&m=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmokko-ya%2Fcabinet%2Fpc01%2Ffullkiboard-s1.jpg%3F_ex%3D80x80&pc=https%3A%2F%2Fthumbnail.image.rakuten.co.jp%2F%400_mall%2Fmokko-ya%2Fcabinet%2Fpc01%2Ffullkiboard-s1.jpg%3F_ex%3D300x300&s=300x300&t=picttext" border="0" style="margin:2px" alt="" title=""></a><p style="font-size:12px;line-height:1.4em;text-align:left;margin:0px;padding:2px 6px;word-wrap:break-word"><a href="https://hb.afl.rakuten.co.jp/hgc/14bccbe5.7ff72f60.14bccbe6.28807e17/?pc=https%3A%2F%2Fitem.rakuten.co.jp%2Fmokko-ya%2Fnhp014%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fmokko-ya%2Fi%2F10000399%2F&link_type=picttext&ut=eyJwYWdlIjoiaXRlbSIsInR5cGUiOiJwaWN0dGV4dCIsInNpemUiOiIzMDB4MzAwIiwibmFtIjoxLCJuYW1wIjoiZG93biIsImNvbSI6MSwiY29tcCI6ImxlZnQiLCJwcmljZSI6MCwiYm9yIjowLCJjb2wiOjB9" target="_blank" rel="nofollow" style="word-wrap:break-word;"  >木でできたキーボード「Full Ki-Board」</a></p></div></td></tr></table>')
#offer_item.push('<a href="https://hb.afl.rakuten.co.jp/hgc/161cc8cc.208ec5b7.15fa6e23.eb612d20/?pc=https%3A%2F%2Fwww.rakuten.co.jp%2Fpower-stone%2F&m=http%3A%2F%2Fm.rakuten.co.jp%2Fpower-stone%2F&link_type=pict&ut=eyJwYWdlIjoic2hvcCIsInR5cGUiOiJwaWN0IiwiY29sIjowLCJjYXQiOiIxIiwiYmFuIjoiMzM0NSJ9" target="_blank" rel="nofollow" style="word-wrap:break-word;"  ><img src="https://hbb.afl.rakuten.co.jp/hlb/161cc8cc.208ec5b7.15fa6e23.eb612d20/?sid=1&shop=power-stone&size=2&kind=1&me_id=1199355&me_adv_id=3345&t=logo" border="0" style="margin:2px" alt="" title=""></a>')

# Pickup item by random
selected_item=offer_item[Math.floor(Math.random() * offer_item.length)]

target=document.getElementById("js-replacer")
target.innerHTML = selected_item
