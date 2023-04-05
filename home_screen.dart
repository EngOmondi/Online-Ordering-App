class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snacks'),
      ),
      TextField(
  controller: _searchController,
  decoration: InputDecoration(
    hintText: 'Search for snacks...',
    prefixIcon: Icon(Icons.search),
  ),
  onChanged: (value) {
    // Call setState to rebuild the widget with new search query
    setState(() {
      _searchQuery = value;
    });
  },
),

      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double maxWidth = constraints.maxWidth;
          final bool isTablet = maxWidth > 600;
          final double listItemHeight = isTablet ? 150 : 100;
          final double fontSize = isTablet ? 20 : 16;

          return ListView.builder(
            itemCount: snacks.length,
            itemBuilder: (BuildContext context, int index) {
              final snack = snacks[index];

              return Card(
                child: ListTile(
                  leading: Image.asset(snack.image),
                  title: Text(
                    snack.name,
                    style: TextStyle(fontSize: fontSize),
                  ),
                  subtitle: Text(
                    snack.description,
                    style: TextStyle(fontSize: fontSize - 2),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(snack: snack),
                      ),
                    );
                  },
                   leading: CircleAvatar(
    backgroundImage: AssetImage(snack.image),
  ),
  title: Text(snack.name),
  trailing: IconButton(
    icon: Icon(
      snack.isFavorite ? Icons.favorite : Icons.favorite_border,
      color: snack.isFavorite ? Colors.red : null,
    ),
    onPressed: () {
      setState(() {
        snack.isFavorite = !snack.isFavorite;
      });
    },
  ),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(snack: snack),
      ),
    );
  }
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(8),
                elevation: 4,
              );
            },
          );
        },
     FloatingActionButton(
  onPressed: () {
    List<Snack> favoriteSnacks =
        snacks.where((snack) => snack.isFavorite).toList();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            FavoritesScreen(favoriteSnacks: favoriteSnacks),
      ),
    );
  },
  child: Icon(Icons.favorite),
),

      ),
    );
  }
}
