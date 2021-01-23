# example based on https://docs.ruby-lang.org/en/3.0.0/doc/syntax/pattern_matching_rdoc.html

def connect(config)
  case config
    in db: {user:} # matches subhash and puts matched value in variable user
      puts "Connect with user '#{user}'"
    in connection: {username: }
      puts "Connect with user '#{username}'"
    else
      puts "Unrecognized structure of config"
    end
end

connect(db: {user: 'admin', password: 'abc123'})