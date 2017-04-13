ScatterMatrixPlots
==============================
散布図行列を作成します

## 関数
### ScatterMatrixPlot(olddf:データセット名, colorido:凡例,filepath:ファイルパス,mime:画像フォーマット,xwidth:横長,ywidth:縦長,legenda:凡例の出力有無)  
指定されたデータセットから散布図行列を作成し、表示  
  
<引数>  
olddf:データセット名  
colorido:凡例  
filepath:ファイルパス  
mime:画像フォーマット  
xwidth:横長  
ywidth:縦長  
legenda:凡例の出力有無  
### ScatterMatrix(olddf:データセット名, colorido:凡例,legenda:凡例の出力有無)  
指定されたデータセットから散布図行列を作成。ファイルに書き出す場合、Gadflyのdrawコマンドを使って出力  
  
## 使用方法
x=1:10  
y1=2x  
y2=2x-1  
label1=["a","a","a","b","b","b","b","c","c","c"]  
label2=["1","2","3","1","2","3","1","2","3","1"]  
df1=DataFrame(x=x,y1=y1,y2=y2,label1=label1)  
df2=DataFrame(x=x,y1=y1,y2=y2,label1=label1,label2=label2)  

### ファイル表示まで一括指示
ScatterMatrixPlot(df1)  
ScatterMatrixPlot(df1, "label1") #ラベル付きで表示する場合  

#### DataFrameに文字列のデータが複数ある場合
ScatterMatrixPlot(df2)  
ScatterMatrixPlot(df2, "label1")  


### 出力するファイルのサイズ等を細かく制御する場合
pl=ScatterMatrix(df1, "label")  
image=draw(SVG("scattermatrixplot.svg", 10inch, 10inch), pl)#指定した場所・フォーマットでファイルに出力される  
open_imagefile("scattermatrixplot.svg")  
