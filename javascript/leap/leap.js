'use strict';
class Year {
  constructor (year) {
    // Set conditional filters
    this.div4 = year % 4 === 0;
    this.div400 = year % 400 === 0;
    this.div100 = year % 100 === 0;
  }

  isLeap () {
    // if it's div4 AND NOT div100 (but only if it isn't div400)
    if ((this.div4) && !(this.div100 && !this.div400)) {
      return true;
    } else {
      return false;
    }
  }
}

module.exports = Year;
