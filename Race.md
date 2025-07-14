# Race Data


## Full Example

```json
{
  "Name" : "Raceial Name",
  "content": "<b>Typical Culture</b>: Highland, Mariner, Noble, Proud, Rural, or Urban.",
  "data-health": {
    "Base Hits": 30,
    "Recovery Mult": "1x",
    "Endurance": 0
  },
  "data-Talents": [
    {
      "Talent": "Cold Resistant"
    }
  ],
  "Bonus DP": 7,
  "data-rrs": {
    "Mentalism": -5,
    "Physical": 10,
    "Fear": 0,
    "Essence": -5,
    "Channeling": -5
  },
  "data-stats": {
    "Reasoning": 0,
    "Agility": 0,
    "Strength": 3,
    "Memory": 1,
    "Self Discipline": 1,
    "Empathy": 1,
    "Intuition": 0,
    "Quickness": -2,
    "Presence": 3,
    "Constitution": 2
  },
  "data-size": {
    "Stride": 1,
    "Height (M)": 77,
    "Height (F)": 72,
    "Weight (F)": 175,
    "Size": "M",
    "Weight (M)": 220,
    "Variance": 5
  }
}
```

## Parts

```json
  "Name":  "Race Name",
```

Name as presented on the sheet.

```json
  "content": "HTML Format description.  You should assume it will be wrapped in a <p> </p> pair.  You may insert your own paragaph breaks (with </p><p>).  Be careful with quotes",
```

Health:
```json
  "data-health": {
    "Base Hits": 30,
    "Recovery Mult": "1x",
    "Endurance": 0
  },
```

The racial base hits.  Required.

Recovery multiplier, in the form of Nx.  So 0.5x or 7x.   Required

Endurance bonus, may be skipped.

```json
  "data-Talents": [
    {
      "Talent": "Cold Resistant"
    }
  ],
```

An array of talent entries.  At the moment no params can be passed to custom race talents.  This is coming with Character Compantion

```json
  "Bonus DP": 7,
```

Bonus DP. Will be added to the characters total.  Required

```json
  "data-rrs": {
    "Mentalism": -5,
    "Physical": 10,
    "Fear": 0,
    "Essence": -5,
    "Channeling": -5
  },
```

RR bonuses.  A 0 may be skipped.  However the data-rrs field is always required.

```json
  "data-stats": {
    "Reasoning": 0,
    "Agility": 0,
    "Strength": 3,
    "Memory": 1,
    "Self Discipline": 1,
    "Empathy": 1,
    "Intuition": 0,
    "Quickness": -2,
    "Presence": 3,
    "Constitution": 2
  },
```

Data-stats is required.  Note that individual stats may be skipped if 0, but this is not recommended.

```json
  "data-size": {
    "Stride": 1,
    "Height (M)": 77,
    "Height (F)": 72,
    "Weight (F)": 175,
    "Weight (M)": 220,
    "Size": "M",
    "Variance": 5
  }
```

Stride bonus in inches.

Height & Weight for "male" and "female" body types are listed.

Size is the racial size.  Single letter code for the Sizes - M for Medium, B for Big, S for Small.
