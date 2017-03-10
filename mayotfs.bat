
d:\{{ AGENT-NAME }}\agent\vsoagent.exe /configure /NoPrompt /RunningAsService /StartMode:Automatic /ServerUrl:{{ SERVER-URL }} /name:{{ AGENT-NAME }}-{{ LOCALHOST }} /poolname:default /workfolder:"d:\{{ AGENT-NAME }}\_work" /WindowsServiceLogonAccount:{{ SERVICE-ACCOUNT }} /WindowsServiceLogonPassword:{{ SERVICE-PW}}
