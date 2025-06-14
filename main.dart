void main() {
  // Sample list of item prices
  List<double> itemPrices = [15.99, 9.99, 24.50, 5.25, 12.75, 8.50, 19.99];

  print(
      "Original prices: \$ ${itemPrices.map((p) => p.toStringAsFixed(2)).join(', ')}");

  // Filter out items under $10 using anonymous function
  var filteredPrices = itemPrices.where((price) => price >= 10).toList();
  print(
      "Prices after filtering (≥ \$10): \$ ${filteredPrices.map((p) => p.toStringAsFixed(2)).join(', ')}");

  // Define discount function
  double tieredDiscount(double price) =>
      price > 20 ? price * 0.85 : price * 0.95;

  // Apply discounts using higher-order function
  var discountedPrices = applyDiscount(filteredPrices, tieredDiscount);
  print(
      "Prices after tiered discount: \$ ${discountedPrices.map((p) => p.toStringAsFixed(2)).join(', ')}");

  // Calculate total with tax
  double total = calculateTotal(discountedPrices, taxRate: 0.08);
  print("Subtotal with tax (8%): \$ ${total.toStringAsFixed(2)}");

  // Apply special factorial discount
  int itemCount = discountedPrices.length;
  double factorialDiscount = calculateFactorialDiscount(itemCount);
  double finalTotal = total * (1 - factorialDiscount / 100);

  print("Special factorial discount for $itemCount items: $factorialDiscount%");
  print("Final total: \$ ${finalTotal.toStringAsFixed(2)}");
}

// Standard function to calculate total with optional tax
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double subtotal = prices.fold(0, (sum, price) => sum + price);
  return subtotal * (1 + taxRate);
}

// Higher-order function to apply discount
List<double> applyDiscount(
    List<double> prices, double Function(double) discountFn) {
  return prices.map(discountFn).toList();
}

// Recursive function for factorial discount
double calculateFactorialDiscount(int n) {
  if (n <= 1) return 1.0;
  return n * calculateFactorialDiscount(n - 1);
}
