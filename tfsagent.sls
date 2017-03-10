
{% set agents = [
    {'name': 'Agent1'},
    {'name': 'Agent2'}
    ] %}

{% set serverurl = 'https://tfsint.mayo.edu/tfs' %}
{% set serviceaccount = 'mfad\tu05705' %}
{% set servicepassword = pillar.get('tfs.password', '') %}

{% for agent in agents %}
"Deploy {{ agent.name }} Agent script":
  archive.extracted:
    - name: 'd:\{{ agent.name }}\'
    - source: salt://{{ slspath }}/agent.zip
    - enforce_toplevel: False

"Execute {{ agent.name }} Agent install":
  cmd.script:
    - source: salt://{{ slspath }}/mayotfs.bat
    - template: jinja
    - defaults:
        AGENT-NAME: {{ agent.name }}
        SERVER-URL: {{ serverurl }}
        SERVICE-ACCOUNT: {{ serviceaccount }}
        SERVICE-PW: {{ servicepassword }}

{% endfor %}



