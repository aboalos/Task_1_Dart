void main() {
  // 0.02 Taxes
  
  List<Map<String, dynamic>> RestaurantOrders = [
    {"OrderID": 1, "OrderName": "Chocolate Bar", "Price": 35},
    {"OrderID": 2, "OrderName": "Soda Can", "Price": 20},
    {"OrderID": 3, "OrderName": "Bag of Chips", "Price": 25},
    {"OrderID": 4, "OrderName": "Gum Pack", "Price": 10},
    {"OrderID": 5, "OrderName": "Bottle of Water", "Price": 15},
    {"OrderID": 6, "OrderName": "Energy Drink", "Price": 40},
    {"OrderID": 7, "OrderName": "Granola Bar", "Price": 30}
  ];

  for (int i = 0; i < RestaurantOrders.length; i++) {
    int id = RestaurantOrders[i]["OrderID"];
    int price = RestaurantOrders[i]["Price"];
    String name = RestaurantOrders[i]["OrderName"];

    // Order name is null
    TaskPricewithTax(id: id, prices: price);
    // Order name is not null
    TaskPricewithTax(id: id, prices: price, name: name);
  }
}

TaskPricewithTax({required int id, required int prices, String? name}) {
  if (name == null) {
    print("The order ID is $id, it has a price of $prices, and the price after taxes is ${prices + (0.02 * prices)}.");
  } else {
    print("The order '$name', with ID $id, has a price of $prices, and the price after taxes is ${prices + (0.02 * prices)}.");
  }
}
