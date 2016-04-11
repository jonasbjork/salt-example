mysql-server-debconf:
  debconf.set:
    - name: mysql-server
    - data:
        'mysql-server/root_password': {'type': 'string', 'value': 'root'}
        'mysql-server/root_password_again': {'type': 'string', 'value': 'root'}

mysql-server:
  pkg.installed:
    - pkg: mysql
    - require:
      - debconf: mysql-server-debconf

