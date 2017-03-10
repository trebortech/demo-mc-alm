"Deploy TFS Agent script":
  archive.extracted:
    - name: 'd:\'
    - source: salt://{{ slspath }}/agent.zip
    - use_cmd_unzip: True