
function validateculture(name, culture)
  local knowncultureskills = { animalhandling = 2, riding = 2, perception = 2, tracking = 2,
        maneuveringinarmor = 2, bodydevelopment = 2, weighttraining = 2, unarmed = 2,
        meleeweapons = 2, rangedweapons = 2, compositionperf = 4, craftingvocation = 8,
        navigation = 2, piloting = 2, survival = 2, acrobatics = 2, jumping = 2, flying = 2,
        attunement = 2,
        regionown = 5, regionneighbour = 4, religionphilosophy = 3, lores = 8,
        herbalism = 2, medicine = 2, poisonmastery = 2, meditation = 2,
        climbing = 2, running = 2, swimming = 2,
        influence = 2, socialawareness = 2, trading = 2, concealment = 2, stalking = 2,
        languages = 20,
      };
  for _, skillpair in ipairs(culture['data-skills']) do
    local skill = skillpair.skill
    local ranks = skillpair.ranks
    if not knowncultureskills[skill] then
      warning("Unknown culture skill", skill, name)
    elseif ranks > knowncultureskills[skill] then
      warning("Too many ranks", ranks, skill, "Limit", knowncultureskills[skill])
    end
  end
  if not culture.content then
    warning("Culture does not have content", name)
  end

end
