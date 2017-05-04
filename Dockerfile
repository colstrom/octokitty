FROM colstrom/ruby

RUN apk-install \
                ca-certificates \
                ruby-json \
    && gem install octokitty \
    && rm -rf /usr/lib/ruby/gems/*/cache/*

RUN GITHUB_ACCESS_TOKEN=BOGUS octokitty --list | while read function; do ln -s $(which octokitty) /usr/local/bin/${function}; done

ENTRYPOINT ["octokitty"]
