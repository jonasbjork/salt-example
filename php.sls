php5:
  pkg.installed:
    - pkgs:
      - libapache2-mod-php5
      - php5-mysql
      - php5-cli
    - require:
      - pkg: apache2
