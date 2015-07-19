
"更新時間の設定
"バッファの開き方
"水平分割 行数は10
"アニメーションの重みを設定
"quickfixへ出力
let g:quickrun_config = {
			\"_":{
			\"outputter" : "multi:buffer:quickfix",
			\"outputter/buffer/split" : "botright 10sp",
			\"runner" : "vimproc",
			\"runner/vimproc/updatetime" : 30,
			\"outputter/buffer/into" : 1,
			\}
			\}
