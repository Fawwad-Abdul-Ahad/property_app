List<String> wishlist = [];

void addToWishlist(String item) {
  wishlist.add(item);
}

void removeFromWishlist(String item) {
  wishlist.remove(item);
}

bool isInWishlist(String item) {
  return wishlist.contains(item);
}

 getWishlist (){
  return wishlist;
}