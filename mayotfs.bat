
d:\{{ AGENTNAME }}\agent\vsoagent.exe /configure /NoPrompt /RunningAsService /StartMode:Automatic /ServerUrl:{{ SERVERURL }} /name:{{ AGENTNAME }}-{{ LOCALHOST }} /poolname:default /workfolder:"d:\{{ AGENTNAME }}\_work" /WindowsServiceLogonAccount:{{ SERVICEACCOUNT }} /WindowsServiceLogonPassword:{{ SERVICEPW}}
