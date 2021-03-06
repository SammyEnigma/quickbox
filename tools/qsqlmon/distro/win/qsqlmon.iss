; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define VERSION "1.3.3"
#define APP_NAME "QSqlMonitor"
#define APP_NAME_LOWER "qsqlmonitor"
#define EXE_NAME "qsqlmon"
;#define COMPANY "well"

#define QT_DIR "c:\app\qt4\qt"
#define MINGW_DIR "c:\app\qt4\mingw"

[Setup]
AppName={#APP_NAME}
AppVerName={#APP_NAME} {#VERSION}
AppPublisher=Fanda Vacek
AppPublisherURL=http://www.{#APP_NAME_LOWER}.cz
AppSupportURL=http://www.{#APP_NAME_LOWER}.cz
AppUpdatesURL=http://www.{#APP_NAME_LOWER}.cz
DefaultDirName=C:\{#APP_NAME_LOWER}
DefaultGroupName={#APP_NAME}
OutputDir=..\_build\inno\{#APP_NAME_LOWER}
OutputBaseFilename={#APP_NAME_LOWER}-{#VERSION}-setup
SetupIconFile=.\distro\icons\{#EXE_NAME}.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: ..\_build\bin\{#EXE_NAME}.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\_build\bin\libqfcore.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\_build\bin\libqfgui.dll; DestDir: {app}; Flags: ignoreversion

Source: .\{#EXE_NAME}.conf.xml; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\assistant_adp.exe; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\QtAssistantClient4.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\QtHelp4.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\QtCLucene4.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\QtCore4.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\QtGui4.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\QtWebKit4.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\QtXmlPatterns4.dll; DestDir: {app}; Flags: ignoreversion
;Source: {#QT_DIR}\bin\phonon4.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\QtNetwork4.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\QtSql4.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\QtXml4.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\QtSvg4.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\QtScript4.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\QtScriptTools4.dll; DestDir: {app}; Flags: ignoreversion

Source: {#MINGW_DIR}\bin\mingwm10.dll; DestDir: {app}; Flags: ignoreversion
Source: {#MINGW_DIR}\bin\libgcc_s_dw2-1.dll; DestDir: {app}; Flags: ignoreversion

;Source: c:\app\openssl\*.dll; DestDir: {app}; Flags: ignoreversion

Source: {#QT_DIR}\plugins\imageformats\qjpeg4.dll; DestDir: {app}\imageformats; Flags: ignoreversion
Source: {#QT_DIR}\plugins\imageformats\qsvg4.dll; DestDir: {app}\imageformats; Flags: ignoreversion

Source: {#QT_DIR}\plugins\sqldrivers\qsqlite4.dll; DestDir: {app}\sqldrivers; Flags: ignoreversion
Source: ..\_build\bin\sqldrivers\qfsqlite.dll; DestDir: {app}\sqldrivers; Flags: ignoreversion
Source: ..\_build\bin\codecs\*; DestDir: {app}\codecs; Flags: ignoreversion recursesubdirs createallsubdirs

;Source: ..\_build\bin\*.qm; DestDir: {app}; Flags: ignoreversion

;mysql
Source: "..\_build\bin\libmysql.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ..\_build\bin\sqldrivers\qfsqlmysql.dll; DestDir: {app}\sqldrivers; Flags: ignoreversion
;firebird
Source: "..\_build\bin\fbclient.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ..\_build\bin\sqldrivers\qfsqlibase.dll; DestDir: {app}\sqldrivers; Flags: ignoreversion
;postgres
Source: "..\_build\bin\libpq.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "..\_build\bin\comerr32.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "..\_build\bin\krb5_32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_build\bin\libeay32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_build\bin\libiconv-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_build\bin\libintl-8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_build\bin\ssleay32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ..\_build\bin\sqldrivers\qfpsql.dll; DestDir: {app}\sqldrivers; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\{#APP_NAME}; Filename: {app}\{#EXE_NAME}.exe
Name: {group}\{cm:UninstallProgram,{#APP_NAME}}; Filename: {uninstallexe}
Name: {userdesktop}\{#APP_NAME}; Filename: {app}\{#EXE_NAME}.exe; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#APP_NAME}; Filename: {app}\{#EXE_NAME}.exe; Tasks: quicklaunchicon

[Run]
Filename: {app}\{#EXE_NAME}.exe; Description: {cm:LaunchProgram,{#APP_NAME}}; Flags: nowait postinstall skipifsilent


