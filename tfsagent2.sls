"Deploy Agent3 Agent script":
  archive.extracted:
    - name: 'd:\Agent3\'
    - source: salt://{{ slspath }}/agent.zip
    - enforce_toplevel: False

"Execute Agent3 Agent install":
  cmd.script:
    - source: salt://{{ slspath }}/mayotfs2.bat

