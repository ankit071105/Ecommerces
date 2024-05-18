import 'package:flutter/material.dart';
import 'addtocart.dart';
import 'contact_us_page.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartModel()),
      ],
      child: MaterialApp(
        title: 'My App',
        home: MyApp(),
      ),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, String>> _items = [
    {"name": "Flour (Aata)", "image": "assets/images/11.webp", "price": "₹ 25 kg", "description": "Aata, also known as atta, is a finely ground whole wheat flour commonly used in Indian cuisine to make various traditional dishes such as chapati (roti), paratha, puri, and other bread-based items. It is made from durum wheat, which is high in protein and gluten content, giving the dough elasticity and allowing it to rise when cooked. Aata is prized for its nutty flavor, nutritional value, and versatility in cooking, making it a staple ingredient in many households across the Indian subcontinent.Aata is prized for its nutty flavor, nutritional value, and versatility in cooking, making it a staple ingredient in many households across the Indian subcontinent.Aata is prized for its nutty flavor, nutritional value, and versatility in cooking, making it a staple ingredient in many households across the Indian subcontinent."},
    {"name": "Banana", "image": "assets/images/12.webp", "price": "₹ 41 kg", "description": "Sugar is a common sweetener used in cooking, baking, and beverages. It is typically derived from sugarcane or sugar beets through a process of extraction and refinement. Sucrose is the primary component of sugar, providing the characteristic sweetness. While it's often added to foods and drinks for flavor enhancement, excessive consumption of sugar has been linked to various health concerns such as obesity, diabetes, and tooth decay. It is typically derived from sugarcane or sugar beets through a process of extraction and refinement. Sucrose is the primary component of sugar, providing the characteristic sweetness. While it's often added to foods and drinks for flavor enhancement, excessive consumption of sugar has been linked to various health concerns such as obesity, diabetes, and tooth decay. It is typically derived from sugarcane or sugar beets through a process of extraction and refinement. Sucrose is the primary component of sugar, providing the characteristic sweetness. While it's often added to foods and drinks for flavor enhancement, excessive consumption of sugar has been linked to various health concerns such as obesity, diabetes, and tooth decay."},
    {"name": "Milk", "image": "assets/images/13.webp", "price": "₹ 30 kg", "description": "Fruits are nutritious, flavorful foods that come from flowering plants and contain seeds. They are typically sweet or sour in taste and are consumed fresh or used in cooking, baking, or beverages. Fruits are rich in essential nutrients such as vitamins, minerals, fiber, and antioxidants, which are beneficial for overall health. Common fruits include apples, oranges, bananas, berries, grapes, and tropical fruits like mangoes and pineapples.Fruits are rich in essential nutrients such as vitamins, minerals, fiber, and antioxidants, which are beneficial for overall health. Common fruits include apples, oranges, bananas, berries, grapes, and tropical fruits like mangoes and pineapples.Fruits are rich in essential nutrients such as vitamins, minerals, fiber, and antioxidants, which are beneficial for overall health. Common fruits include apples, oranges, bananas, berries, grapes, and tropical fruits like mangoes and pineapples."},
    {"name": "Bread", "image": "assets/images/14.webp", "price": "₹ 50 kg", "description": "Vegetables are edible plant parts that are consumed as food. They are diverse in taste, texture, and nutritional content, and are classified into various categories such as leafy greens, root vegetables, cruciferous vegetables, and nightshades. Vegetables are rich in vitamins, minerals, fiber, and phytonutrients, making them essential for a balanced diet and overall health. Common vegetables include spinach, carrots, broccoli, tomatoes, onions, and bell peppers. Incorporating a variety of vegetables into meals can contribute to optimal nutrition and well-being. Common vegetables include spinach, carrots, broccoli, tomatoes, onions, and bell peppers. Incorporating a variety of vegetables into meals can contribute to optimal nutrition and well-being. Common vegetables include spinach, carrots, broccoli, tomatoes, onions, and bell peppers. Incorporating a variety of vegetables into meals can contribute to optimal nutrition and well-being."},
    {"name": "Flour (Aata)", "image": "assets/images/11.webp", "price": "₹ 25 kg", "description": "Aata, also known as atta, is a finely ground whole wheat flour commonly used in Indian cuisine to make various traditional dishes such as chapati (roti), paratha, puri, and other bread-based items. It is made from durum wheat, which is high in protein and gluten content, giving the dough elasticity and allowing it to rise when cooked. Aata is prized for its nutty flavor, nutritional value, and versatility in cooking, making it a staple ingredient in many households across the Indian subcontinent.Aata is prized for its nutty flavor, nutritional value, and versatility in cooking, making it a staple ingredient in many households across the Indian subcontinent.Aata is prized for its nutty flavor, nutritional value, and versatility in cooking, making it a staple ingredient in many households across the Indian subcontinent."},
    {"name": "Banana", "image": "assets/images/12.webp", "price": "₹ 41 kg", "description": "Sugar is a common sweetener used in cooking, baking, and beverages. It is typically derived from sugarcane or sugar beets through a process of extraction and refinement. Sucrose is the primary component of sugar, providing the characteristic sweetness. While it's often added to foods and drinks for flavor enhancement, excessive consumption of sugar has been linked to various health concerns such as obesity, diabetes, and tooth decay. It is typically derived from sugarcane or sugar beets through a process of extraction and refinement. Sucrose is the primary component of sugar, providing the characteristic sweetness. While it's often added to foods and drinks for flavor enhancement, excessive consumption of sugar has been linked to various health concerns such as obesity, diabetes, and tooth decay. It is typically derived from sugarcane or sugar beets through a process of extraction and refinement. Sucrose is the primary component of sugar, providing the characteristic sweetness. While it's often added to foods and drinks for flavor enhancement, excessive consumption of sugar has been linked to various health concerns such as obesity, diabetes, and tooth decay."},
    {"name": "Milk", "image": "assets/images/13.webp", "price": "₹ 30 kg", "description": "Fruits are nutritious, flavorful foods that come from flowering plants and contain seeds. They are typically sweet or sour in taste and are consumed fresh or used in cooking, baking, or beverages. Fruits are rich in essential nutrients such as vitamins, minerals, fiber, and antioxidants, which are beneficial for overall health. Common fruits include apples, oranges, bananas, berries, grapes, and tropical fruits like mangoes and pineapples.Fruits are rich in essential nutrients such as vitamins, minerals, fiber, and antioxidants, which are beneficial for overall health. Common fruits include apples, oranges, bananas, berries, grapes, and tropical fruits like mangoes and pineapples.Fruits are rich in essential nutrients such as vitamins, minerals, fiber, and antioxidants, which are beneficial for overall health. Common fruits include apples, oranges, bananas, berries, grapes, and tropical fruits like mangoes and pineapples."},
    {"name": "Bread", "image": "assets/images/14.webp", "price": "₹ 50 kg", "description": "Vegetables are edible plant parts that are consumed as food. They are diverse in taste, texture, and nutritional content, and are classified into various categories such as leafy greens, root vegetables, cruciferous vegetables, and nightshades. Vegetables are rich in vitamins, minerals, fiber, and phytonutrients, making them essential for a balanced diet and overall health. Common vegetables include spinach, carrots, broccoli, tomatoes, onions, and bell peppers. Incorporating a variety of vegetables into meals can contribute to optimal nutrition and well-being. Common vegetables include spinach, carrots, broccoli, tomatoes, onions, and bell peppers. Incorporating a variety of vegetables into meals can contribute to optimal nutrition and well-being. Common vegetables include spinach, carrots, broccoli, tomatoes, onions, and bell peppers. Incorporating a variety of vegetables into meals can contribute to optimal nutrition and well-being."},
    {"name": "Flour (Aata)", "image": "assets/images/11.webp", "price": "₹ 25 kg", "description": "Aata, also known as atta, is a finely ground whole wheat flour commonly used in Indian cuisine to make various traditional dishes such as chapati (roti), paratha, puri, and other bread-based items. It is made from durum wheat, which is high in protein and gluten content, giving the dough elasticity and allowing it to rise when cooked. Aata is prized for its nutty flavor, nutritional value, and versatility in cooking, making it a staple ingredient in many households across the Indian subcontinent.Aata is prized for its nutty flavor, nutritional value, and versatility in cooking, making it a staple ingredient in many households across the Indian subcontinent.Aata is prized for its nutty flavor, nutritional value, and versatility in cooking, making it a staple ingredient in many households across the Indian subcontinent."},
    {"name": "Banana", "image": "assets/images/12.webp", "price": "₹ 41 kg", "description": "Sugar is a common sweetener used in cooking, baking, and beverages. It is typically derived from sugarcane or sugar beets through a process of extraction and refinement. Sucrose is the primary component of sugar, providing the characteristic sweetness. While it's often added to foods and drinks for flavor enhancement, excessive consumption of sugar has been linked to various health concerns such as obesity, diabetes, and tooth decay. It is typically derived from sugarcane or sugar beets through a process of extraction and refinement. Sucrose is the primary component of sugar, providing the characteristic sweetness. While it's often added to foods and drinks for flavor enhancement, excessive consumption of sugar has been linked to various health concerns such as obesity, diabetes, and tooth decay. It is typically derived from sugarcane or sugar beets through a process of extraction and refinement. Sucrose is the primary component of sugar, providing the characteristic sweetness. While it's often added to foods and drinks for flavor enhancement, excessive consumption of sugar has been linked to various health concerns such as obesity, diabetes, and tooth decay."},
    {"name": "Milk", "image": "assets/images/13.webp", "price": "₹ 30 kg", "description": "Fruits are nutritious, flavorful foods that come from flowering plants and contain seeds. They are typically sweet or sour in taste and are consumed fresh or used in cooking, baking, or beverages. Fruits are rich in essential nutrients such as vitamins, minerals, fiber, and antioxidants, which are beneficial for overall health. Common fruits include apples, oranges, bananas, berries, grapes, and tropical fruits like mangoes and pineapples.Fruits are rich in essential nutrients such as vitamins, minerals, fiber, and antioxidants, which are beneficial for overall health. Common fruits include apples, oranges, bananas, berries, grapes, and tropical fruits like mangoes and pineapples.Fruits are rich in essential nutrients such as vitamins, minerals, fiber, and antioxidants, which are beneficial for overall health. Common fruits include apples, oranges, bananas, berries, grapes, and tropical fruits like mangoes and pineapples."},
    {"name": "Bread", "image": "assets/images/14.webp", "price": "₹ 50 kg", "description": "Vegetables are edible plant parts that are consumed as food. They are diverse in taste, texture, and nutritional content, and are classified into various categories such as leafy greens, root vegetables, cruciferous vegetables, and nightshades. Vegetables are rich in vitamins, minerals, fiber, and phytonutrients, making them essential for a balanced diet and overall health. Common vegetables include spinach, carrots, broccoli, tomatoes, onions, and bell peppers. Incorporating a variety of vegetables into meals can contribute to optimal nutrition and well-being. Common vegetables include spinach, carrots, broccoli, tomatoes, onions, and bell peppers. Incorporating a variety of vegetables into meals can contribute to optimal nutrition and well-being. Common vegetables include spinach, carrots, broccoli, tomatoes, onions, and bell peppers. Incorporating a variety of vegetables into meals can contribute to optimal nutrition and well-being."},
  ];

  late List<Map<String, String>> _filteredItems;
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredItems = _items;
    _searchController.addListener(_filterItems);
  }

  void _filterItems() {
    setState(() {
      _filteredItems = _items
          .where((item) => item['name']!
          .toLowerCase()
          .contains(_searchController.text.toLowerCase()))
          .toList();
    });
  }

  void _showProductDetail(Map<String, String> product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailPage(product: product),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        appBar: AppBar(
        title: const Text('Grocery App'),
    actions: [
    IconButton(
    icon: const Icon(Icons.search),
    color: Color(0xff0a0b49),
    onPressed: () {
    showSearch(context: context, delegate: ProductSearch(_items));
    },
    ),
      IconButton(
        icon: Icon(Icons.contact_mail),
        color: Color(0xff0a0b49),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactUsPage()),
          );
        },
      ),

      IconButton(
        icon: Icon(Icons.shopping_cart),
        color: Color(0xff0a0b49),
        onPressed: () {
          Navigator.push(
            context,
              MaterialPageRoute(builder: (context) => AddToCartPage()));
        },
      ),

    ],
    ),
    body: Container(
    color: Color(0xff0a0b49),
    child: SingleChildScrollView(
    child: Column(
    children: [
    const SizedBox(height: 20),
    const Text(
    'Super Saving Deals',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Color(0xff7ef9fd),
    ),
    ),
    const SizedBox(height: 20),
    // Sliding Row of Items
    Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: SizedBox(
    height: 180,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: _items.length,
    itemBuilder: (context, index) {
    return GestureDetector(
    onTap: () => _showProductDetail(_items[index]),
    child: Card(
    color: Colors.white12,
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Image.asset(_items[index]['image']!, height: 100, width: 100),
    const SizedBox(height: 10),
    Text(
    _items[index]['name']!,
    style: const TextStyle(color: Colors.white),
    ),
    Text(
    _items[index]['price']!,
    style: const TextStyle(color: Colors.white),
    ),
    ],
    ),
    ),
    ),
    );
    },
    ),
    ),
    ),
    // Grid of Food Items
    const SizedBox(height: 20),
    const Text(
    'Daily Usage',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Color(0xff7ef9fd),
    ),
    ),
    const SizedBox(height: 20),
    Padding(
    padding: const EdgeInsets.all(18.0),
    child: GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 2 / 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    ),
    itemCount: _filteredItems.length,
    itemBuilder: (context, index) {
    return GestureDetector(
    onTap: () => _showProductDetail(_filteredItems[index]),
    child: Card(
    color: Colors.white12,
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Image.asset(_filteredItems[index]['image']!, height: 100, width: 100),
    const SizedBox(height: 0),
    Text(
    _filteredItems[index]['name']!,
    style: const TextStyle(color: Colors.white),
    ),
    Text(
    _filteredItems[index]['price']!,
    style: const TextStyle(color: Colors.white),
    ),
    ],
    ),
    ),
    ),
    );
    },
    ),
    ),
    // Row of User-Sliding Products
    const SizedBox(height: 20),
    const Text(
    'Summer Offers',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Color(0xff7ef9fd),
    ),
    ),
    const SizedBox(height: 20),
    Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: SizedBox(
    height: 200,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: _items.length,
    itemBuilder: (context, index) {
    return GestureDetector(
    onTap: () => _showProductDetail(_items[index]),
    child: Card(
    color: Colors.white12,
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Image.asset(_items[index]['image']!, height: 100, width: 100),
    const SizedBox(height: 10),
    Text(
    _items[index]['name']!,
    style: const TextStyle(color: Colors.white),
    ),
    Text(
    _items[index]['price']!,
    style: const TextStyle(color: Colors.white),
    ),
    ],
    ),
    ),
    ),
    );
    },
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    ),
    );
  }
}
class AddToCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add to Cart'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            MaterialPageRoute(builder: (context) => MyApp());
            Navigator.pop(context); // Go back to previous screen
          },
          child: Text('Add Sample Product to Cart'),
        ),
      ),
    );
  }
}
class ProductSearch extends SearchDelegate {
  final List<Map<String, String>> items;

  ProductSearch(this.items);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = items
        .where((item) => item['name']!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(results[index]['name']!),
          subtitle: Text(results[index]['price']!),
          leading: Image.asset(results[index]['image']!),
          onTap: () {
            close(context, null);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailPage(product: results[index]),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = items
        .where((item) => item['name']!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]['name']!),
          subtitle: Text(suggestions[index]['price']!),
          leading: Image.asset(suggestions[index]['image']!),
          onTap: () {
            close(context, null);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailPage(product: suggestions[index]),
              ),
            );
          },
        );
      },
    );
  }
}

class ProductDetailPage extends StatefulWidget {
  final Map<String, String> product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _quantity = 1; // Initial quantity

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7ef9fd),
      appBar: AppBar(
        title: Text(widget.product['name']!),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.product['image']!,
                width: 250,
                height: 250,
              ),
              const SizedBox(height: 20),
              Text(
                'Price: ${widget.product['price']}',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Description: ${widget.product['description']}',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: _decrementQuantity,
                  ),
                  Text(
                    '$_quantity',
                    style: TextStyle(fontSize: 18),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: _incrementQuantity,
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // Add to cart logic here
                  // You can use _quantity and widget.product for adding to cart
                  // For example: Cart.addToCart(widget.product, _quantity);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Added $_quantity ${widget.product['name']} to cart'),
                    ),
                  );
                },
                child: Text('Add to Cart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
