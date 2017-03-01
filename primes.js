var current = 3;

while(current < 10000) {
  var test = 2;
  while(test <= current) {
    if (test == current) {
      process.stdout.write(" " + current);
      current++;
      break;
    }

    var ratio = current / test;
    if (ratio % 1 == 0) {
      current++;
      test = 2;
      break;
    } else {
      test++;
    }
  }
}
