
{% set agents = [
    {'name': 'Agent7'},
    {'name': 'Agent8'}
    ] %}

{% set serverurl = 'https://tfsint.mayo.edu/tfs' %}
{% set serviceaccount = 'mfad\\\\tu05705' %}

{% for agent in agents %}
"Deploy {{ agent.name }} Agent script":
  archive.extracted:
    - name: 'd:\{{ agent.name }}\'
    - source: salt://{{ slspath }}/agent.zip
    - enforce_toplevel: False

"Execute {{ agent.name }} Agent install":
  file.managed:
    - name: 'd:\{{ agent.name }}\mayotfs.bat'
    - source: salt://{{ slspath }}/mayotfs.bat
    - template: jinja
    - defaults:
        AGENTNAME: {{ agent.name }}
        SERVERURL: {{ serverurl }}
        SERVICEACCOUNT: "{{ serviceaccount }}"
        SERVICEPW: "{{ pillar['tfs']['password'] }}"
        LOCALHOST: "{{ grains['localhost'] }}"

{% endfor %}



