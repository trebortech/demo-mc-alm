
"Deploy TFS Agent script":
  archive.extracted:
    - name: 'd:\agent1\'
    - source: salt://{{ slspath }}/agent.zip
    - enforce_toplevel: False
    - use_cmd_unzip: True