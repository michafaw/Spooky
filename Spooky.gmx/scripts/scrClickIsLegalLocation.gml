///scrClickIsLegalLocation(mouseX, mouseY)

var mouseX = argument0;
var mouseY = argument1;

// Check costume selectors
if(collision_point(mouseX, mouseY, objCostumeSelector, false, false)) {
  return false;
}

return true;

