Profession format is fairly simple

Optionall a Name field.  This is generally useful, but not needed if part of a data transfer.
```json
  "Name": "Toastmancer",
```

```json
  "content": "A HTML desciption of the profession",
```

The realm of the profession.  'None' for Arms users who can then select their realm.
Hybrids have their realms separated by '/' in alphabetical order.  
```json
  "Realm": "Essence",
```

If the profession's realm is 'Arcane', then they may also be able to select
aspects.   If so the profession will have an Aspects field.  The Aspects field
is a list of types of Aspects the profession can select from.  The two possible
values are "Preferred" or "Regular".

```json
Aspects = "Preferred",
```

```json
Aspects = "Preferred,Regular",
```


Category costs are in an object 'data-skillCost' based on the English standard names.
This does NOT include the weapon or spell costs.
```json
 "data-skillCost": {
    "Battle Expertise": "7/10",
    "Body Discipline": "6/8",
    "Gymnastic": "4/6",
    "Combat Expertise": "7/10",
    "Crafting": "1/2",
    "Power Manipulation": "2/3",
    "Brawn": "6/8",
    "Composition": "2/4",
    "Performance Art": "3/4",
    "Delving": "1/2",
    "Technical": "2/4",
    "Awareness": "3/5",
    "Magical Expertise": "2/4",
    "Vocation": "3/4",
    "Lore": "1/2",
    "Social": "3/4",
    "Environmental": "4/6",
    "Science": "3/4",
    "Animal": "3/5",
    "Mental Discipline": "4/6",
    "Movement": "4/6",
    "Medical": "4/6",
    "Subterfuge": "6/8"
  },
```

Weapon skills are in 'data-CombatTraining'
```json
  "data-CombatTraining": {
    "Combat Training 4": "15/20",
    "Combat Training 1": "5/7",
    "Combat Training 3": "9/12",
    "Combat Training 2": "6/8"
  },
```

Professional skills are in an array in order.  Each is a single object with the skill name.
```json
  "data-knacks": [
    {
      "knack": "Attunement"
    },
    {
      "knack": "Drawing/Painting"
    },
    {
      "knack": "Fabric Craft"
    },
    {
      "knack": "Grace"
    },
    {
      "knack": "Leathercraft"
    },
    {
      "knack": "Magical Ritual"
    },
    {
      "knack": "Materials Lore"
    },
    {
      "knack": "Metalcraft"
    },
    {
      "knack": "Power Development"
    },
    {
      "knack": "Spell Lore"
    },
    {
      "knack": "Stonecraft"
    },
    {
      "knack": "Woodcraft"
    },
    {
      "knack": "Open Spell Lists"
    },
    {
      "knack": "Closed Spell Lists"
    },
    {
      "knack": "Base Spell Lists."
    }
  ],
```

Spell casting costs are listed.
```json
  "data-Spellcasting": {
    "Restricted": "6/8",
    "Closed": "2/4",
    "Arcane": "5/7",
    "Magic Ritual": "1/3",
    "Base": "1/2",
    "Open": "1/2"
  }
```

Base lists are an array of names of the base lists.  Non spell users obviously don't have this field. 
```json
  "data-baseLists" : [
    "Toast Mastery", "Bread Law", "Cheese Ways", "Brewing", "Other Realm Brewing", "Hangover"
  ]
```
