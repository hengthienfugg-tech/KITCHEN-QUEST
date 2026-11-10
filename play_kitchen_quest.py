"""Start Kitchen Quest:  python play_kitchen_quest.py   (opens http://127.0.0.1:9137 in your browser)"""
import sys

from kitchen_quest import library, web
from kitchen_quest.routes import not_found, router

if __name__ == "__main__":
    missing = library.missing_photos()
    notes = "%d dishes" % len(library.shown_dishes()) + (" | no photo yet: " + ", ".join(missing) if missing else "")
    web.run(router, not_found, notes, open_browser="--no-browser" not in sys.argv)
