; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "OpenKJ"
#define MyAppVersion "1.9.73"
#define MyAppPublisher "OpenKJ Project"
#define MyAppURL "https://openkj.org/"
#define MyAppExeName "OpenKJ.exe"
#define MyAppId "{474EEC43-B55A-4FCE-8E5A-4ACD90E56103}"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{#MyAppId}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=output\LICENSE.txt
OutputBaseFilename=OpenKJ
Compression=lzma
SolidCompression=yes
UninstallDisplayName=OpenKJ
UninstallDisplayIcon={uninstallexe}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "output\OpenKJ.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "output\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "output\Roboto-Bold.ttf"; DestDir: "{fonts}"; FontInstall: "Roboto Bold"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "output\Roboto-Medium.ttf"; DestDir: "{fonts}"; FontInstall: "Roboto Medium"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "output\Roboto-Regular.ttf"; DestDir: "{fonts}"; FontInstall: "Roboto"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "output\SourceCodePro-Medium.ttf"; DestDir: "{fonts}"; FontInstall: "Source Code Pro Medium"; Flags: onlyifdoesntexist uninsneveruninstall


; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[InstallDelete]
Type: filesandordirs; Name: "{app}\*"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Flags: nowait postinstall skipifsilent; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"
Filename: "{app}\vc_redist.x64.exe"; Parameters: "/install /quiet /norestart"; Description: "MS Visual C++ Redistributable"; StatusMsg: "Installing vcredist"
