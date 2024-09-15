# Creature Interchange forms

Single JSON file.

Note the fields are based on the Creature Law data.

Category is what sort of sheet this is.  Creature is the only documented fotmat at the moment.

      "Category": "Creature",


  "Name": "Creature Name",

The stats:  Just the stat bonus.  Temps/Potentials are ignored.  Ravial modigiers should be incuded. 

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

AT: Can either be a number  (1-10).
  Or "AT 1"
  Or 4 numbers for piecemeal: 1,3,10,4.  Order is Torso, Head, Arms, Legs

  "AT": 4,

DB: At the moment just the normal db. 

  "DB": 34,

Level of critical reduction.  Should be a nubmer from 0-3.   This field is optional

  "critreduction": 2,

Level of creature
  "level": 4,

Hits.  NOT scaled by size.
  "hits": 4,

  "PP": 4,

Size: 1-??  5 for medium 
  "size": 4,

Initiaive modifier 
  "initiative": 4,

Fatigue
  "Fatigue": 33,

RRs.  Should include own realm bonus and level
  "Ch": 4,
  "Ess": 4,
  "Mnt": 4,
  "Phy": 4,
  "Fear": 4,


List of attacks.   Attack is OB, Size Letter (Size Number), type of the attack.  Additonal codes may follow; currently undocumented (for secondary attacks etc).  
  "data-attack": [
    {
      "attack": "34B(6)ra"
    },
    {
      "attack": "34M(5)cl"
    }
  ],


List of movements.
  "data-move": [
    {
      "type": "walk",
      "pace": "Run",
      "bmr": "22"
    }
  ],


Skills.  Name and type.  
  "data-skills": [
    {
      "skill": "Running",
      "bonus": 43
    }
  ],

List of talents: Currently underspecified - this will get updated.
  "data-talents": [
    {
      "talent": "Animalistic"
    }
  ]
}
