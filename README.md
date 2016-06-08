# ScatterMatrixPlots
散布図行列を作成します

##関数
###ScatterMatrixPlot(olddf:データセット名, colorido:凡例,filepath:ファイルパス,mime:画像フォーマット,legenda:凡例の出力有無)
指定されたデータセットから散布図行列を作成し、表示  
###ScatterMatrix(olddf:データセット名, colorido:凡例,legenda:凡例の出力有無)
指定されたデータセットから散布図行列を作成。ファイルに書き出す場合、Gadflyのdrawコマンドを使って出力  
  
##使用方法
###ファイル表示まで一括指示
usinga ScatterMatrixPlots  
x=1:10  
y1=2x  
y2=2x-1  
label=["a","a","a","b","b","b","b","c","c","c"]  
df=DataFrame(x=x,y1=y1,y2=y2,label=label)  

ScatterMatrixPlot(df, "label")  

###出力するファイルのサイズ等を細かく制御する場合
usinga ScatterMatrixPlots  
x=1:10  
y1=2x  
y2=2x-1  
label=["a","a","a","b","b","b","b","c","c","c"]  
df=DataFrame(x=x,y1=y1,y2=y2,label=label)  

pl=ScatterMatrix(df, "label")  
image=draw(SVG("scattermatrixplot.svg", 10inch, 10inch), pl)#指定した場所・フォーマットでファイルに出力される  
open_imagefile("scattermatrixplot.svg")
