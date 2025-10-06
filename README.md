# rg-chs-build-tool
Realm Grinder汉化构建工具

### 安装

1. 下载源码
1. 下载环境到根目录下(名称即目录或文件名)
	1. [deflateUtil.jar](https://github.com/binfenshengdai/deflateUtil/releases/download/1.0/deflateUtil.jar)
	1. [ManifestEditor-2.0.jar](https://github.com/WindySha/ManifestEditor/releases/download/v2.0/ManifestEditor-2.0.jar)
	1. ~~[FFDec](https://github.com/lgl017temp/jpexs-decompiler)(需自行编译)~~
	1. [Poedit](https://poedit.net/download)(安装后将Poedit目录复制到根目录下)
	1. [Android/Sdk/build-tools/34.0.0](https://dl.google.com/android/repository/build-tools_r34-windows.zip)(将文件复制到34.0.0目录下)

		[https://androidsdkmanager.azurewebsites.net/build_tools.html](https://androidsdkmanager.azurewebsites.net/build_tools.html)
	1. [jdk-17.0.2](https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_windows-x64_bin.zip)

		[https://jdk.java.net/archive/](https://jdk.java.net/archive/)
	1. [node-v24.8.0-win-x64](https://nodejs.org/dist/v24.8.0/node-v24.8.0-win-x64.zip)
	
		[https://nodejs.org/en/download/archive](https://nodejs.org/en/download/archive/v24.8.0)

### 使用
1. **初次使用或版本更新后**
	1. 将steam最新的RealmGrinderDesktop.swf放到resource下
	1. 将最新apk内assets\RealmGrinderDesktop.swf放到resource下(注意不要修改RealmGrinder_4.3.4_APKPure.apk和AndroidManifest.xml)
	1. 执行0-newVersion.bat及0-genPcodePhone.bat生成中间文件,并按输出内容修改package.json
1. **替换代码修改后**
	1. 执行0-genPcode.bat及0-genPcodePhone.bat生成中间文件,并按输出内容修改package.json
1. 将最新的翻译文件放到resource\RG-翻译表.xlsx
1. 修改package.json中, modifyVersion内的版本号到最新apk版本号(2处, 按对应格式)
1. 执行1-startPC.bat及2-startPhone.bat生成结果文件
1. 结果生成在out目录, pc端替换steam文件, 安卓端将apk发送至手机安装