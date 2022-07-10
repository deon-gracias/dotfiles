import os

config.load_autoconfig()

c.downloads.location.directory = "~/Downloads/"
c.qt.args += " disable-features=InstalledApp"
c.qt.args += ' /home/drako/bin/libwidevinecdm.so'
c.qt.args += 'enable-features=WebRTCPipeWireCapturer'
#c.qt.process_model = 'process-per-site-instance'

c.tabs.padding = {
        "bottom": 5,
        "left": 5,
        "right": 5,
        "top": 5
}
c.tabs.show = 'always'
c.tabs.show_switching_delay = 1500
# c.scrolling.smooth = True
c.qt.chromium.low_end_device_mode = "never"

c.completion.shrink = True
c.content.pdfjs = True

bindings = {
    "<Ctrl+Tab>": "tab-next",
    "<Ctrl+Shift+Tab>": "tab-prev",
    "<F1>": "spawn --detach mpv {url} --force-window --keep-open", # --gpu-api=vulkan --gpu-context=waylandvk # Vulkan is bugged right now

    # In case the page grabs our arrow keys
    "<Alt+j>": "scroll-px 0 50",
    "<Alt+k>": "scroll-px 0 -50",

    # for half pages
    "<Alt+Shift+j>": "scroll-px 0 300",
    "<Alt+Shift+k>": "scroll-px 0 -300",


    "J": "scroll-px 0 600",
    "K": "scroll-px 0 -600",
}

delBindings = [
        "J", "K"
]


for binding in delBindings:
    config.unbind(binding)

for key, bind in bindings.items():
    config.bind(key, bind)

# === Fingerprinting ===
c.content.headers.user_agent = "Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101 Firefox/68.0"
c.content.headers.accept_language = "en-US,en;q=0.5"
c.content.headers.custom = { "accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" }
c.content.canvas_reading = False
c.content.webgl = False
c.content.blocking.method = "both"

# === Search Engine ===
c.url.searchengines['DEFAULT'] = "https://searx.be/search?q={}&categories=general"

# === Homepage ===
c.url.start_pages = ["https://searx.be"]

# === Window ===
c.window.hide_decoration = True
