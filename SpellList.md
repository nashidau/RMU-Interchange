# Spell list for RMU Roll20

The name of the spell list
```json
  "Name": "Pasta Ways",
```

Then some data about the spell list:

```json
  "ListType": "Open Essence",
  "Realm" : "Essence",
  "Subtype": "Open",
```

For base lists the subtype is "${PROFESSION NAME} Base",


For Non-base Arcane there is an aspect list:
```json
  "data-aspects": [ { "aspect" : "Aspect Name" } ],
```

If the spell list has notes:
```json
  "data-notes": [
   { "id": 1, "note": "The text of the note" }
  ]
```

The id file and note are required.


The spells themselves are a in a big list.  Each level should be represented.  At this time roll20 does not support multiple spells at the same level.
```json
  "data-spell": [
    { .... spell info here }
    { .... second spell ... }
  ]
```

The format of each spell is:
```json
  {
     "level": 1,
     "name": "Pair Wine",
     "aoe": "1 bowl of pasta",
     "duration": "-",
     "range": "1'",
     "type": "I",
     "desciption": "Indicates the best wine to pair with the target pasta."
  },
```

All the above fields are required.   Name must be unique across the list.

Spells referring to other spells should follow the format of:
```
  "As <em>Lower Level Spell</em>, except..."
```

Optionally the following fields may be present:
```json
  {
     "nopp": true,
     "instant": true,
     "rrmod": -20
  }
```

If not present assumed to be false, false and 0 respectively.
