# Dart Price Processing Example

This project demonstrates several Dart programming concepts using a simple price processing scenario. The code is in `main.dart`.

## Features
- **Filtering**: Filters out item prices below $10 using an anonymous function.
- **Higher-Order Functions**: Applies tiered discounts to prices using a function passed as an argument.
- **Custom Discount Logic**: Applies a 15% discount for items over $20, and 5% for others.
- **Subtotal Calculation**: Calculates the total price with an optional tax rate.
- **Recursive Function**: Calculates a special factorial-based discount based on the number of items.

## Code Overview
- `main()`
  - Defines a list of item prices.
  - Filters out prices less than $10.
  - Applies a tiered discount (15% for >$20, 5% otherwise).
  - Calculates the subtotal with 8% tax.
  - Applies a special factorial discount based on the number of items.
  - Prints each step's results.
- `calculateTotal(List<double> prices, {double taxRate = 0.0})`
  - Sums the prices and applies the tax rate.
- `applyDiscount(List<double> prices, double Function(double) discountFn)`
  - Applies a discount function to each price.
- `calculateFactorialDiscount(int n)`
  - Recursively calculates the factorial of `n` (used as a percentage discount).

## Example Output
```
Original prices: $ 15.99, 9.99, 24.50, 5.25, 12.75, 8.50, 19.99
Prices after filtering (≥ $10): $ 15.99, 24.50, 12.75, 19.99
Prices after tiered discount: $ 15.19, 20.83, 12.11, 18.99
Subtotal with tax (8%): $ 72.13
Special factorial discount for 4 items: 24.0%
Final total: $ 54.82
```

## How to Run
1. Make sure you have Dart installed.
2. Run the program:
   ```
   dart run main.dart
   ```

---
This example is useful for learning Dart basics, higher-order functions, and recursion.
