# flake8: noqa

import os.path

# bindings
config.bind('h', 'run-with-count 2 scroll left')
config.bind('j', 'run-with-count 2 scroll down')
config.bind('k', 'run-with-count 2 scroll up')
config.bind('l', 'run-with-count 2 scroll right')

config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
config.bind('<', 'tab-move -')
config.bind('>', 'tab-move +')
config.bind('e', 'set-cmd-text :spawn -u open-many favorites')
config.bind('E', 'set-cmd-text :spawn -u open-many trackers')

config.bind('yy', 'spawn -u yank-clean')
config.bind('Y', 'yank')

config.bind('q', 'set-cmd-text :spawn mpv {url}')

config.unbind('<Ctrl-V>')
config.bind('<Shift-Escape>', 'enter-mode passthrough')

config.bind('O', 'set-cmd-text :open {url}')
config.bind('t', 'set-cmd-text -s :open -t')
config.bind('T', 'set-cmd-text :open -t {url}')
config.bind('s', 'set-cmd-text -s :open d')
config.bind('S', 'set-cmd-text -s :open -t d')

# old bindings on []
config.bind('((', 'navigate prev')
config.bind('))', 'navigate next')

# old bindings on t
config.bind('zPH', 'config-cycle -p -u *://*.{url:host}/* content.plugins ;; reload')
config.bind('zPh', 'config-cycle -p -u *://{url:host}/* content.plugins ;; reload')
config.bind('zPu', 'config-cycle -p -u {url} content.plugins ;; reload')
config.bind('zSH', 'config-cycle -p -u *://*.{url:host}/* content.javascript.enabled ;; reload')
config.bind('zSh', 'config-cycle -p -u *://{url:host}/* content.javascript.enabled ;; reload')
config.bind('zSu', 'config-cycle -p -u {url} content.javascript.enabled ;; reload')
config.bind('zh', 'back -t')
config.bind('zl', 'forward -t')
config.bind('zpH', 'config-cycle -p -t -u *://*.{url:host}/* content.plugins ;; reload')
config.bind('zph', 'config-cycle -p -t -u *://{url:host}/* content.plugins ;; reload')
config.bind('zpu', 'config-cycle -p -t -u {url} content.plugins ;; reload')
config.bind('zsH', 'config-cycle -p -t -u *://*.{url:host}/* content.javascript.enabled ;; reload')
config.bind('zsh', 'config-cycle -p -t -u *://{url:host}/* content.javascript.enabled ;; reload')
config.bind('zsu', 'config-cycle -p -t -u {url} content.javascript.enabled ;; reload')

# settings

c.auto_save.session = True

c.content.host_blocking.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts']
c.content.host_blocking.whitelist = ['piwik.org', 'www.oglaf.com']

c.downloads.location.prompt = False
c.downloads.location.directory = os.path.expanduser('~/downloads')
c.downloads.location.remember = False

c.editor.command = ['em', '{}']

c.fonts.monospace = 'monospace'
c.fonts.completion.category = '11pt bold monospace'
c.fonts.completion.entry = '11pt monospace'
c.fonts.tabs = '11pt monospace'
c.fonts.statusbar = '11pt monospace'
c.fonts.downloads = '11pt monospace'
c.fonts.hints = 'bold 10px monospace'
c.fonts.debug_console = '11pt monospace'
c.fonts.keyhint = '11pt monospace'
c.fonts.messages.error = '11pt monospace'
c.fonts.messages.warning = '11pt monospace'
c.fonts.messages.info = '11pt monospace'
c.fonts.prompts = '11pt monospace'

c.hints.uppercase = True


# settings.html has a typo in hints.next_regexes for >

c.qt.args = ['autoplay-policy=user-gesture-required']

c.session.lazy_restore = True

c.tabs.background = True
c.tabs.new_position.unrelated = 'next'
c.tabs.show = 'never'

c.url.searchengines['d'] = 'https://duckduckgo.com/?q={}'
c.url.searchengines['DEFAULT'] = c.url.searchengines['d']
c.url.searchengines['a'] = 'http://www.amazon.de/gp/search?ie=UTF8&keywords={}&index=blended&linkCode=ur2&camp=1638&creative=6742'
c.url.searchengines['y'] = 'https://www.youtube.com/results?search_query={}&search=Search'
c.url.searchengines['imdb'] = 'http://www.imdb.com/find?s=all&q={}'
c.url.searchengines['g'] = 'https://www.google.com/search?name=f&hl=en&q={}'
c.url.searchengines['maps'] = 'https://maps.google.de/maps?q={}'
c.url.searchengines['disc'] = 'http://www.discogs.com/search?type=all&q={}'
c.url.searchengines['dict'] = 'http://www.dict.cc/?s={}'
c.url.searchengines['we'] = 'https://en.wikipedia.org/wiki/Special:Search?go=Go&search={}'
c.url.searchengines['wd'] = 'https://de.wikipedia.org/w/index.php?title=Spezial:Suche&search={}'
c.url.searchengines['i'] = 'https://www.google.com/search?tbm=isch&q={}'
c.url.searchengines['e'] = 'http://www.ebay.de/sch/i.html?_nkw={}&LH_PrefLoc=3'
c.url.searchengines['r'] = 'https://www.google.com/searchbyimage?sa=G&gbv=2&site=search&image_url={}'
c.url.searchengines['anidb'] = 'http://anidb.net/perl-bin/animedb.pl?show=animelist&adb.search={}&do.search=search'
c.url.searchengines['manga'] = 'http://www.mangaupdates.com/releases.html?act=archive&search={}'
c.url.searchengines['aur'] = 'http://aur.archlinux.org/packages.php?O=0&L=0&C=0&K={}'
c.url.searchengines['pkg'] = 'http://www.archlinux.org/packages/?q={}'
c.url.searchengines['aw'] = 'https://wiki.archlinux.org/index.php/Special:Search?search={}'
c.url.searchengines['ew'] = 'https://duckduckgo.com/?q={}+site%3Aemacswiki.org'
c.url.searchengines['git'] = 'http://github.com/search?q={}'
c.url.searchengines['mdn'] = 'https://developer.mozilla.org/search?q={}'
