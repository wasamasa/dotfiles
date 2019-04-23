Pry.config.correct_indent = false if ENV['EMACS']
Pry.config.prompt = [proc{ ">> " }, proc{ " | " }]