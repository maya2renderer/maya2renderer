
!include WinMessages.nsh

!define LIQUID_ROOT "E:\dev\autodesk\maya\myplugin\project\liquid_"
!define MyInstallDir "E:\maya2renderer_install_root"
!define /date CUR_TIME "%Y_%m_%d__%H_%M_%S"

outfile "liquid_${CUR_TIME}.exe"
;installDir "$PROGRAMFILES\liquid_install_root" 
installDir ${MyInstallDir}


Page directory
Page instfiles
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
section
setOutPath $INSTDIR\2.3.3\bin
file ${LIQUID_ROOT}\2.3.3\bin\*.*


setOutPath $INSTDIR\2.3.3\bin\Prman\win32
file /x *.pdb /x *.lib /x *.exp   ${LIQUID_ROOT}\2.3.3\bin\Prman\win32\*.*


setOutPath $INSTDIR\2.3.3\bin\Prman\win32\M2R2012Release
file /x *.pdb /x *.lib /x *.exp   ${LIQUID_ROOT}\2.3.3\bin\Prman\win32\M2R2012Release\*.*


setOutPath $INSTDIR\2.3.3\doc
file ${LIQUID_ROOT}\2.3.3\doc\*.txt
file ${LIQUID_ROOT}\2.3.3\doc\*.pdf
file ${LIQUID_ROOT}\2.3.3\doc\*.ma


setOutPath $INSTDIR\2.3.3\icon
file ${LIQUID_ROOT}\2.3.3\icons\*.*


setOutPath $INSTDIR\2.3.3\mel
file ${LIQUID_ROOT}\2.3.3\mel\*.mel

setOutPath $INSTDIR\2.3.3\mel\2011
file ${LIQUID_ROOT}\2.3.3\mel\2011\*.mel

setOutPath $INSTDIR\2.3.3\mel\2012
file ${LIQUID_ROOT}\2.3.3\mel\2012\*.mel


setOutPath $INSTDIR\2.3.3\rendererDesc
file ${LIQUID_ROOT}\2.3.3\rendererDesc\liquidRenderer.xml

setOutPath $INSTDIR\2.3.3\renderers
file ${LIQUID_ROOT}\2.3.3\renderers\maya2renderer_3delight.lg

setOutPath    $INSTDIR\2.3.3\src\elvishray\mel
file /r ${LIQUID_ROOT}\2.3.3\src\elvishray\mel\*.mel

setOutPath    $INSTDIR\2.3.3\src\renderman\mel
file /r ${LIQUID_ROOT}\2.3.3\src\renderman\mel\*.mel

setOutPath    $INSTDIR\2.3.3\src\shaders\mel
file /r ${LIQUID_ROOT}\2.3.3\lib\shaders\*.*

setOutPath $INSTDIR\dependence\_3delight
file ${LIQUID_ROOT}\dependence\_3delight\*.*

setOutPath $INSTDIR\dependence\elvishray\r274\bin
file ${LIQUID_ROOT}\dependence\elvishray\r274\bin\*.*



;copy manage.ini to $(MAYA_ROOT)/bin
;read env MAYA_PATH2012
ReadRegStr $0 HKCU "Environment" "MAYA_PATH2012"
setOutPath $0\bin
file ${LIQUID_ROOT}\dependence\elvishray\r274\bin\manager.ini

;append searchpath to manager.ini
Sleep 100
FileOpen  $1 $0\bin\manager.ini a
FileSeek  $1 0 END
FileWrite $1 "$\r$\nsearchpath       $INSTDIR/dependence/elvishray/r274/bin"
FileClose $1


; copy Maya.env to 
MessageBox MB_OK "Maya.env will be copyed to $DOCUMENTS\maya\2012, please backup your own Maya.env"
setOutPath $DOCUMENTS\maya\2012
file ${LIQUID_ROOT}\2.3.3\bin\Maya.env


; set env "LIQUID_ROOT"
WriteRegExpandStr HKCU "Environment" "LIQUID_ROOT" "$INSTDIR"
SendMessage ${HWND_BROADCAST} ${WM_WININICHANGE} 0 "STR:Environment"
;ReadEnvStr $9 'test2'
;MessageBox MB_OK "variable test2 has value $9"


sectionEnd