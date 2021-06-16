class Vehicle {
  String model;
  String brand;
  String he_scores;
  String year_manufacture;
  String color;
  String chassi;
  DateTime purchase_date;
  num heat_purchase;
  bool sold;
  String urlImage;



  Vehicle({
    required this.model,
    required this.brand,
    required this.color,
    required this.chassi,
    required this.he_scores,
    required this.heat_purchase,
    required this.purchase_date,
    required this.sold,
    required this.urlImage,
    required this.year_manufacture,
  });


  @override
  String toString() {
    return 'Vehicle{model: $model, brand: $brand, he_scores: $he_scores, year_manufacture: $year_manufacture, color: $color, chassi: $chassi, purchase_date: $purchase_date, heat_purchase: $heat_purchase, sold: $sold, urlImage: $urlImage}';
  }
}
