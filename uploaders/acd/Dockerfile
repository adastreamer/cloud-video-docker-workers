FROM ubuntu:14.04
RUN \
  apt-get install -y python3-setuptools git;\
  easy_install3 pip;\
  pip3 install --upgrade git+https://github.com/yadayada/acd_cli.git;\
  mkdir -p ~/.cache/acd_cli && touch ~/.cache/acd_cli/oauth_data
ADD start.sh /bin/
CMD ["/bin/start.sh"]
