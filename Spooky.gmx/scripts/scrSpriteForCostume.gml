/// scrSpriteForCostume(costume)

var costume = argument0;

switch(costume) {
  case COSTUME_GHOST:
    return sprGhostCostume;
    break;
  case COSTUME_FRANKENSTEIN:
    return sprFrankensteinCostume;
    break;
  case COSTUME_VAMPIRE:
    return sprVampireCostume;
    break;
  case COSTUME_WEREWOLF:
    return sprWerewolfCostume;
    break;
  default:
    return sprGhostCostume;
    break;
}
