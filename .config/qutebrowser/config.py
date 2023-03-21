import catppuccin

config.load_autoconfig()

## THEME
catppuccin.setup(c, 'mocha')
c.url.searchengines = {'DEFAULT': 'https://search.brave.com/search?q={}',
                       'yt': 'https://www.youtube.com/search?q={}',
                       'imdb': 'https://www.imdb.com/find/?q={}',
                       'arch': 'https://wiki.archlinux.org/index.php?search={}'}
c.url.start_pages = 'https://search.brave.com'

c.aliases = {
    "mpv": "spawn -d mpv --force-window=immediate {url}"
}
c.completion.height = "20%"
c.confirm_quit = ["downloads"]
c.content.proxy = "none" # Setup a proxy

c.downloads.location.directory = "~/Downloads"
c.downloads.location.prompt = True 
c.editor.command = ["emacs '{}'"]

monospace = "18px 'TerminessTTF Nerd Font'"
c.fonts.completion.entry = monospace
c.fonts.downloads = monospace
c.fonts.keyhint = monospace
c.fonts.prompts = monospace
c.fonts.statusbar = monospace
c.fonts.prompts = monospace
c.fonts.tabs.selected = monospace
c.fonts.tabs.unselected = monospace

c.hints.chars = "asdfghjklie"
c.input.insert_mode.auto_leave = True

c.scrolling.smooth = False
c.tabs.background = True

c.tabs.padding = {
    "left": 5,
    "right": 5,
    "top": 0,
    "bottom": 1,
}

c.url.default_page = "http://vesuvius.lan:5000/"

c.colors.webpage.darkmode.enabled = True
#c.content.user_stylesheets = "user.css"
