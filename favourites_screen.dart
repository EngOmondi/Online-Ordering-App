class FavoritesScreen extends StatelessWidget {
  final List<Snack> favoriteSnacks;

  FavoritesScreen({required this.favoriteSnacks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favoriteSnacks.length,
        itemBuilder: (context, index) {
          Snack snack = favoriteSnacks[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(snack.image),
            ),
            title: Text(snack.name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(snack: snack),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
