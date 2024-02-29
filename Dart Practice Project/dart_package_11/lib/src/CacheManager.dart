//=================== PRACTISING THE CONCEPTS OF GENERICS IN DART ================================

void main() {
  final cacheManager = CacheManager(4);
  print(cacheManager.addToCache("flutter", 'dart'));
  print(cacheManager.addToCache("flutter", 'dart'));
}

class CacheManager<T> {
  MapType<T> cache = {};
  final int maxSize;
  final List<String> list = [];
  // constructor of the class
  CacheManager(this.maxSize);

  MapType<T> addToCache(String key, T value) {
    if (cache.length < maxSize) {
      cache.putIfAbsent(key, () => value);
      list.add(key);
    } else {
      list.removeAt(0);
    }
    return cache;
  }
}

typedef MapType<T> = Map<String, T>;
