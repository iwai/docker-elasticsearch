FROM elasticsearch:2.2

ENV PATH /usr/share/elasticsearch/bin:$PATH

RUN set -x \
    && /usr/share/elasticsearch/bin/plugin install license \
    && /usr/share/elasticsearch/bin/plugin install marvel-agent \
    && /usr/share/elasticsearch/bin/plugin install analysis-icu \
    && /usr/share/elasticsearch/bin/plugin install analysis-kuromoji \
    && /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head

VOLUME /usr/share/elasticsearch/data

EXPOSE 9200 9300
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["elasticsearch"]
