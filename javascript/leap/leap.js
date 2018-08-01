'use strict';
class Year {
  constructor (year) {
    // Set conditional filters
    this.div4 = year % 4 === 0;
    this.div400 = year % 400 === 0;
    this.div100 = year % 100 === 0;
  }

  isLeap () {
    // return TRUE if div4 AND NOT div100 (but only if it isn't div400)
    return ((this.div4) && !(this.div100 && !this.div400));
  }
}

module.exports = Year;
