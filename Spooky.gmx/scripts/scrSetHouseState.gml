/// scrSetHouseState(house, state)

var house = argument0;
var state = argument1;

with(house) {
  switch (state) {
    case HOUSESTATE_NORMAL:
      sprite_index = sprHouse;
      alarm[0] = -1;
      break;
    case HOUSESTATE_OPEN:
      sprite_index = sprHouseOpen;
      alarm[0] = openDoorTimerLength;
      break;
    case HOUSESTATE_SCARED:
      sprite_index = sprHouseOpen;
      alarm[0] = -1;
      alarm[1] = scaredTimerLength;
      // Play scream --  Micha TODO
      // Show thumbs up --  Micha TODO
      break;
    case HOUSESTATE_CLOSED:
      sprite_index = sprHouseScared;
      alarm[0] = -1;
      alarm[1] = -1;
      // Remove doormat
      with(frontDoor) {
        instance_destroy();
      }
      frontDoor = noone;
      break;
  }
}
