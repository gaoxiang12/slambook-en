
[Monaco] 字体美观且容易辨识，普遍被认为是写代码的专用字体，而 [Menlo] 字体显示非常清晰，是继 Monaco 之后被选上的字体。二者均出于 Mac OS 系统下。

而出自 Adobe 之手的 [Source Code Pro] 使用感受也很好，且在持续更新，此处并没有直接把 Source Code Pro 字体放进来。

Source Code Pro 字体的获取：[Source Code Pro Latest] 页面下载最新版本，我们只需要里边的 OTF 文件就可以了。
据说 OTF 格式的字体要比 TTF 格式的字体有更好的显示效果，可参考 [OpenType] 的百科。

#### 安装 

    # mkdir /usr/share/fonts/myfonts/

    # git clone https://github.com/ueaner/fonts
    # cp *.ttf /usr/share/fonts/myfonts/

    # tar xf source-code-pro-xxx.tar.gz
    # cp source-code-pro-xxx/TTF/*.otf /usr/share/fonts/myfonts/

    # cd /usr/share/fonts/myfonts/
    # mkfontscale
    # mkfontdir
    # fc-cache -f

安装完毕。

[Monaco]: http://zh.wikipedia.org/wiki/Monaco
[Menlo]: http://zh.wikipedia.org/wiki/Menlo
[Source Code Pro]: https://github.com/adobe-fonts/source-code-pro
[Source Code Pro Latest]: https://github.com/adobe-fonts/source-code-pro/releases/latest
[OpenType]: http://baike.baidu.com/view/1352360.htm
