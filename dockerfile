FROM circleci/python:3.7.2

RUN sudo apt-get update && sudo apt-get install -y ruby-full && \
    sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    sudo apt-get autoremove -y && \
    sudo apt-get clean

RUN sudo gem install hiptest-publisher

CMD ["/bin/sh"]