import '../models/restaurant_table_model.dart';

List<RestaurantTableModel> dummyTables = [
  // Restaurant 1
  RestaurantTableModel(restaurantId: '1', tableNo: 1, numberOfSeats: 4, tableStatus: 'Reserved', tableImg: ['assets/images/table1.jpg']),
  RestaurantTableModel(restaurantId: '1', tableNo: 2, numberOfSeats: 2, tableStatus: 'Booked', tableImg: ['assets/images/table2.jpg']),
  RestaurantTableModel(restaurantId: '1', tableNo: 3, numberOfSeats: 6, tableStatus: 'Available', tableImg: ['assets/images/table3.jpg']),
  RestaurantTableModel(restaurantId: '1', tableNo: 4, numberOfSeats: 8, tableStatus: 'Reserved', tableImg: ['assets/images/table4.jpg']),
  RestaurantTableModel(restaurantId: '1', tableNo: 5, numberOfSeats: 10, tableStatus: 'Booked', tableImg: ['assets/images/table5.jpg']),
  RestaurantTableModel(restaurantId: '1', tableNo: 6, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table6.jpg']),
  RestaurantTableModel(restaurantId: '1', tableNo: 7, numberOfSeats: 2, tableStatus: 'Reserved', tableImg: ['assets/images/table7.jpg']),

  // Restaurant 2
  RestaurantTableModel(restaurantId: '2', tableNo: 1, numberOfSeats: 6, tableStatus: 'Booked', tableImg: ['assets/images/table8.jpg']),
  RestaurantTableModel(restaurantId: '2', tableNo: 2, numberOfSeats: 8, tableStatus: 'Reserved', tableImg: ['assets/images/table9.jpg']),
  RestaurantTableModel(restaurantId: '2', tableNo: 3, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table10.jpg']),
  RestaurantTableModel(restaurantId: '2', tableNo: 4, numberOfSeats: 2, tableStatus: 'Booked', tableImg: ['assets/images/table11.jpg']),
  RestaurantTableModel(restaurantId: '2', tableNo: 5, numberOfSeats: 10, tableStatus: 'Reserved', tableImg: ['assets/images/table12.jpg']),
  RestaurantTableModel(restaurantId: '2', tableNo: 6, numberOfSeats: 6, tableStatus: 'Available', tableImg: ['assets/images/table13.jpg']),
  RestaurantTableModel(restaurantId: '2', tableNo: 7, numberOfSeats: 2, tableStatus: 'Booked', tableImg: ['assets/images/table14.jpg']),

  // Restaurant 3
  RestaurantTableModel(restaurantId: '3', tableNo: 1, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table15.jpg']),
  RestaurantTableModel(restaurantId: '3', tableNo: 2, numberOfSeats: 6, tableStatus: 'Booked', tableImg: ['assets/images/table16.jpg']),
  RestaurantTableModel(restaurantId: '3', tableNo: 3, numberOfSeats: 2, tableStatus: 'Reserved', tableImg: ['assets/images/table17.jpg']),
  RestaurantTableModel(restaurantId: '3', tableNo: 4, numberOfSeats: 10, tableStatus: 'Available', tableImg: ['assets/images/table18.jpg']),
  RestaurantTableModel(restaurantId: '3', tableNo: 5, numberOfSeats: 8, tableStatus: 'Booked', tableImg: ['assets/images/table19.jpg']),
  RestaurantTableModel(restaurantId: '3', tableNo: 6, numberOfSeats: 6, tableStatus: 'Reserved', tableImg: ['assets/images/table20.jpg']),
  RestaurantTableModel(restaurantId: '3', tableNo: 7, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table21.jpg']),

  // Restaurant 4
  RestaurantTableModel(restaurantId: '4', tableNo: 1, numberOfSeats: 2, tableStatus: 'Booked', tableImg: ['assets/images/table22.jpg']),
  RestaurantTableModel(restaurantId: '4', tableNo: 2, numberOfSeats: 6, tableStatus: 'Available', tableImg: ['assets/images/table23.jpg']),
  RestaurantTableModel(restaurantId: '4', tableNo: 3, numberOfSeats: 10, tableStatus: 'Reserved', tableImg: ['assets/images/table24.jpg']),
  RestaurantTableModel(restaurantId: '4', tableNo: 4, numberOfSeats: 8, tableStatus: 'Booked', tableImg: ['assets/images/table25.jpg']),
  RestaurantTableModel(restaurantId: '4', tableNo: 5, numberOfSeats: 6, tableStatus: 'Available', tableImg: ['assets/images/table26.jpg']),
  RestaurantTableModel(restaurantId: '4', tableNo: 6, numberOfSeats: 2, tableStatus: 'Reserved', tableImg: ['assets/images/table27.jpg']),
  RestaurantTableModel(restaurantId: '4', tableNo: 7, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table28.jpg']),

  // Restaurant 5
  RestaurantTableModel(restaurantId: '5', tableNo: 1, numberOfSeats: 8, tableStatus: 'Booked', tableImg: ['assets/images/table29.jpg']),
  RestaurantTableModel(restaurantId: '5', tableNo: 2, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table30.jpg']),
  RestaurantTableModel(restaurantId: '5', tableNo: 3, numberOfSeats: 6, tableStatus: 'Reserved', tableImg: ['assets/images/table31.jpg']),
  RestaurantTableModel(restaurantId: '5', tableNo: 4, numberOfSeats: 2, tableStatus: 'Booked', tableImg: ['assets/images/table32.jpg']),
  RestaurantTableModel(restaurantId: '5', tableNo: 5, numberOfSeats: 10, tableStatus: 'Available', tableImg: ['assets/images/table33.jpg']),
  RestaurantTableModel(restaurantId: '5', tableNo: 6, numberOfSeats: 4, tableStatus: 'Reserved', tableImg: ['assets/images/table34.jpg']),

  // Restaurant 6
  RestaurantTableModel(restaurantId: '6', tableNo: 1, numberOfSeats: 2, tableStatus: 'Available', tableImg: ['assets/images/table36.jpg']),
  RestaurantTableModel(restaurantId: '6', tableNo: 2, numberOfSeats: 8, tableStatus: 'Reserved', tableImg: ['assets/images/table37.jpg']),
  RestaurantTableModel(restaurantId: '6', tableNo: 3, numberOfSeats: 6, tableStatus: 'Booked', tableImg: ['assets/images/table38.jpg']),
  RestaurantTableModel(restaurantId: '6', tableNo: 4, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table39.jpg']),
  RestaurantTableModel(restaurantId: '6', tableNo: 5, numberOfSeats: 10, tableStatus: 'Reserved', tableImg: ['assets/images/table40.jpg']),

  // Restaurant 7
  RestaurantTableModel(restaurantId: '7', tableNo: 1, numberOfSeats: 4, tableStatus: 'Reserved', tableImg: ['assets/images/table43.jpg']),
  RestaurantTableModel(restaurantId: '7', tableNo: 2, numberOfSeats: 6, tableStatus: 'Booked', tableImg: ['assets/images/table44.jpg']),
  RestaurantTableModel(restaurantId: '7', tableNo: 3, numberOfSeats: 2, tableStatus: 'Available', tableImg: ['assets/images/table45.jpg']),
  RestaurantTableModel(restaurantId: '7', tableNo: 4, numberOfSeats: 8, tableStatus: 'Reserved', tableImg: ['assets/images/table46.jpg']),
  RestaurantTableModel(restaurantId: '7', tableNo: 5, numberOfSeats: 10, tableStatus: 'Booked', tableImg: ['assets/images/table47.jpg']),
  RestaurantTableModel(restaurantId: '7', tableNo: 6, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table48.jpg']),

  // Restaurant 8
  RestaurantTableModel(restaurantId: '8', tableNo: 1, numberOfSeats: 2, tableStatus: 'Booked', tableImg: ['assets/images/table50.jpg']),
  RestaurantTableModel(restaurantId: '8', tableNo: 2, numberOfSeats: 8, tableStatus: 'Available', tableImg: ['assets/images/table51.jpg']),
  RestaurantTableModel(restaurantId: '8', tableNo: 3, numberOfSeats: 6, tableStatus: 'Reserved', tableImg: ['assets/images/table52.jpg']),
  RestaurantTableModel(restaurantId: '8', tableNo: 4, numberOfSeats: 4, tableStatus: 'Booked', tableImg: ['assets/images/table53.jpg']),

  // Restaurant 9
  RestaurantTableModel(restaurantId: '9', tableNo: 1, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table57.jpg']),
  RestaurantTableModel(restaurantId: '9', tableNo: 2, numberOfSeats: 6, tableStatus: 'Reserved', tableImg: ['assets/images/table58.jpg']),
  RestaurantTableModel(restaurantId: '9', tableNo: 3, numberOfSeats: 2, tableStatus: 'Booked', tableImg: ['assets/images/table59.jpg']),
  RestaurantTableModel(restaurantId: '9', tableNo: 4, numberOfSeats: 8, tableStatus: 'Available', tableImg: ['assets/images/table60.jpg']),
  RestaurantTableModel(restaurantId: '9', tableNo: 5, numberOfSeats: 10, tableStatus: 'Reserved', tableImg: ['assets/images/table61.jpg']),
  RestaurantTableModel(restaurantId: '9', tableNo: 6, numberOfSeats: 4, tableStatus: 'Booked', tableImg: ['assets/images/table62.jpg']),

  // Restaurant 10
  RestaurantTableModel(restaurantId: '10', tableNo: 1, numberOfSeats: 2, tableStatus: 'Reserved', tableImg: ['assets/images/table64.jpg']),
  RestaurantTableModel(restaurantId: '10', tableNo: 2, numberOfSeats: 8, tableStatus: 'Booked', tableImg: ['assets/images/table65.jpg']),
  RestaurantTableModel(restaurantId: '10', tableNo: 3, numberOfSeats: 6, tableStatus: 'Available', tableImg: ['assets/images/table66.jpg']),
  RestaurantTableModel(restaurantId: '10', tableNo: 4, numberOfSeats: 4, tableStatus: 'Reserved', tableImg: ['assets/images/table67.jpg']),
  RestaurantTableModel(restaurantId: '10', tableNo: 5, numberOfSeats: 10, tableStatus: 'Booked', tableImg: ['assets/images/table68.jpg']),
  RestaurantTableModel(restaurantId: '10', tableNo: 6, numberOfSeats: 2, tableStatus: 'Available', tableImg: ['assets/images/table69.jpg']),

  // Restaurant 11
  RestaurantTableModel(restaurantId: '11', tableNo: 1, numberOfSeats: 4, tableStatus: 'Booked', tableImg: ['assets/images/table71.jpg']),
  RestaurantTableModel(restaurantId: '11', tableNo: 2, numberOfSeats: 6, tableStatus: 'Available', tableImg: ['assets/images/table72.jpg']),
  RestaurantTableModel(restaurantId: '11', tableNo: 4, numberOfSeats: 8, tableStatus: 'Booked', tableImg: ['assets/images/table74.jpg']),

  // Restaurant 12
  RestaurantTableModel(restaurantId: '12', tableNo: 1, numberOfSeats: 2, tableStatus: 'Available', tableImg: ['assets/images/table78.jpg']),
  RestaurantTableModel(restaurantId: '12', tableNo: 2, numberOfSeats: 8, tableStatus: 'Reserved', tableImg: ['assets/images/table79.jpg']),
  RestaurantTableModel(restaurantId: '12', tableNo: 3, numberOfSeats: 6, tableStatus: 'Booked', tableImg: ['assets/images/table80.jpg']),
  RestaurantTableModel(restaurantId: '12', tableNo: 4, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table81.jpg']),
  RestaurantTableModel(restaurantId: '12', tableNo: 5, numberOfSeats: 10, tableStatus: 'Reserved', tableImg: ['assets/images/table82.jpg']),

  // Restaurant 13
  RestaurantTableModel(restaurantId: '13', tableNo: 1, numberOfSeats: 4, tableStatus: 'Reserved', tableImg: ['assets/images/table85.jpg']),
  RestaurantTableModel(restaurantId: '13', tableNo: 2, numberOfSeats: 6, tableStatus: 'Booked', tableImg: ['assets/images/table86.jpg']),
  RestaurantTableModel(restaurantId: '13', tableNo: 3, numberOfSeats: 2, tableStatus: 'Available', tableImg: ['assets/images/table87.jpg']),
  RestaurantTableModel(restaurantId: '13', tableNo: 4, numberOfSeats: 8, tableStatus: 'Reserved', tableImg: ['assets/images/table88.jpg']),
  RestaurantTableModel(restaurantId: '13', tableNo: 5, numberOfSeats: 10, tableStatus: 'Booked', tableImg: ['assets/images/table89.jpg']),
  RestaurantTableModel(restaurantId: '13', tableNo: 6, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table90.jpg']),

  // Restaurant 14
  RestaurantTableModel(restaurantId: '14', tableNo: 1, numberOfSeats: 2, tableStatus: 'Booked', tableImg: ['assets/images/table92.jpg']),
  RestaurantTableModel(restaurantId: '14', tableNo: 2, numberOfSeats: 8, tableStatus: 'Available', tableImg: ['assets/images/table93.jpg']),
  RestaurantTableModel(restaurantId: '14', tableNo: 3, numberOfSeats: 6, tableStatus: 'Reserved', tableImg: ['assets/images/table94.jpg']),
  RestaurantTableModel(restaurantId: '14', tableNo: 4, numberOfSeats: 4, tableStatus: 'Booked', tableImg: ['assets/images/table95.jpg']),
  RestaurantTableModel(restaurantId: '14', tableNo: 5, numberOfSeats: 10, tableStatus: 'Available', tableImg: ['assets/images/table96.jpg']),
  RestaurantTableModel(restaurantId: '14', tableNo: 6, numberOfSeats: 2, tableStatus: 'Reserved', tableImg: ['assets/images/table97.jpg']),

  // Restaurant 15
  RestaurantTableModel(restaurantId: '15', tableNo: 1, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table99.jpg']),
  RestaurantTableModel(restaurantId: '15', tableNo: 2, numberOfSeats: 6, tableStatus: 'Reserved', tableImg: ['assets/images/table100.jpg']),
  RestaurantTableModel(restaurantId: '15', tableNo: 3, numberOfSeats: 2, tableStatus: 'Booked', tableImg: ['assets/images/table101.jpg']),
  RestaurantTableModel(restaurantId: '15', tableNo: 4, numberOfSeats: 8, tableStatus: 'Available', tableImg: ['assets/images/table102.jpg']),
  RestaurantTableModel(restaurantId: '15', tableNo: 5, numberOfSeats: 10, tableStatus: 'Reserved', tableImg: ['assets/images/table103.jpg']),
  RestaurantTableModel(restaurantId: '15', tableNo: 6, numberOfSeats: 4, tableStatus: 'Booked', tableImg: ['assets/images/table104.jpg']),

  // Restaurant 16
  RestaurantTableModel(restaurantId: '16', tableNo: 1, numberOfSeats: 2, tableStatus: 'Reserved', tableImg: ['assets/images/table106.jpg']),
  RestaurantTableModel(restaurantId: '16', tableNo: 2, numberOfSeats: 8, tableStatus: 'Booked', tableImg: ['assets/images/table107.jpg']),
  RestaurantTableModel(restaurantId: '16', tableNo: 3, numberOfSeats: 6, tableStatus: 'Available', tableImg: ['assets/images/table108.jpg']),
  RestaurantTableModel(restaurantId: '16', tableNo: 4, numberOfSeats: 4, tableStatus: 'Reserved', tableImg: ['assets/images/table109.jpg']),
  RestaurantTableModel(restaurantId: '16', tableNo: 6, numberOfSeats: 2, tableStatus: 'Available', tableImg: ['assets/images/table111.jpg']),
  RestaurantTableModel(restaurantId: '16', tableNo: 7, numberOfSeats: 6, tableStatus: 'Reserved', tableImg: ['assets/images/table112.jpg']),

  // Restaurant 17
  RestaurantTableModel(restaurantId: '17', tableNo: 1, numberOfSeats: 4, tableStatus: 'Booked', tableImg: ['assets/images/table113.jpg']),
  RestaurantTableModel(restaurantId: '17', tableNo: 2, numberOfSeats: 6, tableStatus: 'Available', tableImg: ['assets/images/table114.jpg']),
  RestaurantTableModel(restaurantId: '17', tableNo: 3, numberOfSeats: 2, tableStatus: 'Reserved', tableImg: ['assets/images/table115.jpg']),
  RestaurantTableModel(restaurantId: '17', tableNo: 4, numberOfSeats: 8, tableStatus: 'Booked', tableImg: ['assets/images/table116.jpg']),
  RestaurantTableModel(restaurantId: '17', tableNo: 5, numberOfSeats: 10, tableStatus: 'Available', tableImg: ['assets/images/table117.jpg']),
  RestaurantTableModel(restaurantId: '17', tableNo: 6, numberOfSeats: 4, tableStatus: 'Reserved', tableImg: ['assets/images/table118.jpg']),

  // Restaurant 18
  RestaurantTableModel(restaurantId: '18', tableNo: 1, numberOfSeats: 2, tableStatus: 'Available', tableImg: ['assets/images/table120.jpg']),
  RestaurantTableModel(restaurantId: '18', tableNo: 2, numberOfSeats: 8, tableStatus: 'Reserved', tableImg: ['assets/images/table121.jpg']),
  RestaurantTableModel(restaurantId: '18', tableNo: 3, numberOfSeats: 6, tableStatus: 'Booked', tableImg: ['assets/images/table122.jpg']),
  RestaurantTableModel(restaurantId: '18', tableNo: 5, numberOfSeats: 10, tableStatus: 'Reserved', tableImg: ['assets/images/table124.jpg']),
  RestaurantTableModel(restaurantId: '18', tableNo: 6, numberOfSeats: 2, tableStatus: 'Booked', tableImg: ['assets/images/table125.jpg']),
  RestaurantTableModel(restaurantId: '18', tableNo: 7, numberOfSeats: 6, tableStatus: 'Available', tableImg: ['assets/images/table126.jpg']),

  // Restaurant 19
  RestaurantTableModel(restaurantId: '19', tableNo: 1, numberOfSeats: 4, tableStatus: 'Reserved', tableImg: ['assets/images/table127.jpg']),
  RestaurantTableModel(restaurantId: '19', tableNo: 3, numberOfSeats: 2, tableStatus: 'Available', tableImg: ['assets/images/table129.jpg']),
  RestaurantTableModel(restaurantId: '19', tableNo: 4, numberOfSeats: 8, tableStatus: 'Reserved', tableImg: ['assets/images/table130.jpg']),
  RestaurantTableModel(restaurantId: '19', tableNo: 5, numberOfSeats: 10, tableStatus: 'Booked', tableImg: ['assets/images/table131.jpg']),
  RestaurantTableModel(restaurantId: '19', tableNo: 6, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table132.jpg']),
  RestaurantTableModel(restaurantId: '19', tableNo: 7, numberOfSeats: 6, tableStatus: 'Reserved', tableImg: ['assets/images/table133.jpg']),

  // Restaurant 20
  RestaurantTableModel(restaurantId: '20', tableNo: 1, numberOfSeats: 2, tableStatus: 'Booked', tableImg: ['assets/images/table134.jpg']),
  RestaurantTableModel(restaurantId: '20', tableNo: 2, numberOfSeats: 8, tableStatus: 'Available', tableImg: ['assets/images/table135.jpg']),
  RestaurantTableModel(restaurantId: '20', tableNo: 3, numberOfSeats: 6, tableStatus: 'Reserved', tableImg: ['assets/images/table136.jpg']),
  RestaurantTableModel(restaurantId: '20', tableNo: 4, numberOfSeats: 4, tableStatus: 'Booked', tableImg: ['assets/images/table137.jpg']),
  RestaurantTableModel(restaurantId: '20', tableNo: 6, numberOfSeats: 2, tableStatus: 'Reserved', tableImg: ['assets/images/table139.jpg']),

  // Restaurant 21
  RestaurantTableModel(restaurantId: '21', tableNo: 1, numberOfSeats: 4, tableStatus: 'Available', tableImg: ['assets/images/table141.jpg']),
  RestaurantTableModel(restaurantId: '21', tableNo: 2, numberOfSeats: 6, tableStatus: 'Reserved', tableImg: ['assets/images/table142.jpg']),
  RestaurantTableModel(restaurantId: '21', tableNo: 3, numberOfSeats: 2, tableStatus: 'Booked', tableImg: ['assets/images/table143.jpg']),
  RestaurantTableModel(restaurantId: '21', tableNo: 5, numberOfSeats: 10, tableStatus: 'Reserved', tableImg: ['assets/images/table145.jpg']),
  RestaurantTableModel(restaurantId: '21', tableNo: 6, numberOfSeats: 4, tableStatus: 'Booked', tableImg: ['assets/images/table146.jpg']),
  RestaurantTableModel(restaurantId: '21', tableNo: 7, numberOfSeats: 6, tableStatus: 'Available', tableImg: ['assets/images/table147.jpg']),

  // Restaurant 22
  RestaurantTableModel(restaurantId: '22', tableNo: 1, numberOfSeats: 2, tableStatus: 'Reserved', tableImg: ['assets/images/table148.jpg']),
  RestaurantTableModel(restaurantId: '22', tableNo: 2, numberOfSeats: 8, tableStatus: 'Booked', tableImg: ['assets/images/table149.jpg']),
  RestaurantTableModel(restaurantId: '22', tableNo: 3, numberOfSeats: 6, tableStatus: 'Available', tableImg: ['assets/images/table150.jpg']),
  RestaurantTableModel(restaurantId: '22', tableNo: 4, numberOfSeats: 4, tableStatus: 'Reserved', tableImg: ['assets/images/table151.jpg']),
  RestaurantTableModel(restaurantId: '22', tableNo: 5, numberOfSeats: 10, tableStatus: 'Booked', tableImg: ['assets/images/table152.jpg']),
  RestaurantTableModel(restaurantId: '22', tableNo: 7, numberOfSeats: 6, tableStatus: 'Reserved', tableImg: ['assets/images/table154.jpg']),
];