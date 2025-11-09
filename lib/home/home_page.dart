import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> articles = [
    {
      "id": "1",
      "name": "Poisson chat prêt à consommer",
      "price": "2 500 FCFA/kg",
      "image": "assets/images/apc.png",
      "rating": 4.5,
      "category": "poisson_chat",
      "description":
          "Poisson chat frais de qualité supérieure, prêt à être cuisiné. Produit local avec une chair ferme et savoureuse.",
    },
    {
      "id": "2",
      "name": "Poisson chat fumé",
      "price": "4 000 FCFA/kg",
      "image": "assets/images/pft.png",
      "rating": 4.7,
      "category": "poisson_chat",
      "description":
          "Poisson chat fumé traditionnel, parfaitement séché pour une conservation optimale et un goût authentique.",
    },
    {
      "id": "3",
      "name": "Géniteurs pour reproduction",
      "price": "8 000 - 8 500 FCFA/kg",
      "image": "assets/images/pfg.png",
      "rating": 4.8,
      "category": "poisson_chat",
      "description":
          "Géniteurs sélectionnés pour la reproduction, garantissant une excellente qualité génétique pour votre élevage.",
    },
    {
      "id": "4",
      "name": "Alevins 1-2g",
      "price": "50 FCFA/unité",
      "image": "assets/images/al.png",
      "rating": 4.6,
      "category": "alevins",
      "description":
          "Alevins de clarrias de 1 à 2 grammes, parfaits pour le démarrage de votre élevage.",
    },
    {
      "id": "5",
      "name": "Alevins 3-4g",
      "price": "60 FCFA/unité",
      "image": "assets/images/al1.png",
      "rating": 4.4,
      "category": "alevins",
      "description":
          "Alevins de 3 à 4 grammes, avec un taux de survie excellent pour votre pisciculture.",
    },
    {
      "id": "6",
      "name": "Alevins 5-6g",
      "price": "75 FCFA/unité",
      "image": "assets/images/al2.png",
      "rating": 4.3,
      "category": "alevins",
      "description":
          "Alevins robustes de 5 à 6 grammes, idéaux pour une croissance rapide.",
    },
    {
      "id": "7",
      "name": "Alevins 8-10g",
      "price": "100 FCFA/unité",
      "image": "assets/images/ppc.png",
      "rating": 4.4,
      "category": "alevins",
      "description":
          "Alevins de 8 à 10 grammes, prêts pour une phase de croissance intensive.",
    },
    {
      "id": "8",
      "name": "Alevins 11-12g",
      "price": "125 FCFA/unité",
      "image": "assets/images/al2.png",
      "rating": 4.7,
      "category": "alevins",
      "description":
          "Alevins de 11 à 12 grammes, qualité premium pour un élevage performant.",
    },
    {
      "id": "9",
      "name": "Alevins 13-15g",
      "price": "150 FCFA/unité",
      "image": "assets/images/al1.png",
      "rating": 4.2,
      "category": "alevins",
      "description":
          "Alevins de 13 à 15 grammes, stade avancé pour une mise en production rapide.",
    },
    {
      "id": "10",
      "name": "Bac d'élevage 0.5m³",
      "price": "30 000 FCFA",
      "image": "assets/images/bache.png",
      "rating": 4.9,
      "category": "bacs",
      "description":
          "Bac d'élevage de 0.5 m³, parfait pour les débutants ou les petites productions.",
    },
    {
      "id": "11",
      "name": "Bac d'élevage 1m³",
      "price": "45 000 FCFA",
      "image": "assets/images/bache.png",
      "rating": 4.4,
      "category": "bacs",
      "description":
          "Bac d'élevage d'1 m³, capacité idéale pour une production familiale.",
    },
    {
      "id": "12",
      "name": "Bac d'élevage 2m³",
      "price": "75 000 FCFA",
      "image": "assets/images/bache.png",
      "rating": 4.7,
      "category": "bacs",
      "description":
          "Bac de 2 m³ pour une production semi-intensive de qualité.",
    },
    {
      "id": "13",
      "name": "Bac d'élevage 3m³",
      "price": "100 000 FCFA",
      "image": "assets/images/bache.png",
      "rating": 4.2,
      "category": "bacs",
      "description":
          "Bac de 3 m³, excellente capacité pour développer votre activité piscicole.",
    },
    {
      "id": "14",
      "name": "Bac d'élevage 4m³",
      "price": "115 000 FCFA",
      "image": "assets/images/bbp.png",
      "rating": 4.9,
      "category": "bacs",
      "description":
          "Bac de 4 m³, solution professionnelle pour une production importante.",
    },
    {
      "id": "15",
      "name": "Bac d'élevage 5m³",
      "price": "140 000 FCFA",
      "image": "assets/images/bgc.png",
      "rating": 4.4,
      "category": "bacs",
      "description":
          "Bac de 5 m³, pour les éleveurs expérimentés visant une production intensive.",
    },
    {
      "id": "16",
      "name": "Bac d'élevage 6m³",
      "price": "160 000 FCFA",
      "image": "assets/images/bache.png",
      "rating": 4.7,
      "category": "bacs",
      "description":
          "Bac de 6 m³, notre plus grande capacité pour les projets piscicoles ambitieux.",
    },
    {
      "id": "17",
      "name": "Conception d'étangs",
      "price": "Sur devis",
      "image": "assets/images/eps.png",
      "rating": 4.8,
      "category": "services",
      "description":
          "Service complet d'étude et de faisabilité pour la conception de vos étangs piscicoles.",
    },
  ];

  // Liste des catégories avec les nombres exacts
  final List<Map<String, dynamic>> categories = [
    {
      "id": "all",
      "name": "🎯 Tous les produits",
      "icon": Icons.all_inclusive,
      "color": Colors.blue,
      "count": 17,
    },
    {
      "id": "poisson_chat",
      "name": "🐟 Poisson chat (3)",
      "icon": Icons.set_meal,
      "color": Colors.orange,
      "count": 3,
    },
    {
      "id": "alevins",
      "name": "🐡 Alevins (6)",
      "icon": Icons.egg,
      "color": Colors.green,
      "count": 6,
    },
    {
      "id": "bacs",
      "name": "🛢️ Bacs d'élevage (7)",
      "icon": Icons.water_drop,
      "color": Colors.blue,
      "count": 7,
    },
    {
      "id": "services",
      "name": "🏞️ Services (1)",
      "icon": Icons.engineering,
      "color": Colors.teal,
      "count": 1,
    },
  ];

  String selectedCategory = "all";

  // Couleurs personnalisées
  final Color primaryBlue = const Color(0xFF2196F3);
  final Color darkBlue = const Color(0xFF1976D2);
  final Color lightBlue = const Color(0xFF64B5F6);
  final Color darkGrey = const Color(0xFF424242);
  final Color mediumGrey = const Color(0xFF616161);
  final Color lightGrey = const Color(0xFFEEEEEE);
  final Color accentColor = const Color(0xFF00BCD4);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                darkGrey.withOpacity(0.9),
                const Color(0xFF1A1A1A),
                const Color(0xFF0D0D0D),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: primaryBlue.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [primaryBlue, lightBlue]),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/logo.svg',
                    height: 32,
                    width: 32,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'FishAds',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: primaryBlue.withOpacity(0.5),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            if (screenWidth > 900)
              Row(
                children: [
                  _buildAppBarButton(Icons.home, 'Accueil'),
                  _buildAppBarButton(Icons.search, 'Recherche'),
                  _buildAppBarButton(Icons.star, 'Premium'),
                  _buildAppBarButton(Icons.shop, 'Boutique'),
                  _buildAppBarButton(Icons.sell, 'Vendre'),
                ],
              )
            else
              IconButton(
                onPressed: () {
                  _showCategoriesMenu(context);
                },
                icon: Icon(Icons.menu, color: Colors.white),
              ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF1A1A1A),
              const Color(0xFF0D0D0D),
              const Color(0xFF000000),
            ],
          ),
        ),
        child: Row(
          children: [
            // Sidebar avec catégories
            if (screenWidth > 800)
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          darkGrey.withOpacity(0.8),
                          mediumGrey.withOpacity(0.6),
                          primaryBlue.withOpacity(0.1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: primaryBlue.withOpacity(0.2),
                          blurRadius: 15,
                          spreadRadius: 2,
                        ),
                      ],
                      border: Border.all(
                        color: primaryBlue.withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // En-tête catégories
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '📂 Catégories',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Filtrer par type',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const Divider(color: Colors.grey, height: 1),

                        // Liste des catégories
                        Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              final category = categories[index];
                              return _buildCategoryItem(category);
                            },
                          ),
                        ),

                        // Statistiques
                        Container(
                          margin: const EdgeInsets.all(16),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                primaryBlue.withOpacity(0.2),
                                darkBlue.withOpacity(0.1),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total produits:',
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '17',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Catégories:',
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '${categories.length}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            // Contenu principal
            Expanded(
              flex: screenWidth > 800 ? 7 : 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF1E1E1E),
                        const Color(0xFF151515),
                        const Color(0xFF0A0A0A),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: primaryBlue.withOpacity(0.1),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // En-tête avec dégradé
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              primaryBlue.withOpacity(0.2),
                              darkBlue.withOpacity(0.1),
                              Colors.transparent,
                            ],
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "🎯 ${_getCategoryTitle()}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: primaryBlue.withOpacity(0.5),
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              _getCategorySubtitle(),
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 10),

                      // GridView amélioré
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: screenWidth > 1400
                                      ? 5
                                      : screenWidth > 1100
                                      ? 4
                                      : screenWidth > 800
                                      ? 3
                                      : screenWidth > 600
                                      ? 2
                                      : 2,
                                  crossAxisSpacing: 16,
                                  mainAxisSpacing: 16,
                                  childAspectRatio: 0.75,
                                ),
                            itemCount: _getFilteredArticles().length,
                            itemBuilder: (context, index) {
                              final article = _getFilteredArticles()[index];
                              return _buildProductCard(article);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showCategoriesMenu(BuildContext context) {
    final RenderBox appBarRenderBox = context.findRenderObject() as RenderBox;
    final Offset appBarOffset = appBarRenderBox.localToGlobal(Offset.zero);
    final Size appBarSize = appBarRenderBox.size;

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        appBarOffset.dx + appBarSize.width - 250,
        appBarOffset.dy + appBarSize.height,
        appBarOffset.dx + appBarSize.width,
        appBarOffset.dy + appBarSize.height + 400,
      ),
      items: categories.map((category) {
        return PopupMenuItem(
          value: category['id'],
          onTap: () {
            setState(() {
              selectedCategory = category['id'];
            });
          },
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: category['color'].withOpacity(0.2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(
                  category['icon'],
                  color: category['color'],
                  size: 18,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category['name'],
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${category['count']} produits',
                      style: TextStyle(color: Colors.grey[600], fontSize: 10),
                    ),
                  ],
                ),
              ),
              if (selectedCategory == category['id'])
                Icon(Icons.check, color: primaryBlue, size: 16),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildCategoryItem(Map<String, dynamic> category) {
    bool isSelected = selectedCategory == category['id'];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: () {
            setState(() {
              selectedCategory = category['id'];
            });
          },
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: isSelected
                  ? LinearGradient(
                      colors: [
                        primaryBlue.withOpacity(0.4),
                        darkBlue.withOpacity(0.2),
                      ],
                    )
                  : null,
              borderRadius: BorderRadius.circular(12),
              border: isSelected
                  ? Border.all(color: primaryBlue.withOpacity(0.5), width: 1)
                  : null,
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: category['color'].withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    category['icon'],
                    color: category['color'],
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category['name'],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${category['count']} produits',
                        style: TextStyle(color: Colors.grey[400], fontSize: 12),
                      ),
                    ],
                  ),
                ),
                if (isSelected)
                  Icon(Icons.check_circle, color: primaryBlue, size: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Map<String, dynamic>> _getFilteredArticles() {
    if (selectedCategory == "all") {
      return articles;
    }

    return articles.where((article) {
      return article['category'] == selectedCategory;
    }).toList();
  }

  String _getCategoryTitle() {
    final category = categories.firstWhere(
      (cat) => cat['id'] == selectedCategory,
      orElse: () => categories[0],
    );
    return category['name'];
  }

  String _getCategorySubtitle() {
    switch (selectedCategory) {
      case "all":
        return "Découvrez tous nos 17 produits et services piscicoles";
      case "poisson_chat":
        return "3 produits - frais, fumés et géniteurs pour reproduction";
      case "alevins":
        return "6 tailles d'alevins de clarrias de 1g à 15g";
      case "bacs":
        return "7 modèles de bacs d'élevage de 0.5m³ à 6m³";
      case "services":
        return "Service d'étude et conception d'étangs piscicoles";
      default:
        return "Des solutions complètes pour votre pisciculture";
    }
  }

  Widget _buildAppBarButton(IconData icon, String tooltip) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primaryBlue.withOpacity(0.3), darkBlue.withOpacity(0.1)],
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, color: Colors.white),
        tooltip: tooltip,
      ),
    );
  }

  Widget _buildProductCard(Map<String, dynamic> article) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArticleDetailPage(article: article),
            ),
          );
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFF2A2A2A),
                const Color(0xFF1E1E1E),
                const Color(0xFF151515),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: primaryBlue.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 2,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
            border: Border.all(color: primaryBlue.withOpacity(0.2), width: 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image avec overlay - CORRIGÉ
              Expanded(
                flex: 7,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      child: Hero(
                        tag: 'article-image-${article['id']}',
                        child: Image.asset(
                          article['image'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                          errorBuilder: (context, error, stackTrace) {
                            // Fallback si l'image n'existe pas
                            return Container(
                              color: Colors.grey[800],
                              child: Center(
                                child: Icon(
                                  _getCategoryIcon(article['category']),
                                  size: 60,
                                  color: Colors.grey[600],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    // Overlay gradient
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.7),
                          ],
                        ),
                      ),
                    ),
                    // Badge catégorie
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [primaryBlue, lightBlue],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          _getCategoryBadge(article['category']),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // ... reste du code inchangé
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article['name'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      _getCategoryLabel(article['category']),
                      style: TextStyle(color: Colors.grey[400], fontSize: 12),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          article['rating'].toString(),
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            primaryBlue.withOpacity(0.3),
                            darkBlue.withOpacity(0.1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        article['price'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case "poisson_chat":
        return Icons.set_meal;
      case "alevins":
        return Icons.egg;
      case "bacs":
        return Icons.water_drop;
      case "services":
        return Icons.engineering;
      default:
        return Icons.shopping_bag;
    }
  }

  String _getCategoryBadge(String category) {
    switch (category) {
      case "poisson_chat":
        return "🐟";
      case "alevins":
        return "🐡";
      case "bacs":
        return "🛢️";
      case "services":
        return "🏞️";
      default:
        return "🔥";
    }
  }

  String _getCategoryLabel(String category) {
    switch (category) {
      case "poisson_chat":
        return "Poisson chat";
      case "alevins":
        return "Alevins de clarrias";
      case "bacs":
        return "Bacs d'élevage";
      case "services":
        return "Service piscicole";
      default:
        return "Produit";
    }
  }
}

// Page de détail de l'article
class ArticleDetailPage extends StatefulWidget {
  final Map<String, dynamic> article;

  const ArticleDetailPage({super.key, required this.article});

  @override
  State<ArticleDetailPage> createState() => _ArticleDetailPageState();
}

class _ArticleDetailPageState extends State<ArticleDetailPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController(
    text: '1',
  );

  String _selectedPayment = 'cash';
  int _quantity = 1;

  // Couleurs personnalisées
  final Color primaryBlue = const Color(0xFF2196F3);
  final Color lightBlue = const Color(0xFFE3F2FD);
  final Color darkGrey = const Color(0xFF424242);
  final Color lightGrey = const Color(0xFFF5F5F5);

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _quantityController.dispose();
    super.dispose();
  }

  void _incrementQuantity() {
    setState(() {
      _quantity++;
      _quantityController.text = _quantity.toString();
    });
  }

  void _decrementQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
        _quantityController.text = _quantity.toString();
      });
    }
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      // Numéro WhatsApp de l'entreprise
      final String phoneNumber = "237695182789";

      // Message de commande formaté
      final String message =
          """
NOUVELLE COMMANDE - FishAds

Produit: ${widget.article['name']}
Prix: ${widget.article['price']}
Quantité: $_quantity
Total: ${_calculateTotalPrice()}

Client: ${_nameController.text}
Téléphone: ${_phoneController.text}
Ville: ${_emailController.text}
Quartier: ${_addressController.text}

Paiement: ${_getPaymentMethodText()}

Date: ${DateTime.now().toString().split(' ')[0]}
Heure: ${TimeOfDay.now().format(context)}
""";

      // URL WhatsApp
      final String url =
          "https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}";

      try {
        if (await canLaunch(url)) {
          await launch(url);

          // Message de confirmation
          _showSuccessDialog();
        } else {
          throw 'Impossible d\'ouvrir WhatsApp';
        }
      } catch (e) {
        _showErrorDialog(e.toString());
      }
    }
  }

  String _calculateTotalPrice() {
    // Pour les produits avec prix fixe
    if (widget.article['price'].contains('Sur devis')) {
      return 'Sur devis';
    }

    // Extrait le prix numérique de la chaîne
    final priceString = widget.article['price'].replaceAll(
      RegExp(r'[^0-9]'),
      '',
    );
    final price = int.tryParse(priceString) ?? 0;
    final total = price * _quantity;
    return '${total.toStringAsFixed(0)} FCFA';
  }

  String _getPaymentMethodText() {
    switch (_selectedPayment) {
      case 'cash':
        return 'Espèce à la livraison';
      case 'card':
        return 'Mobile Money (MTN)';
      case 'mobile':
        return 'Mobile Money (Orange)';
      default:
        return 'Non spécifié';
    }
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(Icons.check_circle, color: Colors.green),
            SizedBox(width: 8),
            Text('Commande envoyée !'),
          ],
        ),
        content: Text(
          'Votre commande a été envoyée sur WhatsApp. '
          'L\'équipe FishAds vous contactera rapidement pour confirmer.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK', style: TextStyle(color: primaryBlue)),
          ),
        ],
      ),
    );
  }

  void _showErrorDialog(String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(Icons.error, color: Colors.red),
            SizedBox(width: 8),
            Text('Erreur'),
          ],
        ),
        content: Text(
          'Impossible d\'ouvrir WhatsApp. Veuillez réessayer ou contacter directement le vendeur.\n\nErreur: $error',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK', style: TextStyle(color: primaryBlue)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 800;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: darkGrey),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          widget.article['name'],
          style: TextStyle(
            color: darkGrey,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.share, color: primaryBlue),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Section Image + Description
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: isMobile ? _buildMobileLayout() : _buildDesktopLayout(),
              ),

              const SizedBox(height: 24),

              // Formulaire de commande
              _buildOrderForm(),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image
        Expanded(
          flex: 5,
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Hero(
                  tag: 'article-image-${widget.article['id']}',
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        widget.article['image'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[200],
                            child: Center(
                              child: Icon(
                                _getCategoryIcon(widget.article['category']),
                                size: 100,
                                color: Colors.grey[500],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // Description et Prix
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: _buildProductInfo(),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      children: [
        // Image
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Hero(
                tag: 'article-image-${widget.article['id']}',
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      widget.article['image'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[200],
                          child: Center(
                            child: Icon(
                              _getCategoryIcon(widget.article['category']),
                              size: 100,
                              color: Colors.grey[500],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        // Description et Prix
        Container(
          padding: const EdgeInsets.all(16),
          child: _buildProductInfo(),
        ),
      ],
    );
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case "poisson_chat":
        return Icons.set_meal;
      case "alevins":
        return Icons.egg;
      case "bacs":
        return Icons.water_drop;
      case "services":
        return Icons.engineering;
      default:
        return Icons.shopping_bag;
    }
  }

  Widget _buildProductInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Catégorie
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: lightBlue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            _getCategoryLabel(widget.article['category']),
            style: TextStyle(
              color: primaryBlue,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        const SizedBox(height: 16),

        // Nom du produit
        Text(
          widget.article['name'],
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: darkGrey,
          ),
        ),

        const SizedBox(height: 8),

        // Rating
        Row(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 20),
            const SizedBox(width: 4),
            Text(
              widget.article['rating'].toString(),
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '(128 avis)',
              style: TextStyle(color: Colors.grey[500], fontSize: 14),
            ),
          ],
        ),

        const SizedBox(height: 24),

        // Prix
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: lightGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Text(
                'Prix: ',
                style: TextStyle(
                  fontSize: 18,
                  color: darkGrey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                widget.article['price'],
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: primaryBlue,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 24),

        // Description
        Text(
          'Description',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: darkGrey,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          widget.article['description'],
          style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.5),
        ),

        const SizedBox(height: 24),

        // Caractéristiques
        _buildFeatures(),

        if (widget.article['category'] != 'services')
          const SizedBox(height: 24),

        if (widget.article['category'] != 'services')
          // Quantité
          _buildQuantitySelector(),
      ],
    );
  }

  String _getCategoryLabel(String category) {
    switch (category) {
      case "poisson_chat":
        return "Poisson chat";
      case "alevins":
        return "Alevins de clarrias";
      case "bacs":
        return "Bacs d'élevage";
      case "services":
        return "Service piscicole";
      default:
        return "Produit";
    }
  }

  Widget _buildFeatures() {
    List<Map<String, dynamic>> features = [];

    switch (widget.article['category']) {
      case "poisson_chat":
        features = [
          {'icon': Icons.food_bank, 'text': 'Produit frais ou fumé'},
          {'icon': Icons.agriculture, 'text': 'Qualité piscicole'},
          {'icon': Icons.health_and_safety, 'text': 'Contrôle qualité'},
        ];
        break;
      case "alevins":
        features = [
          {'icon': Icons.trending_up, 'text': 'Croissance rapide'},
          {'icon': Icons.health_and_safety, 'text': 'Bonne résistance'},
          {'icon': Icons.water_drop, 'text': 'Adapté étang/bac'},
        ];
        break;
      case "bacs":
        features = [
          {'icon': Icons.water_drop, 'text': 'Étanchéité parfaite'},
          {'icon': Icons.build, 'text': 'Installation rapide'},
          {'icon': Icons.auto_awesome, 'text': 'Résistant UV'},
        ];
        break;
      case "services":
        features = [
          {'icon': Icons.engineering, 'text': 'Étude personnalisée'},
          {'icon': Icons.assessment, 'text': 'Analyse de faisabilité'},
          {'icon': Icons.architecture, 'text': 'Conception sur mesure'},
        ];
        break;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Caractéristiques',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: darkGrey,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: features.map((feature) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: lightGrey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    feature['icon'] as IconData,
                    size: 16,
                    color: primaryBlue,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    feature['text'],
                    style: TextStyle(color: darkGrey, fontSize: 14),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildQuantitySelector() {
    return Row(
      children: [
        Text(
          'Quantité: ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: darkGrey,
          ),
        ),
        const SizedBox(width: 16),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove, size: 18),
                onPressed: _decrementQuantity,
              ),
              Container(
                width: 40,
                alignment: Alignment.center,
                child: Text(
                  _quantity.toString(),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add, size: 18),
                onPressed: _incrementQuantity,
              ),
            ],
          ),
        ),
        if (widget.article['category'] == 'alevins')
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text('unités', style: TextStyle(color: Colors.grey[600])),
          )
        else if (widget.article['category'] == 'poisson_chat')
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text('kg', style: TextStyle(color: Colors.grey[600])),
          ),
      ],
    );
  }

  Widget _buildOrderForm() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Titre principal
          Text(
            '📋 Formulaire de commande',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: darkGrey,
            ),
          ),
          const SizedBox(height: 8),

          // Sous-titre
          Text(
            'Remplissez vos informations pour finaliser votre achat',
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
          const SizedBox(height: 24),

          // Formulaire
          Form(
            key: _formKey,
            child: Column(
              children: [
                // Nom complet
                _buildFormField(
                  controller: _nameController,
                  label: 'Nom complet',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre nom';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                // Téléphone
                _buildFormField(
                  controller: _phoneController,
                  label: 'Numéro de téléphone',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre numéro de téléphone';
                    }
                    final phone = value.replaceAll(' ', '');
                    final cameroonPhoneRegex = RegExp(
                      r'^(?:\+237|00237)?6\d{8}$',
                    );
                    if (!cameroonPhoneRegex.hasMatch(phone)) {
                      return 'Numéro invalide. Ex: +237699123456 ou 699123456';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),
                // Email
                _buildFormField(
                  controller: _emailController,
                  label: 'Ville',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre ville';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                // Adresse
                _buildFormField(
                  controller: _addressController,
                  label: 'Quartier de livraison',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre quartier';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),

                // Méthode de paiement
                _buildPaymentMethod(),
                const SizedBox(height: 32),

                // Bouton de confirmation
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton.icon(
                    onPressed: _submitForm,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 2,
                    ),
                    icon: const Icon(Icons.shopping_cart, color: Colors.white),
                    label: Text(
                      widget.article['price'].contains('Sur devis')
                          ? 'Demander un devis'
                          : 'Confirmer la commande - ${widget.article['price']}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormField({
    required TextEditingController controller,
    required String label,
    required String? Function(String?) validator,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey[400]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: primaryBlue, width: 0.5),
        ),
      ),
      validator: validator,
    );
  }

  Widget _buildPaymentMethod() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Méthode de paiement',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: darkGrey,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            _buildPaymentOption('cash', 'Espèce', Icons.money_off),
            const SizedBox(width: 12),
            _buildPaymentOption('card', 'MTN', Icons.phone_android),
            const SizedBox(width: 12),
            _buildPaymentOption('mobile', 'Orange', Icons.phone_android),
          ],
        ),
      ],
    );
  }

  Widget _buildPaymentOption(String value, String text, IconData icon) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedPayment = value;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: _selectedPayment == value ? lightBlue : Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: _selectedPayment == value
                  ? primaryBlue
                  : Colors.grey[300]!,
              width: _selectedPayment == value ? 2 : 1,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 16, color: primaryBlue),
              const SizedBox(width: 6),
              Text(
                text,
                style: TextStyle(
                  color: darkGrey,
                  fontWeight: _selectedPayment == value
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
