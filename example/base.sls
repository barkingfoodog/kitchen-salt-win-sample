{% set provisioner_name = pillar["example"]["provisioner_name"] %}

example_directory:
  file.directory:
    - name: C:/kitchen_salt/example
    - makedirs: true

example_file:
  file.managed:
    - name: C:/kitchen_salt/example/managed_file.txt
    - template: jinja
    - source: salt://example/files/managed_file.txt
    - context:
      provisioner_name: {{ provisioner_name }}
    - require:
      - file: example_directory