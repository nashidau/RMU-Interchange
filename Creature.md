# Creature Interchange forms

Single JSON file.

Note the fields are based on the Creature Law data.

We have _some_ documentation here for PC sheets - full support is coming in the future for PCs

## Top Level

Category is what sort of sheet this is.  Creature is the only documented fotmat at the moment.

```json
      "Category": "Creature",
```

```json
  "Name": "Creature Name",
```

## Stats

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

For PCs (not supported yet) you can use:
```json
  "ST": "44/55 (3)"
```

In this format we have:
 - Temporary stat of 44
 - Potential of 55
 - Special or racial bonus of 3

Note the bonus does not include the stat bonus.   The total bonus will be updated by the sheet
automatically.


## Defenses


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

DB: At the moment just the base db. 
```json
  "DB": 34,
```

Level of creature
```json
  "Level": 4,
```
Some creatures have a varaince for Level Varaince.  It is a single Letter.  100% optional.
```json
  "LevelVariance": "B"
```

## Hit Points

Hits.  NOT scaled by size.
```json
  "hits": 4,
```

Addition


Death hits (optional).  At how much damage the creature dies.
```json
   "deathhits": 44,
```

## Other

PP: As expected.  Like hits, this is the maximim.
```json
  "PP": 4,
```

Size: 1-??  5 for medium.  A missing size is assumed to be 5.  This represents a characters
physical size.  Humans are 5.  Trackers/VTT should either scale hits or damage
to match the size.  Small size creatures recieve a DB bonus against physically larger foes.

resistsize: 1-?? (optional).  Certain creatures resist damage as a larger or
smaller creature.  This may be because of densitty, magical effects or some
other property.  Note this is not the same as crit reduction. 

```json
  "size": 4,
  "resistsize": 5,
```


Critreduction (optional).  A common element for nasty RM creatures is crit reduction.
This is similar to resist size - resist size also impacts hits however.  For
compatibility with the book codes we use the same codes.   I,II,III - 1 to 3
levels of critical reduction. 
```json
  "critreduction": 2,
```

Critresist; the codes ! (Immune to stagger, knock back and knock down), @
(Immune to, rules coming, # Immune to bleeding; bleed turns to extra hits).
```json
   "critresist": "!@#",
```

Critical Immunity (optional).  The creature may be immune to a number of critical types.
Each is prefixed by 'P' and is followed by the ciritcal code  Multiple are separated by commas.
This is obviously super optional.
```json
    "critimmunue": "PK, PG",
```


Initiaive modifier 
```json
  "initiative": 4,
```

Fatigue
```json
  "Fatigue": 33,
```

RRs.  Should include own realm bonus and level
```json
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
```json
  "data-move": [
    {
      "type": "walk",
      "pace": "Run",
      "bmr": "22"
    }
  ],
```

Skills.  Name and type.  Optionally a "ranks" field.
```json
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
```json
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

Ranks may also take the value "level" which means the creatures own level.

```json
  "data-spellLists": [
    {
        "list": "Name",
        "ranks": "Number",
        "SCR": "number",
        "mastery": "number",
        "grace": "number",
        "trickery": "number",
    }
  ]
```

A description optionally may be added to a craeature.  This may be biographical
data or about the type of creature.  It is given as HTML; please restrict
formating to p, i, b, and br tags.

```json
  "content" : "<p>Descriptive text</p>",
```

Number encounted.  This is an info field for Creatures.  Generally should not be used on PCs.
Format is a descriptive name and the dice in parenthesis.

```json
  "#Enc": "Solo (1d2)"
```

Variants:  Optional field listing alternative names for the creature.
This is for creatures, not NPCs.

```json
	"variants": "Feathed Rat, Flying Rodent, Rock Dove",
```

Armor description.  A listing of what form a creatures armor takes.  This is generally
something like "hard scales" or "feathers" for animals, else the armor itself.
```json
	"armordescription": "Iron feathers",
```

A description of the size.  Weight and length.
```json
	"sizedescription": "7' wide, weighing 300 lbs"
```

Treasure.  usually a code.  For specific items use inventory items.
```json
	"treasure": "c"
```

Magic realm.  Usually essence, channeling or mentalism.  May be hybrid or arcane realms
```json
	"realm": "Channeling",
```

Category the creature belongs too.
```json
	"creaturecatory": "Animal-Birds"
```

The breeding pattern.  Listed as 'misc' in creature law.
```json
	"family": "Lots of eggs",
```
