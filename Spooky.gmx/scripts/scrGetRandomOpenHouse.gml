/// scrGetRandomOpenHouse()

var numHouses = instance_number(objHouse);
var houseList;
var houseCount = 0;
with(objHouse) {
  if(self.state != HOUSESTATE_CLOSED) {
    houseList[houseCount] = self.id;
    houseCount++;
  }
}

if(houseCount > 0)
  return houseList[irandom(houseCount - 1)];
else 
  return noone;
