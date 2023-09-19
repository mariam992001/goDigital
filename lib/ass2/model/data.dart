List<Map> modelStore = [
  {
    "category": "dresses",
    "product": [
      {
        "name": "Red dress",
        "price": 5530,
        "image":
            "https://images.unsplash.com/photo-1612336307429-8a898d10e223?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
        "description": "white dress with fionka"
      },
      {
        "name": "White dress",
        "price": 5530,
        "image":
            "https://i.pinimg.com/564x/ad/ad/2d/adad2d40d22a1a7b6c4d3523c9944d0a.jpg",
        "description": "white dress with fionka"
      },
      {
        "name": "White dress",
        "price": 5530,
        "image":
            "https://i.pinimg.com/564x/d6/00/b5/d600b5e4b4c254fbbee6e9451d6e4254.jpg",
        "description": "white dress with fionka"
      },
      {
        "name": "royal dress",
        "price": 790,
        "image":
            "https://i.pinimg.com/564x/2b/a0/b9/2ba0b9697391ae4bfd5e5a4d27210e60.jpg",
        "description": "white dress with fionka"
      },
      {
        "name": "black dress dress",
        "price": 250,
        "image":
            "https://images.unsplash.com/photo-1612336307429-8a898d10e223?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
        "description": "black dress dress with fionka"
      },
      {
        "name": "pink dress",
        "price": 700,
        "image":
            "https://i.pinimg.com/564x/91/ce/41/91ce417245d8a190caa13427a26a306c.jpg",
        "description": "pink dress with fionka"
      },
      {
        "name": "white dress",
        "price": 430,
        "image":
            "https://i.pinimg.com/564x/d6/00/b5/d600b5e4b4c254fbbee6e9451d6e4254.jpg",
        "description": "Red dress with fionka"
      },
    ],
  },
  {
    "category": "watches",
    "product": [
      {
        "name": "White whatch",
        "price": 880,
        "image":
            "https://images.unsplash.com/photo-1594576722512-582bcd46fba3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
        "description": "white dress with fionka"
      },
      {
        "name": "Pink watch",
        "price": 790,
        "image":
            "https://i.pinimg.com/564x/0e/15/73/0e15739aac4c827e748244abc39c41f1.jpg",
        "description": "pink watch foe women"
      },
      {
        "name": "black watchs",
        "price": 8,
        "image":
            "https://i.pinimg.com/564x/c7/c3/67/c7c3671f8744b82d8ab5223cadb777cd.jpg",
        "description": "black watch for men"
      },
      {
        "name": "blue watch",
        "price": 7,
        "image":
            "https://i.pinimg.com/564x/3d/bd/88/3dbd885b326e461ae2cdc39f0e610edf.jpg",
        "description": "royal blue watch"
      },
      {
        "name": "blue watch",
        "price": 7,
        "image":
            "https://images.unsplash.com/photo-1594576722512-582bcd46fba3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
        "description": "royal blue watch"
      },
      {
        "name": "Red dress",
        "price": 5,
        "image":
            "https://i.pinimg.com/564x/ff/98/41/ff98418539cc636bba611284438119f7.jpg",
        "description": "Red dress with fionka"
      },
    ],
  },
  {
    "category": "Jwellery",
    "product": [
      {
        "name": "Ring",
        "price": 880,
        "image":
            "https://images.unsplash.com/photo-1605100804763-247f67b3557e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
        "description": "white dress with fionka"
      },
      {
        "name": "Necklace",
        "price": 790,
        "image":
            "https://images.unsplash.com/photo-1656428361267-b309fd9b20f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1530&q=80",
        "description": "pink watch foe women"
      },
      {
        "name": "Earring",
        "price": 8,
        "image":
            "https://images.unsplash.com/photo-1608508644127-ba99d7732fee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1530&q=80",
        "description": "black watch for men"
      },
      {
        "name": "Earring",
        "price": 8,
        "image":
"https://cdn1.jewelxy.com/live/img/business_product/N7R1b6C0gQ_20211031163738.jpg",        "description": "black watch for men"
      },
    ],
  },
];

class Product {
  String? name;
  String? description;
  int? price;
  String? img;

  Product(Map map) {
    name = map["name"];
    price = int.tryParse(map["price"].toString());
    img = map["image"];
    description = map["description"];
  }
}

class Categoryy {
  String? name;
  List<Product>? products;

  Categoryy(Map map) {
    name = map["category"];
    List<Map> productData = map['product'];
    products = productData.map((e) {
      return Product(e);
    }).toList();
  }
}
