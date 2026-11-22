import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FoodDeliveryApp());
}

// --- Цветовая палитра ---
const Color kPrimaryYellow = Color(0xFFF2C94C);
const Color kBackgroundColor = Color(0xFFF9F9F9);
const Color kTextColor = Color(0xFF333333);

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery UI',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: GoogleFonts.interTextTheme(),
        primaryColor: kPrimaryYellow,
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

// --- Модель данных ---
class FoodItem {
  final String title;
  final String category;
  final String description;
  final double rating;
  final int reviews;
  final String time;
  final int price;
  final String imageUrl;

  FoodItem({
    required this.title,
    required this.category,
    required this.description,
    required this.rating,
    required this.reviews,
    required this.time,
    required this.price,
    required this.imageUrl,
  });
}

// --- База данных ---
final List<FoodItem> allFoodItems = [
  // --- ПИЦЦА (5 шт) ---
  FoodItem(title: "Дерзкая Марго", category: "Пицца", description: "Сочные томаты, моцарелла и свежий базилик.", rating: 4.5, reviews: 100, time: "25-30", price: 300, imageUrl: "https://images.unsplash.com/photo-1513104890138-7c749659a591?w=800&q=80"),
  FoodItem(title: "Пепперони", category: "Пицца", description: "Острая колбаса и много тянущегося сыра.", rating: 4.8, reviews: 230, time: "20-25", price: 450, imageUrl: "https://images.unsplash.com/photo-1628840042765-356cda07504e?w=800&q=80"),
  FoodItem(title: "Четыре сыра", category: "Пицца", description: "Для настоящих любителей сыра.", rating: 4.7, reviews: 180, time: "25-30", price: 500, imageUrl: "https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?w=800&q=80"),
  FoodItem(title: "Гавайская", category: "Пицца", description: "Курица и ананасы. Классика!", rating: 4.2, reviews: 95, time: "20-25", price: 400, imageUrl: "https://images.unsplash.com/photo-1555072956-7758afb20e8f?w=800&q=80"),
  FoodItem(title: "Мясная", category: "Пицца", description: "Бекон, ветчина, колбаски.", rating: 4.9, reviews: 320, time: "30-35", price: 550, imageUrl: "https://images.unsplash.com/photo-1593560708920-61dd98c46a4e?w=800&q=80"),

  // --- КЕБАБ (5 шт) ---
  FoodItem(title: "Горячий парень", category: "Кебаб", description: "Острое мясо с овощами гриль.", rating: 4.5, reviews: 100, time: "25-30", price: 300, imageUrl: "https://i.pinimg.com/736x/a4/4d/28/a44d2833656c36520d5e63277f3cadc7.jpg"),
  FoodItem(title: "Шашлык из свинины", category: "Кебаб", description: "Сочный шашлык с луком.", rating: 4.9, reviews: 280, time: "20-25", price: 400, imageUrl: "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=800&q=80"),
  FoodItem(title: "Куриный кебаб", category: "Кебаб", description: "Диетическое мясо на гриле.", rating: 4.5, reviews: 110, time: "15-20", price: 300, imageUrl: "https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=800&q=80"),
  FoodItem(title: "Донер", category: "Кебаб", description: "В лаваше с овощами и соусом.", rating: 4.7, reviews: 400, time: "10-15", price: 250, imageUrl: "https://images.unsplash.com/photo-1529006557810-274b9b2fc783?w=800&q=80"),
  FoodItem(title: "Кебаб в лаваше", category: "Кебаб", description: "Сытный перекус на ходу.", rating: 4.4, reviews: 180, time: "10-15", price: 280, imageUrl: "https://i.pinimg.com/1200x/79/48/0a/79480accb58599ea89d95ca756bd5b49.jpg"),

  // --- БУРГЕР (5 шт) ---
  FoodItem(title: "Сытый Питт", category: "Бургер", description: "Огромный бургер с говядиной и картофелем фри.", rating: 4.5, reviews: 100, time: "25-30", price: 300, imageUrl: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=800&q=80"),
  FoodItem(title: "Чизбургер", category: "Бургер", description: "Классика с двойным сыром.", rating: 4.7, reviews: 310, time: "15-20", price: 250, imageUrl: "https://images.unsplash.com/photo-1550547660-d9450f859349?w=800&q=80"),
  FoodItem(title: "Чикен Бургер", category: "Бургер", description: "Куриное филе в хрустящей панировке.", rating: 4.5, reviews: 140, time: "15-20", price: 220, imageUrl: "https://images.unsplash.com/photo-1606755962773-d324e0a13086?w=800&q=80"),
  FoodItem(title: "Бургер с беконом", category: "Бургер", description: "Говядина, бекон и соус BBQ.", rating: 4.8, reviews: 190, time: "20-25", price: 350, imageUrl: "https://images.unsplash.com/photo-1594212699903-ec8a3eca50f5?w=800&q=80"),
  FoodItem(title: "Вегетарианский", category: "Бургер", description: "Котлета из нута и овощи.", rating: 4.3, reviews: 75, time: "15-20", price: 280, imageUrl: "https://images.unsplash.com/photo-1520072959219-c595dc870360?w=800&q=80"),

  // --- ВКУСНЯШКА МИЯ (Салаты/Закуски для "Все") ---
  FoodItem(title: "Вкусняшка Мия", category: "Все", description: "Легкий салат с креветками и авокадо.", rating: 4.5, reviews: 100, time: "25-30", price: 300, imageUrl: "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=800&q=80"),
  FoodItem(title: "Картофель фри", category: "Все", description: "Хрустящая картошка с соусом.", rating: 4.8, reviews: 500, time: "10-15", price: 150, imageUrl: "https://images.unsplash.com/photo-1573080496219-bb080dd4f877?w=800&q=80"),
  FoodItem(title: "Суши сет", category: "Все", description: "Ассорти из 16 кусочков.", rating: 4.9, reviews: 250, time: "30-40", price: 800, imageUrl: "https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=800&q=80"),
  FoodItem(title: "Паста Карбонара", category: "Все", description: "С беконом и сливочным соусом.", rating: 4.7, reviews: 110, time: "20-25", price: 420, imageUrl: "https://images.unsplash.com/photo-1612874742237-6526221588e3?w=800&q=80"),
  FoodItem(title: "Кола", category: "Все", description: "Освежающий напиток.", rating: 5.0, reviews: 1000, time: "5-10", price: 100, imageUrl: "https://images.unsplash.com/photo-1629203851122-3726ecdf080e?w=800&q=80"),
];

// --- Главный экран ---
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const AppSidebar(), 
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeListScreen(scaffoldKey: _scaffoldKey), 
          const Center(child: Text("Корзина пуста")),
          const Center(child: Text("У вас пока нет заказов")),
        ],
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width <= 800
          ? BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (index) => setState(() => _selectedIndex = index),
              selectedItemColor: kPrimaryYellow,
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Меню'),
                BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Корзина'),
                BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Заказы'),
              ],
            )
          : null,
    );
  }
}

// --- Экран списка ---
class HomeListScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HomeListScreen({super.key, required this.scaffoldKey});

  @override
  State<HomeListScreen> createState() => _HomeListScreenState();
}

class _HomeListScreenState extends State<HomeListScreen> {
  String _selectedCategory = "Все";

  @override
  Widget build(BuildContext context) {
    final displayedItems = allFoodItems.where((food) {
      return _selectedCategory == "Все" ||
          food.category == _selectedCategory;
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleSpacing: 0,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                widget.scaffoldKey.currentState?.openDrawer();
              },
            ),
            const Text("Челябинск", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16)),
            const SizedBox(width: 4),
            const Icon(Icons.keyboard_arrow_down, color: Colors.black),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
              onPressed: () {},
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Text(
                "Голоден?",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Colors.grey, size: 20),
                  const SizedBox(width: 12),
                  Text("Поиск по меню", style: TextStyle(color: Colors.grey[400], fontSize: 16)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCategoryItem(Icons.restaurant, "Все"),
                  _buildCategoryItem(Icons.local_pizza, "Пицца"),
                  _buildCategoryItem(Icons.kebab_dining, "Кебаб"),
                  _buildCategoryItem(Icons.lunch_dining, "Бургер"),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            const Divider(height: 1, color: Color(0xFFEEEEEE), thickness: 1),

            // Список блюд
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: displayedItems.length,
              itemBuilder: (context, index) {
                return FoodCardVertical(item: displayedItems[index]);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(IconData icon, String label) {
    bool isSelected = _selectedCategory == label;
    return GestureDetector(
      onTap: () {
        if (_selectedCategory != label) {
          setState(() {
            _selectedCategory = label;
          });
        }
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isSelected
                  ? kPrimaryYellow.withValues(alpha: 0.2)
                  : Colors.transparent,
              shape: BoxShape.circle,
              border: isSelected ? Border.all(color: kPrimaryYellow, width: 2) : Border.all(color: Colors.grey.shade300),
            ),
            child: Icon(icon, color: isSelected ? Colors.black : Colors.grey, size: 24),
          ),
          const SizedBox(height: 8),
          Text(label, style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 12,
          )),
        ],
      ),
    );
  }
}

// --- Боковая панель (Drawer) ---
class AppSidebar extends StatelessWidget {
  const AppSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(24)),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage('https://i.pinimg.com/736x/bc/91/03/bc91039a4cd8c5ee466e6ea3ca3568c8.jpg'),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Krutoi Pacik", style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 14), maxLines: 1, overflow: TextOverflow.ellipsis),
                        Text("krutoi@mail.com", style: TextStyle(color: Colors.grey[600], fontSize: 12), maxLines: 1, overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                  Icon(Icons.logout, color: Colors.grey[800], size: 20),
                ],
              ),
              const SizedBox(height: 40),
              _buildSidebarItem("Все меню"),
              _buildSidebarItem("Заказы", trailingText: "6"),
              _buildSidebarItem("Корзина", trailingText: "3"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSidebarItem(String text, {String? trailingText}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Text(text, style: const TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w500)),
          const Spacer(),
          if (trailingText != null)
            Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(color: kPrimaryYellow, shape: BoxShape.circle),
              constraints: const BoxConstraints(minWidth: 24, minHeight: 24),
              alignment: Alignment.center,
              child: Text(trailingText, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            )
        ],
      ),
    );
  }
}

void openFoodDetails(BuildContext context, FoodItem food) {
  final page = ItemDetailScreen(item: food);

  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (_) => page,
    ),
  );
}

// --- Вертикальная карточка (Главный экран) ---
class FoodCardVertical extends StatelessWidget {
  final FoodItem item;
  const FoodCardVertical({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => openFoodDetails(context, item),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            item.imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(height: 200, color: Colors.grey[200], child: const Center(child: CircularProgressIndicator(color: kPrimaryYellow)));
            },
            errorBuilder: (context, error, stackTrace) => Container(
              height: 200,
              color: Colors.grey[300],
              child: const Center(child: Icon(Icons.broken_image, color: Colors.grey)),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(item.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${item.price}", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black)),
                        const SizedBox(width: 2),
                        const Text("₽", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                
                Row(
                  children: [
                    const Icon(Icons.star_border, color: Colors.grey, size: 16),
                    const SizedBox(width: 4),
                    Text("${item.rating}", style: const TextStyle(color: Colors.grey, fontSize: 13)),
                    const SizedBox(width: 4),
                    Text("(${item.reviews})", style: const TextStyle(color: Colors.grey, fontSize: 13)),
                    const SizedBox(width: 12),
                    Text("${item.time} мин", style: const TextStyle(color: Colors.grey, fontSize: 13)),
                  ],
                ),
                const SizedBox(height: 16),
                
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryYellow,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      elevation: 0,
                    ),
                    child: const Text("Купить", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// --- Горизонтальная карточка (Для "Похожие") ---
class FoodCardHorizontal extends StatelessWidget {
  final FoodItem item;
  const FoodCardHorizontal({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => openFoodDetails(context, item),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(
                  item.imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(color: Colors.grey[300]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13), maxLines: 1, overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 12),
                      const SizedBox(width: 2),
                      Text("${item.rating}", style: const TextStyle(color: Colors.grey, fontSize: 11)),
                      const Spacer(),
                      Text(
                        '${item.price.toString()}₽',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryYellow,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        elevation: 0,
                      ),
                      child: const Text("Купить", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// --- Экран детализации ---
class ItemDetailScreen extends StatefulWidget {
  final FoodItem item;

  const ItemDetailScreen({super.key, required this.item});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  int _selectedTabIndex = 0; 

  @override
  Widget build(BuildContext context) {
    final currentFood = widget.item;

    final similarItems = allFoodItems.where((food) {
      final sameCategory = food.category == currentFood.category;
      final differentFood = food.title != currentFood.title;

      return sameCategory && differentFood;
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Большая картинка БЕЗ СКРУГЛЕНИЙ
                Padding(
                  padding: const EdgeInsets.only(top: 40.0), // Отступ под статус-бар
                  child: Image.network(
                    widget.item.imageUrl,
                    height: 280,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 280,
                      color: Colors.grey[300],
                      child: const Center(child: Icon(Icons.broken_image, color: Colors.grey, size: 50)),
                    ),
                  ),
                ),

                // 2. Информация
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              widget.item.title,
                              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                            ),
                          ),
                          const Icon(Icons.favorite_border, color: Colors.grey, size: 28),
                        ],
                      ),
                      const SizedBox(height: 8),
                      
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 18),
                          const SizedBox(width: 4),
                          Text("${widget.item.rating}", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                          const SizedBox(width: 4),
                          Text("(${widget.item.reviews})", style: TextStyle(color: Colors.grey[500], fontSize: 14)),
                          const SizedBox(width: 12),
                          Text("${widget.item.time} мин", style: const TextStyle(color: Colors.grey, fontSize: 14)),
                          const Spacer(),
                          Text("${widget.item.price}", style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                          const SizedBox(width: 4),
                          const Text("₽", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 16),
                      
                      Text(
                        "${widget.item.description} Et consectetur commodo ut consectetur ex nulla voluptate commodo ipsum incididunt qui dolor.",
                        style: TextStyle(color: Colors.grey[600], height: 1.5, fontSize: 14),
                      ),
                      const SizedBox(height: 24),
                      
                      SizedBox(
                        width: double.infinity,
                        height: 54,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryYellow,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                            elevation: 0,
                          ),
                          child: const Text("Купить", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        ),
                      ),
                      const SizedBox(height: 32),
                      
                      Row(
                        children: [
                          _buildTab("Дополнительно", 0),
                          const SizedBox(width: 24),
                          _buildTab("Похожие", 1),
                          const SizedBox(width: 24),
                          _buildTab("Отзывы", 2),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Divider(color: Color(0xFFEEEEEE), thickness: 1),
                      const SizedBox(height: 16),
                      
                      if (_selectedTabIndex == 0) ...[
                        _buildAddonItem("Просто кофе", "Вкусный зерновой кофе", "200 руб"),
                        _buildAddonItem("Просто кофе", "Вкусный зерновой кофе", "200 руб"),
                        _buildAddonItem("Просто кофе", "Вкусный зерновой кофе", "200 руб"),
                      ] else if (_selectedTabIndex == 1) ...[
                        if (similarItems.isEmpty)
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("Похожих товаров пока нет", style: TextStyle(color: Colors.grey)),
                          )
                        else
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: similarItems.length,
                              itemBuilder: (context, index) {
                                final similarItem = similarItems[index];
                                return Container(
                                  width: 140,
                                  margin: const EdgeInsets.only(right: 16),
                                  child: FoodCardHorizontal(item: similarItem),
                                );
                              },
                            ),
                          ),
                      ] else if (_selectedTabIndex == 2) ...[
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text("Пока нет отзывов об этом блюде.", style: TextStyle(color: Colors.grey)),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),

          // 3. Кнопки поверх картинки
          Positioned(
            top: 50,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22,
                  child: IconButton(
                    icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black, size: 20),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String text, int index) {
    bool isSelected = _selectedTabIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTabIndex = index;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
              color: isSelected ? Colors.black : Colors.grey[400],
            ),
          ),
          if (isSelected) ...[
            const SizedBox(height: 6),
            Container(
              height: 2.5, 
              width: 60,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(2),
              ),
            )
          ] else ...[
            const SizedBox(height: 6),
            Container(height: 2.5, width: 60, color: Colors.transparent),
          ]
        ],
      ),
    );
  }

  Widget _buildAddonItem(String title, String subtitle, String price) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 26,
            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=150&q=80"),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                const SizedBox(height: 2),
                Text(subtitle, style: TextStyle(color: Colors.grey[500], fontSize: 13)),
              ],
            ),
          ),
          Text(price, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        ],
      ),
    );
  }
}