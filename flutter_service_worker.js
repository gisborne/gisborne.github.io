'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "af658e5d9e4bf1893c1ac34329e14efc",
"version.json": "5fc10240b73452c6a64964c44206397c",
"index.html": "615848c026bd81e3dbf937bfef42b48e",
"/": "615848c026bd81e3dbf937bfef42b48e",
"main.dart.js": "debc7498e6f0275342d824db18344258",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "2e80b11771bfece860bf33f24e3b47ca",
".git/config": "dcb3d3e36809d80c8ea5597009caa0cc",
".git/objects/3e/35dff2b70f7351d1da960a300eacb04d263485": "a9342793305fa2b32fd0b9abc7868618",
".git/objects/3e/9aec2af219e9b8ca7771f05f996a91b46521ce": "3e5239f2e1118b4ff22849c565e7a97a",
".git/objects/35/9cab337ae1b0fad3ab5cc4f55fe3348e9f0480": "053c16f3b6dc17b2bfba9767d13792ea",
".git/objects/3c/94c50dd720af9b98df100f31201d524ff5c9ba": "6661432159dea744ad72bf031b5739d4",
".git/objects/58/b007afeab6938f7283db26299ce2de9475d842": "6c6cbea527763bb3cdff2cecfee91721",
".git/objects/58/356635d1dc89f2ed71c73cf27d5eaf97d956cd": "f61f92e39b9805320d2895056208c1b7",
".git/objects/67/3271b28ec7f1c736cf1c0a29aa2857b5aaf751": "124e106d0dd1feadeae8bd1df0887dfc",
".git/objects/94/f7d06e926d627b554eb130e3c3522a941d670a": "77a772baf4c39f0a3a9e45f3e4b285bb",
".git/objects/94/358a44183fbe428cc98f510db41bb42d29f9f4": "07fa90641f3331231b10cd4d9411ad53",
".git/objects/b3/ebbd38f666d4ffa1a394c5de15582f9d7ca6c0": "23010709b2d5951ca2b3be3dd49f09df",
".git/objects/b4/a3ecb9428e2a4b8aff40c099e1c27d64a928f0": "6e4bc29289eb6be950713f1b329eaf0d",
".git/objects/a2/074a3e4abae957634ccc2b4ecbd532eb6518e9": "cc2e41e9f8d28455058d8fdd271a5b56",
".git/objects/d1/098e7588881061719e47766c43f49be0c3e38e": "f17e6af17b09b0874aa518914cfe9d8c",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/f3/f71df0b09509d5abe2215340e16ceb4f64ba77": "d8938f689977036672e6ec016fe846a6",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/c7/272d71de0d59487d43266c77e3a2c09c6bd605": "3881001bb36a730aa36eb3ba435d4a60",
".git/objects/c7/290b093c2a768abd3dfa9e7383cd469d70b09f": "8ed91692d13903fee6cbe73d1fbf1597",
".git/objects/c9/bf8af1b92c723b589cc9afadff1013fa0a0213": "632f11e7fee6909d99ecfd9eeab30973",
".git/objects/fc/a0b230bdb8182f5f01e16c491bbe24dc9629da": "30a6a98642bac64d5ade06735067f547",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/e3/0360a73e6153241b91fa7efaccff0135f4f40a": "4cd6a8caefe4bfcfd7557cd13b8f92c9",
".git/objects/20/cb2f80169bf29d673844d2bb6a73bc04f3bfb8": "b807949265987310dc442dc3f9f492a2",
".git/objects/20/1afe538261bd7f9a38bed0524669398070d046": "82a4d6c731c1d8cdc48bce3ab3c11172",
".git/objects/18/eb401097242a0ec205d5f8abd29a4c5e09c5a3": "4e08af90d04a082aab5eee741258a1dc",
".git/objects/29/fa3f88c2d55b84d14a50817a3308286a49356f": "5785a76ddcbf49095e11f9db9cbda44b",
".git/objects/45/7392936fdc543b325e0173e9fa1acb3946efc4": "f2018faac3e87a2c9df3b48b2fa7df9d",
".git/objects/1a/a1d479d0184eebd0ee6f5c3ac6a2221437c07c": "5018fc1b23052a4299c834c01867cd45",
".git/objects/7b/8b1c7fb47f3f9af5059bab237018d66d518f8d": "29c9f25d1726dfc720dfe363dafee17d",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/43/24cbfd9c69e90caf4b56139a9c3b834ecb5c42": "186d9d0712e731c5a3e1aeb4a82525e9",
".git/objects/88/e002c50ac058413fe6f5b259a0f6bacf2c32be": "1492251dc7ae2a975ec063aef33179db",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/5c/ddb390f85b500d1f61560d695cb99c7a4aa704": "8d52d1f57409d57c7a0c1d829d1feece",
".git/objects/09/4bb6ae24f0cd847d40cb4cc4a2434f2ec9b83b": "b9e6d850322c11db635bcf0a45b762ff",
".git/objects/06/ec05a8b03b52768ca3d6626c929dc7eb9fe68c": "2ba24566c95b366e5af810debdd127be",
".git/objects/0a/3e4b24e3a06e88a2328da8fc9d0dfb34607b0a": "f1e072ba75e7180c8af6d331bc97f786",
".git/objects/bf/4ebf8c0811447af82305cc1296155266ed6244": "51768c7e419cebfec769afc14c8947a6",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/dd/faa42c3135a8156e19ba9f98b62b1a6d1d67c8": "8209dc84ceaaa7641b31066538438c69",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/db/9020ddb2dc0bdda8ba2748848b8a16e8e6ecbf": "65bf64870fefb4cf32c7b55a54c5191f",
".git/objects/b0/8f9c92e0659230a1ec90e27a6fa890683b1765": "920c58be72bab29f8bb74a91505beed4",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/fa/d959c8a12b7deba4bb3b687747acefb654211e": "169d98649cd5b4e70ef3bc40127241bb",
".git/objects/e7/7c72724f3c14fc85d9cefe99af5a84decd5cb1": "251edb054b3e5739bdc89cfd2b28a7d9",
".git/objects/ce/f502a6fd670c417e8b4d136a5c5474e694b640": "fc5efc80f591949268db789c8f14b75e",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/2d/132e2814b56d8d26775adf2395d5f572493fab": "467c09bf6d10a4c996413c05aee75386",
".git/objects/84/7c48c430e0e00bf644feab8180ac12f3f16a9b": "cd5edaaf984f3aac4002ea7c02547717",
".git/objects/4a/ca05309fbb30ee51ad33769a4a4eb1237dbfd0": "3a8db7354efc84bf702e302539c064e2",
".git/objects/23/711383aaca5a2395111905710fc2604e18153d": "a69c8a13d307b2361620ee7364a66fbc",
".git/objects/71/3f932c591e8f661aa4a8e54c32c196262fd574": "66c6c54fbdf71902cb7321617d5fa33c",
".git/objects/49/adebdb511c8c293b28db3f6792e5bac28cdc32": "ba6a3971e7f06834fd6ec3844372ce17",
".git/objects/25/8675c919ce4d33c942bc6af60e942839dbf8e2": "acd6df63b54fa2ae2454da514e77c8a1",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "3b9e07fcb5c56cadc970c250c3b1b065",
".git/logs/refs/heads/main": "3b9e07fcb5c56cadc970c250c3b1b065",
".git/logs/refs/remotes/origin/main": "f3fbb3ec21a8854998f29542fbfd875c",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/main": "5594910190075c966778d7df6f534a5d",
".git/refs/remotes/origin/main": "5594910190075c966778d7df6f534a5d",
".git/index": "8c181a65fbe378d7874a9af12a759315",
".git/COMMIT_EDITMSG": "d23a5a97f7a6365ceba57554f58f3a4b",
"assets/AssetManifest.json": "1090db9637a0adcdfde67dadf9269d70",
"assets/NOTICES": "b30d489e630678a31fee363f94b05fb3",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "02ebc5e7087ea16fe2e9d27decaca34c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "36ea151c535f216bca68f8e5c79ec6e7",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "a905200230ad904361c94395ff62a746",
"assets/fonts/Lora-Italic-VariableFont_wght.ttf": "916cdb4f95efe220a5ca1310ca73fc66",
"assets/fonts/Lora-VariableFont_wght.ttf": "016e8a3db1b3e0086a60d9d7653ab1fc",
"assets/fonts/OFL.txt": "53de55d3ae8d66d7bf6505d99366433d",
"assets/fonts/MaterialIcons-Regular.otf": "8eff9040a1138081e0ddb7b27fd472ae",
"assets/assets/guyren_portrait.jpg": "b40d2ee9f1fbddc7afcb30a691342649",
"assets/assets/guyren_portrait.png": "ea581550f330566aff9745ec23b989ce",
"assets/assets/lydb_presentation.png": "80069f29b8b1cc63e342ee6142ac215e",
"assets/assets/guyren-writing-sample.pdf": "9d9e0fd03076f1739761c460343a0693",
"assets/assets/resume.pdf": "782f4040c530e0e5806896fee9c13203",
"assets/assets/keyword_args_presentation.png": "a7a6e32f3d766abaaad23a6d01e2af18",
"assets/assets/guyren-howe-resume.pdf": "ecc6cc00070d07597a8f09aa5acf57b2",
"assets/assets/postgres-types.png": "1b4bc4a3e86426afc57f85ae24ebda67",
"assets/assets/cyc.png": "87bf3ccf8c41ede95235409ece56072e",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
