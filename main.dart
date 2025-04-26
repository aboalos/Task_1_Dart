void main() {
  //Menu : Burger: 15 minutes, Pizza: 30 minutes , fries: 5 minutes , nuggets: 10 minutes
  
  List<Map<String, dynamic>> Resturant_Orders = [
    {"ID_number": 1, "Status": "Ready", "Item": "Burger"},
    {"ID_number": 2, "Status": "Canceled", "Item": "Pizza"},
    {"ID_number": 3, "Status": "VIP", "Item": "Fries"},
    {"ID_number": 4, "Status": "Ready", "Item": "Nuggets"},
    {"ID_number": 5, "Status": "Canceled", "Item": "Salad"},
    {"ID_number": 6, "Status": "VIP", "Item": "Mansaf"},
    {"ID_number": 7, "Status": "Ready", "Item": "Burger"},
  ];

  // VIP Orders
  for (int i = 0; i < Resturant_Orders.length; i++) {
    if (Resturant_Orders[i]["Status"] == "VIP") {
      print("Start with This order ${Resturant_Orders[i]["ID_number"]} It is A VIP Order");
      if (Resturant_Orders[i]["ID_number"] == 4)
    {
      print("Alert for the kitchen this order might take long time please be Faster");
    }
      
      switch (Resturant_Orders[i]["Item"]) {
        case "Burger":
          print("🍔 Preparing a Burger, It Should take 15 minutes");
          break;
        case "Pizza":
          print("🍕 Preparing a Pizza, It Should take 30 minutes");
          break; 
        case "Fries":
          print("🍟 Preparing Fries, It Should take 5 minutes");
          break;
        case "Nuggets":
          print("🍗 Preparing Nuggets, It Should take 10 minutes");
          break; 
        default:
          print("⚠️ Unknown item ${Resturant_Orders[i]["Item"]}, Please investigate.");
      }
    }
  }
  //Normal Orders
  for (int i = 0; i < Resturant_Orders.length; i++) {
    if (Resturant_Orders[i]["Status"] == "Canceled") {
    print(" This order is canceled ${Resturant_Orders[i]["ID_number"]}, Please dont make it");
  }
    if (Resturant_Orders[i]["Status"] == "Ready") {
      print("Prepare this order ${Resturant_Orders[i]["ID_number"]} It is A Normal Order");
      if (Resturant_Orders[i]["ID_number"] == 4)
    {
      print("Alert for the kitchen this order might take long time please be Faster");
    }
      
      switch (Resturant_Orders[i]["Item"]) {
        case "Burger":
          print("🍔 Preparing a Burger, It Should take 15 minutes");
          break;
        case "Pizza":
          print("🍕 Preparing a Pizza, It Should take 30 minutes");
          break; 
        case "Fries":
          print("🍟 Preparing Fries, It Should take 5 minutes");
          break;
        case "Nuggets":
          print("🍗 Preparing Nuggets, It Should take 10 minutes");
          break; 
        default:
          print("⚠️ Unknown item ${Resturant_Orders[i]["Item"]}, Please investigate.");
      }
    }
  }
  
}