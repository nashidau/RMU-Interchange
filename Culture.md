# Cultures

The culture format is quite simple.  A culture consists of a description and
a list of skills.

The description is in the "content" section.  This should be a HTML snipped (if
ingesting into a VTT, it may be a markdown snipped.

The content should include a section on Crafts & Vocations.  Both should
start a new paragraph, and title word should be bolded.

```json
  "content": "<p>Small settlements along the ocean shore (or possibly very large lakes) foster\n      the coastal culture. While mariner is the culture of ships and port cities, with commerce\n      to distant lands, coastal is the culture of small fishing villages whose fishing boats\n      do not travel far. It is rural where mariner is urban.</p>\n      <p><b>Crafts</b>: Culinary (cook, brewer), Fabric Craft (tailor, seamstress, \n      rope braider), Leathercraft (leather worker, armorer), Metalcraft (blacksmith,\n      weapon smith, armorer), Woodcraft (carpenter, boat wright, cooper).</p>\n      <p><b>Vocations</b>: Sailor, fisherman, chandler, sailmaker, rope maker.</p>"
```

Then the rest of the document is a "data-skills" array.  It is an array
of objects each with the skill and the ranks.
Older versions used the 'aname' used by roll20, but the English name will
also work.

Each item is the name of the skill with the key skill and the number of
ranks (as a number).

```json
  "data-skills": [
    {
      "skill": "animalhandling",
      "ranks": 1
    },
    {
      "skill": "perception",
      "ranks": 1
    },
    {
      "skill": "bodydevelopment",
      "ranks": 1
    },
    {
      "skill": "weighttraining",
      "ranks": 1
    },
    {
      "skill": "unarmed",
      "ranks": 1
    },
    {
      "skill": "compositionperf",
      "ranks": 1
    },
    {
      "skill": "craftingvocation",
      "ranks": 4
    },
    {
      "skill": "piloting",
      "ranks": 1
    },
    {
      "skill": "navigation",
      "ranks": 1
    },
    {
      "skill": "survival",
      "ranks": 1
    },
    {
      "skill": "jumping",
      "ranks": 1
    },
    {
      "skill": "regionown",
      "ranks": 5
    },
    {
      "skill": "languages",
      "ranks": 12
    },
    {
      "skill": "lores",
      "ranks": 5
    },
    {
      "skill": "herbalism",
      "ranks": 1
    },
    {
      "skill": "medicine",
      "ranks": 1
    },
    {
      "skill": "climbing",
      "ranks": 1
    },
    {
      "skill": "running",
      "ranks": 1
    },
    {
      "skill": "swimming",
      "ranks": 2
    },
    {
      "skill": "influence",
      "ranks": 1
    },
    {
      "skill": "socialawareness",
      "ranks": 1
    },
    {
      "skill": "trading",
      "ranks": 1
    }
  ],
```
