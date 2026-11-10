# Kitchen Quest: a game-style cooking course (Maison Étoile)

Learn the technique, win the quest, unlock the dish. Pure Python (standard library only) + HTML + CSS.

## Run it (new address: http://127.0.0.1:9137)
1. Open this folder in VS Code.
2. Open `play_kitchen_quest.py` and press Run, or in the terminal type: `python play_kitchen_quest.py`
   (Windows: double-click `start.bat`. Mac/Linux: `./start.sh`.)
3. The terminal prints **OPEN THIS ADDRESS: http://127.0.0.1:9137** and your browser opens it.
4. Press Ctrl+C in the terminal to stop.

## Still landing on localhost:8123?
That is an OLD site, still running or suggested by your browser.
- Run `close-old-sites.bat` (Mac/Linux: `./close-old-sites.sh`), then start Kitchen Quest again.
- Type the full address `http://127.0.0.1:9137` yourself. Browsers auto-complete "localhost" to pages you visited before.
- The footer says "Kitchen Quest v1 · you are on 127.0.0.1:9137", and http://127.0.0.1:9137/whoami shows the version and folder that are running.

## How the game works
- 5 worlds, 3 quests each. A quest = a chef's lesson, tutorials from different chefs (YouTube searches) and one challenge question.
- First-try correct answer: +10 XP. Correct on a retry: +5 XP. Cooking a dish ("I cooked it"): +25 XP.
- Finish a world's quests to unlock its dishes, then open the full recipe: food science, technique, recipe, videos.
- Ranks: Kitchen Rookie, Commis, Chef de Partie, Sous Chef, Head Chef, Michelin Star.
- Progress is saved in `saves/progress.json`. "Reset my progress" on the My Progress page starts again.

## Folder structure
```
kitchen_quest/
├─ play_kitchen_quest.py     start here
├─ start.bat / start.sh      launchers
├─ close-old-sites.bat / .sh stops old copies on ports 8000, 8123, 5050, 5100, 7777
├─ content/                  all the words (no logic)
│  ├─ quests.py              worlds, quests, quizzes, ranks, XP values
│  ├─ recipes.py             ingredients, steps, chef's note
│  └─ recipe_lessons.py      food science and technique text for each recipe
├─ kitchen_quest/            the program
│  ├─ settings.py            name, address (PORT), folders
│  ├─ web.py                 Request/Response, router, static files, server
│  ├─ routes.py              which URL does what
│  ├─ pages.py               builds each page
│  ├─ game.py                quests, unlocks, XP, ranks
│  ├─ store.py               saves progress to JSON
│  ├─ library.py             finds dishes and photos
│  └─ templating.py          fills the HTML templates
├─ web/
│  ├─ templates/             base.html, pages/, parts/
│  └─ static/                css/main.css, img/hero.jpg, img/dishes/<slug>.jpg
└─ saves/progress.json       created when you play
```

## Change things
- **Address:** edit `PORT` in `kitchen_quest/settings.py`.
- **New quest or question:** edit `content/quests.py`.
- **Swap a photo:** replace `web/static/img/dishes/<slug>.jpg`. The header picture is `web/static/img/hero.jpg`.
