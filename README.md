# Stumble Duel!
<p align="center"><img style="border-radius:15px" src="https://picon.ngfiles.com/946000/flash_946842_card.webp?f1726289607"></p>


Available to play [here](https://gx.games/games/qj03ll/stumble-duel/)!
Made in the GameMaker game engine, Stumble Duel is a physics-based fighting game where players rapidly move back and forth to stay balanced and knock each other over! 
**Be careful!** You have to keep your center of balance supported. Make sure to move in the direction that offsets any leaning.

Every round you win, you grow bigger (and become harder to balance). First to win 3 rounds takes the crown! Can be played Singleplayer or Local-Multiplayer

## Controls
- [ A ] Player 1 move left
- [ D ] Player 1 move right

- [ Left ] Player 2 move left
- [ Right ] Player 2 move right

## If You're Here for the Code...
The meaningful stuff can be found in [/stumble-duel/objects](/stumble-duel/objects)

Most of the objects are just UI elements, but here are the notable ones:
- [objPlayerUpper](/stumble-duel/objects/objPlayerUpper): controls Player 1 movement and collisions between players
- [objEnemyUpper](/stumble-duel/objects/objEnemyUpper): controls Player 2/AI movement
- [objCurtain](/stumble-duel/objects/objCurtain): controls game logic and transitions between rounds (the stuff the happens when the curtain falls; i.e. resetting players back to starting positions, making the winner of the previous round grow, etc.)

### How to Run
You can play Stumble Duel [here](https://gx.games/games/qj03ll/stumble-duel/), or you can run it on your machine by downloading the repo and opening [/stumble-duel/stumble-duel.yyp](/stumble-duel/stumble-duel.yyp) in the [GameMaker game engine](https://gamemaker.io/en/download).

## Credits (all Free-to-Use assets)
- Soundtrack: spliced from [Party's Cancelled - RoccoW](https://youtu.be/9H4lxOs6YGY?si=XnyLXV9PYMlnAshk) ([CC by 3.0](https://creativecommons.org/licenses/by/3.0/))
- Cheering loop: https://freesound.org/people/mglennsound/sounds/678545/ ([CC0](https://creativecommons.org/publicdomain/zero/1.0/))
- Sword clash effect: [heavy_sword_hit_w_ringout_03_01142023.mp3 by Artninja](https://freesound.org/people/Artninja/sounds/699986/) ([CC by 4.0](https://creativecommons.org/licenses/by/4.0/))
- Cursor assets: https://kenney.nl/assets/cursor-pixel-pack ([CC0](https://creativecommons.org/publicdomain/zero/1.0/))

All other assets and code made by Ifedolapo Shiloh Olotu

Originally made in 96 hours the GMTK 2024 Game Jam! Original submission available [here](https://itch.io/jam/gmtk-2024/rate/2912599)
