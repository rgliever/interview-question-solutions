// Ryan Gliever
// Calculates the maximum possible profit from one buy and one sell, given a list of numbers representing the price of a stock
// for that day, where the index represents the day. The buy must come before the sell, and they must not be on the same day.

var getMaxProfit = function(stock_prices) {
  if (stock_prices.length < 2) { return 0; }
  var min_price = stock_prices[0];
  var max_profit = stock_prices[1] - min_price; // base case
  for (var i = 1; i < stock_prices.length; i++) {
    if ((stock_prices[i] - min_price) > max_profit) {
      max_profit = stock_prices[i] - min_price;
    }
    if (stock_prices[i] < min_price) {
      min_price = stock_prices[i];
    }
  }
  return max_profit;
}

var stock_prices = [10, 2, 4, 5, 11, 9, 3]; // returns $9, the result of buying at index 1 ($2) and selling at index 4 ($11)
console.log(getMaxProfit(stock_prices));
