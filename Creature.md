# Creature Interchange forms

Single JSON file.

Note the fields are based on the Creature Law data.

Category is what sort of sheet this is.  Creature is the only documented fotmat at the moment.

```json
      "Category": "Creature",
```

```json
  "Name": "Creature Name",
```

The stats:  Just the stat bonus.  Temps/Potentials are ignored.  Ravial modigiers should be incuded. 

```
  "AG": 4,
  "CO": 4,
  "EM": 4,
  "IN": 4,
  "ME": 4,
  "PR": 4,
  "QU": 4,
  "RE": 4,
  "SD": 4,
  "ST": 4,
```

Optionally you can supply the original stats.  Note Self Discipline is "SelfDiscipline" - no space

(Ver .2)
Stats can also be in the form of AG: Temp (Bonus)
```
  "AG": "47 (4)",
  "CO": "87 (7)",
  "EM": "12 (-4)",
```

AT: Can either be a number  (1-10).
```json
  "AT": 5,
```
else it can have AT at the front
```json
  "AT": "AT 3",
```
  Or 4 numbers for piecemeal: 1,3,10,4.  Order is Torso, Head, Arms, Legs
```json
  "AT": "1,5,3,3"
```

DB: At the moment just the normal db. 

  "DB": 34,

Level of critical reduction.  Should be a nubmer from 0-3.   This field is optional.  A zero is assumed
otherwise.
```json
  "critreduction": 2,
```

Level of creature
```json
  "level": 4,
```

Hits.  NOT scaled by size.
```json
  "hits": 4,
```

Death hits (optional).  At how much damage the creature dies.
```json
   "deathhits": 44,
```

PP: As expected.  Like hits, this is the maximim.
```json
  "PP": 4,
```

Size: 1-??  5 for medium.  A missing size is assumed to be 5.  Trackers should
either skill hits or damage to match the size.
```
  "size": 4,
```


Initiaive modifier 
```
  "initiative": 4,
```

Fatigue
```
  "Fatigue": 33,
```

RRs.  Should include own realm bonus and level
```
  "Ch": 4,
  "Ess": 4,
  "Mnt": 4,
  "Phy": 4,
  "Fear": 4,
```

List of attacks.   Attack is OB, Size Letter (Size Number), type of the attack.  Additonal codes may follow; currently undocumented (for secondary attacks etc).  
```json
  "data-attack": [
    {
      "attack": "34B(6)ra"
    },
    {
      "attack": "34M(5)cl"
    }
  ],
```

List of movements.
```
  "data-move": [
    {
      "type": "walk",
      "pace": "Run",
      "bmr": "22"
    }
  ],
```

Skills.  Name and type.  Optionally a "ranks" field.
```
  "data-skills": [
    {
      "skill": "Running",
      "bonus": 43,
      "ranks": 7
    }
  ],
```
Optionally they can include "ranks" with a numeric ranks.

List of talents: Currently underspecified - this will get updated.
```
  "data-talents": [
    {
      "talent": "Animalistic"
    }
  ],
```
}

Spells.  Name, Ranks and SCR.  Optionally mastery.  SCR should take into account all base modifiers (armor, special modifiers, etc)
Note the capital L for lists.  Optionally trickery and grace fields can be included - these should be the base.

List and ranks are required.   All other fields are optional.

```json
  "data-spellLists": [
    {
        list: Name
        ranks: Number
        SCR: number
        mastery: number
        grace: number
        trickery: number
  ]
```

A description may be added to a craeature.  This may be biographical data or about the type of creature.  It is given as HTML; please restrict formating to <p>, <i>, <b> & <br>.

```json
  "content" : "<p>Descriptive text</p>",
```

Number encounted.  This is an info field for Creatures.  Generally should not be used on PCs.
Format is a descriptive name and the dice in parenthesis.

```json
  "#Enc": "Solo (1d2)"
```
