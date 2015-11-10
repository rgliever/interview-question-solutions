// Ryan Gliever
// Temp Tracker with O(1) lookup times for maximum, minimum, mean and mode temperatures. Constant space since temperatures
// can only be in the range 0-110.

var TempTracker = class TempTracker {
  // initialize
  constructor() {
    this.temps = new Array(110+1).join('0').split('').map(parseFloat);
    this.max = 0;
    this.mode = 0;
    this.num_rec_temps = 0;
    this.mean = 0.0;
    this.min = 110;
  }
  
  insert(temp) {
    if (temp > 0 && temp < 110) { // valid temperature
      this.temps[temp] += 1;
      this.max = temp > this.max ? temp : this.max;
      this.min = temp < this.min ? temp : this.min;
      if (this.num_rec_temps == 0) {
        this.mean = temp / 1.0;
      } else {
        this.mean = ((this.mean*this.num_rec_temps) + temp) 
                    / (this.num_rec_temps + 1);
      }
      this.num_rec_temps += 1;
      if (this.temps[temp] > this.temps[this.mode]) {
        this.mode = temp;
      }
    } else {
      console.log(temp + " is not a valid temperature; please enter a value in the range 0-110");   
    }
  }
  
  get_max() {
    return this.max;
  }
  
  get_min() {
    return this.min;
  }
  
  get_mean() {
    return this.mean;
  }
  
  get_mode() {
    return this.mode;
  }
}

var tt = new TempTracker();
tt.insert(7);
tt.insert(22);
tt.insert(22);
tt.insert(100);
tt.insert(65);
tt.insert(100);
tt.insert(22);
tt.insert(54);
tt.insert(555); // invalid temp
console.log("Max: " + tt.get_max());
console.log("Min: " + tt.get_min());
console.log("Mean: " + tt.get_mean());
console.log("Mode: " + tt.get_mode());
