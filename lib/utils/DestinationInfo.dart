import 'package:heal_and_go/data/response/RecommendationDataItem.dart';

class DestinationInfo {
  final String nama, kode, kategori, lokasi, deskripsi, url_citra;

  DestinationInfo({
    required this.nama,
    required this.kode,
    required this.kategori,
    required this.lokasi,
    required this.deskripsi,
    required this.url_citra,
  });
}

List<RecommendationDataItem> recommendations = [
  RecommendationDataItem(
      id: '001',
      name: 'Malioboro',
      category: 'Pasar',
      location: 'Yogyakarta',
      description: 'Jalan Malioboro adalah nama salah satu kawasan jalan dari tiga jalan di Kota Yogyakarta yang membentang dari Tugu Yogyakarta hingga ke perempatan Kantor Pos Yogyakarta. Secara keseluruhan terdiri atas Jalan Margo Utomo, Jalan Malioboro, dan Jalan Margo Mulyo. Jalan ini merupakan poros Garis Imajiner Kraton Yogyakarta',
      image: 'https://img.inews.co.id/media/822/files/inews_new/2021/06/21/pedagang_malioboro.jpg'
  ),
  RecommendationDataItem(
      id: '002',
      name: 'Pantai Pangandaran',
      category: 'Pantai',
      location: 'Jawa Barat',
      description: 'Pantai Pangandaran merupakan sebuah objek wisata andalan Kabupaten Pangandaran yang terletak di sebelah tenggara Jawa Barat, tepatnya di Desa Pangandaran dan Pananjung, sekitar 222 km dari selatan Bandung, Kecamatan Pangandaran, Kabupaten Pangandaran, Provinsi Jawa Barat.',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Pantai_Pangandaran.jpg/1200px-Pantai_Pangandaran.jpg'
  ),
  RecommendationDataItem(
      id: '003',
      name: 'Dufan',
      category: 'Taman',
      location: 'Jakarta',
      description: 'Dufan atau disebut juga Dunia Fantasi adalah sebuah theme park yang terletak di kawasan Taman Impian Jaya Ancol, Jakarta Utara, Indonesia yang diresmikan dan dibuka untuk umum pada tanggal 29 Agustus 1985',
      image: 'https://www.ancol.com/shared/images/606bc34a-097b-4b33-8fcb-92247a25b2bd.jpg'
  ),
  RecommendationDataItem(
      id: '004',
      name: 'TMII',
      category: 'Taman',
      location: 'Jakarta',
      description: 'Taman Mini Indonesia Indah merupakan suatu kawasan taman wisata bertema budaya Indonesia di Jakarta Timur. Area seluas kurang lebih 150 hektare atau 1,5 kilometer persegi ini terletak pada koordinat 6°18′6.8″LS,106°53′47.2″BT.',
      image: 'https://jadwaltravel.com/wp-content/uploads/2019/11/https___www.instagram.com_p_BhOPpmAnqj7_.jpg'
  ),
  RecommendationDataItem(
      id: '005',
      name: 'Taman Safari Bogor',
      category: 'Taman',
      location: 'Jawa Barat',
      description: 'Taman Safari Indonesia adalah tempat wisata keluarga berwawasan lingkungan yang berorientasi pada habitat satwa di alam bebas. Taman Safari Indonesia terletak di Desa Cibeureum Kecamatan Cisarua, Kabupaten Bogor, Jawa Barat atau yang lebih dikenal dengan kawasan Puncak.',
      image: 'https://pinhome-blog-assets-public.s3.amazonaws.com/2021/08/taman-safari-bogor-hotel-1.jpg'
  ),
];

List<RecommendationDataItem> destinationinfo = [
  RecommendationDataItem(
      id: '001',
      name: 'Malioboro',
      category: 'Pasar',
      location: 'Yogyakarta',
      description: 'Jalan Malioboro adalah nama salah satu kawasan jalan dari tiga jalan di Kota Yogyakarta yang membentang dari Tugu Yogyakarta hingga ke perempatan Kantor Pos Yogyakarta. Secara keseluruhan terdiri atas Jalan Margo Utomo, Jalan Malioboro, dan Jalan Margo Mulyo. Jalan ini merupakan poros Garis Imajiner Kraton Yogyakarta',
      image: 'https://img.inews.co.id/media/822/files/inews_new/2021/06/21/pedagang_malioboro.jpg'
  ),
  RecommendationDataItem(
      id: '002',
      name: 'Pantai Pangandaran',
      category: 'Pantai',
      location: 'Jawa Barat',
      description: 'Pantai Pangandaran merupakan sebuah objek wisata andalan Kabupaten Pangandaran yang terletak di sebelah tenggara Jawa Barat, tepatnya di Desa Pangandaran dan Pananjung, sekitar 222 km dari selatan Bandung, Kecamatan Pangandaran, Kabupaten Pangandaran, Provinsi Jawa Barat.',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Pantai_Pangandaran.jpg/1200px-Pantai_Pangandaran.jpg'
  ),
  RecommendationDataItem(
      id: '003',
      name: 'Dufan',
      category: 'Taman',
      location: 'Jakarta',
      description: 'Dufan atau disebut juga Dunia Fantasi adalah sebuah theme park yang terletak di kawasan Taman Impian Jaya Ancol, Jakarta Utara, Indonesia yang diresmikan dan dibuka untuk umum pada tanggal 29 Agustus 1985',
      image: 'https://www.ancol.com/shared/images/606bc34a-097b-4b33-8fcb-92247a25b2bd.jpg'
  ),
  RecommendationDataItem(
      id: '004',
      name: 'TMII',
      category: 'Taman',
      location: 'Jakarta',
      description: 'Taman Mini Indonesia Indah merupakan suatu kawasan taman wisata bertema budaya Indonesia di Jakarta Timur. Area seluas kurang lebih 150 hektare atau 1,5 kilometer persegi ini terletak pada koordinat 6°18′6.8″LS,106°53′47.2″BT.',
      image: 'https://jadwaltravel.com/wp-content/uploads/2019/11/https___www.instagram.com_p_BhOPpmAnqj7_.jpg'
  ),
  RecommendationDataItem(
      id: '005',
      name: 'Taman Safari Bogor',
      category: 'Taman',
      location: 'Jawa Barat',
      description: 'Taman Safari Indonesia adalah tempat wisata keluarga berwawasan lingkungan yang berorientasi pada habitat satwa di alam bebas. Taman Safari Indonesia terletak di Desa Cibeureum Kecamatan Cisarua, Kabupaten Bogor, Jawa Barat atau yang lebih dikenal dengan kawasan Puncak.',
      image: 'https://pinhome-blog-assets-public.s3.amazonaws.com/2021/08/taman-safari-bogor-hotel-1.jpg'
  ),
  RecommendationDataItem(
      id: '006',
      name: 'Gunung Bromo',
      category: 'Gunung',
      location: 'Jawa Timur',
      description: 'Gunung Bromo atau dalam bahasa Tengger dieja "Brama", juga disebut Kaldera Tengger, adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia.',
      image: 'https://statik.tempo.co/data/2019/05/21/id_843378/843378_720.jpg'
  ),
  RecommendationDataItem(
      id: '007',
      name: 'Pantai Pandawa',
      category: 'Pantai',
      location: 'Bali',
      description: 'Pantai Pandawa adalah salah satu kawasan wisata di area Kuta selatan, Kabupaten Badung, Bali. Pantai ini terletak di balik perbukitan dan sering disebut sebagai Pantai Rahasia. Di sekitar pantai ini terdapat dua tebing yang sangat besar yang pada salah satu sisinya dipahat lima patung Pandawa dan Kunti.',
      image: 'https://koran-jakarta.com/images/article/pantai-pandawa-destinasi-hits-di-bali-selatan-220421144844.jpg'
  ),
  RecommendationDataItem(
      id: '008',
      name: 'Danau Toba',
      category: 'Air',
      location: 'Sumatera Utara',
      description: 'Danau Toba adalah danau alami berukuran besar di Indonesia yang berada di kaldera Gunung Supervulkan. Danau ini memiliki panjang 100 kilometer, lebar 30 kilometer, dan kedalaman 505 meter. Danau ini terletak di tengah pulau Sumatra bagian utara dengan ketinggian permukaan sekitar 900 meter',
      image: 'https://img.inews.co.id/media/822/files/inews_new/2021/09/03/danau_toba.jpg'
  ),
  RecommendationDataItem(
      id: '009',
      name: 'Lombok',
      category: 'Pantai',
      location: 'Nusa Tenggara Barat',
      description: 'Pulau Lombok adalah sebuah pulau di kepulauan Sunda Kecil atau Nusa Tenggara yang terpisahkan oleh Selat Lombok dari Bali di sebelah barat dan Selat Alas di sebelah timur dari Sumbawa. Pulau ini kurang lebih berbentuk bulat dengan semacam "ekor" di sisi barat daya yang panjangnya kurang lebih 70 km',
      image: 'https://www.weseektravel.com/wp-content/uploads/2019/10/MAWUN-BEACH-LOMBOK-INDONESIA--712x768.jpg'
  ),
  RecommendationDataItem(
      id: '010',
      name: 'Ubud',
      category: 'Pantai',
      location: 'Bali',
      description: 'Kota Ubud, terletak di bagian tengah pulau Bali, Indonesia, dikenal sebagai pusat tarian dan kerajinan tradisional. Hutan hujan dan terasering padi yang mengelilingi kawasan Ubud, ditambah pura dan tempat pemujaan, merupakan salah satu lanskap Bali yang paling terkenal. Terdapat situs suci kuno, yaitu Goa Gajah yang memiliki ukiran serba mendetail dan Gunung Kawi, yaitu tempat pemujaan yang diukir dari batu',
      image: 'https://twomonkeystravelgroup.com/wp-content/uploads/2021/01/DIY-Travel-Guide-to-Ubud-Bali-Indonesia-03.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Langit',
    id: '011',
    category: 'Taman',
    location: 'Jawa Barat',
    description: 'Taman Langit Pangalengan 360 merupakan destinasi wisata panorama dan taman perkemahan ( Panoramic and Camp Ground Spot ), terletak di Perkebunan Cukul Desa Sukaluyu, Kecamatan Pangalengan, Kabupaten Bandung - Jawa Barat berada diketinggian 1650-1660 mdpl. Taman Langit Pangalengan 360 menyajikan pemandangan alam di perbatasan Bandung Selatan dan Garut Selatan dan Juga sebagian Kota Bandung.',
    image: 'https://asset.kompas.com/crops/b1xj-5QcMgQM9GRqUehmpgLwIeA=/49x2:679x422/750x500/data/photo/2022/01/04/61d432eabcf26.jpg'
  ),
  RecommendationDataItem(
    name: 'Kawah Putih',
    id: '012',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Kawah Putih adalah sebuah tempat wisata di Jawa Barat yang terletak di Desa Alam Endah, Kecamatan Rancabali, Kabupaten Bandung Jawa Barat yang terletak di kaki Gunung Patuha. Kawah putih merupakan sebuah danau yang terbentuk dari letusan Gunung Patuha.',
    image: 'https://awsimages.detik.net.id/community/media/visual/2022/05/03/kawasan-wisata-kawah-putih-2_169.jpeg?w=700&q=90'
  ),
  RecommendationDataItem(
    name: 'Green Canyon Pangandaran',
    id: '013',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Cukang Taneuh atau Green Canyon adalah salah satu objek wisata di Jawa Barat yang terletak di Desa Kertayasa Kecamatan Cijulang, Kabupaten Pangandaran. Objek wisata ini berjarak ± 31 km dari Pangandaran.',
    image: 'https://cdn-cas.orami.co.id/parenting/images/Green-Canyon-Indonesia-1.width-800.jpg'
  ),
  RecommendationDataItem(
    name: 'Curug Cikaso',
    id: '014',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Air Terjun Cikaso, adalah merupakan salahsatu air terjun yang terletak di selatan Kabupaten Sukabumi. Air terjun ini juga dikenal sebagai Curug Luhur, tetapi nama Curug Cikaso lebih dikenal masyarakat sekitar dikarenakan aliran airnya berasal dari anak Sungai Cikaso yaitu Sungai Cicurug',
    image: 'https://camerawisata.com/wp-content/uploads/2018/09/Pemandangan-Curug-Cikaso-Sukabumi.png'
  ),
  RecommendationDataItem(
    name: 'Kepulauan Seribu',
    id: '015',
    category: 'Pantai',
    location: 'Jakarta',
    description: 'Kepulauan Seribu merupakan salah satu wilayah yang masuk ke dalam administrasi Pemerintah Provinsi DKI Jakarta. Secara geografis, Kepulauan Seribu memiliki total wilayah seluas 4.745,62 km2 yang terdiri dari 8,76 km2 daratan, dan terdiri lebih dari 110 pulau.',
    image: 'https://pulauseribu.co.id/wp-content/uploads/cottage-pulau-seribu-murah-915x480.jpg'
  ),
  RecommendationDataItem(
    name: 'Cukul Sunrise Point',
    id: '016',
    category: 'Gunung',
    location: 'Jawa Barat',
    description: 'Untuk sunrise point di Cukul ini berupa area bukit dengan ketinggian 1600 meter di atas permukaan laut. Di area bukit tidak hanya menyediakan tempat terbaik untuk menyaksikan pesona alam matahari terbit.',
    image: 'https://awsimages.detik.net.id/community/media/visual/2018/06/16/434e9c8a-a1a9-489a-b9f7-3f7ebdc17b42_169.jpeg?w=620'
  ),
  RecommendationDataItem(
    name: 'Grafika Cikole',
    id: '017',
    category: 'Taman',
    location: 'Jawa Barat',
    description: 'Terminal wisata grafika cikole adalah tempat wisata, restoran serta penginapan di lembang yang berada di kaki gunung dengan ketinggian 1400 meter di atas permukaan laut. Udara yang sejuk dengan suhu 20 derajat celcius dan kontur area Terminal Wisata Grafika Cikole yang berbukit dikelilingi hutan pinus di area seluas 9 hektar merupakan tempat wisata di bandung lembang yang tepat untuk menyelenggrakan aktifitas outbound bagi keluarga, instansi, sekolah dan keluarga.',
    image: 'https://lh3.googleusercontent.com/pw/AM-JKLWbfHOa0RIz96n1nFMvtZchkdgIz9Cg6E4jBQwMzMPSKWvQCj7WszOmyxzuBnqL0gcL8Bxw0DMlJn6TRkQ_Dweoe-9bn6wi52oMUWLsFEvA9ta83w3mhQ-mck0DiNfcHSu_5HR8G0qN4LIt0VfmJBxD=w1429-h953-no'
  ),
  RecommendationDataItem(
    name: 'Rancabali Glamping',
    id: '018',
    category: 'Taman',
    location: 'Jawa Barat',
    description: 'Glamping Lakeside Rancabali adalah tempat wisata yang bernuansa alam. Di sekitar area ini dikelilingi oleh pemandangan perkebunan teh hijau yang sangat luar biasa indahnya.',
    image: 'https://www.hargatiket.net/wp-content/uploads/2019/01/harga-tiket-glamping-lakeside-rancabali.jpg'
  ),
  RecommendationDataItem(
    name: 'Nusa Penida',
    id: '019',
    category: 'Pantai',
    location: 'Bali',
    description: 'Nusa Penida adalah sebuah pulau bagian dari negara Republik Indonesia yang terletak di sebelah tenggara Bali yang dipisahkan oleh Selat Badung. Di dekat pulau ini terdapat juga pulau-pulau kecil lainnya yaitu Nusa Ceningan dan Nusa Lembongan.',
    image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/f5/3e/e5/nusa-penida-island.jpg?w=1200&h=-1&s=1'
  ),
  RecommendationDataItem(
    name: 'Labuan Bajo',
    id: '020',
    category: 'Pantai',
    location: 'Nusa Tenggara Timur',
    description: 'Labuan Bajo merupakan salah satu kota yang berada di kecamatan Komodo, Kabupaten Manggarai Barat, provinsi Nusa Tenggara Timur, Indonesia. Kota Labuan Bajo juga merupakan ibu kota dari kecamatan Kecamatan Komodo dan ibu kota Kabupaten Manggarai Barat. Sedang diwacanakan pengembangan Kota Labuan Bajo.',
    image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/33/f5/c6/labuan-bajo.jpg?w=700&h=500&s=1'
  ),
  RecommendationDataItem(
    name: 'Simpang Lima Gumul',
    id: '021',
    category: 'Taman',
    location: 'Jawa Timur',
    description: 'Monumen Simpang Lima Gumul atau biasa disingkat SLG adalah salah satu bangunan yang menjadi ikon Kabupaten Kediri yang bentuknya menyerupai Arc de Triomphe yang berada di Paris, Prancis. SLG mulai dibangun pada tahun 2003 dan diresmikan pada tahun 2008, yang digagas oleh Bupati Kediri saat itu, Sutrisno.',
    image: 'https://i.pinimg.com/736x/6c/0f/22/6c0f229eb61f169549cb7224d9695aa5.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Tanjung Lesung',
    id: '022',
    category: 'Pantai',
    location: 'Banten',
    description: 'Pantai Tanjung Lesung yang terletak di Desa Tanjung Jaya, Kecamatan Panimbang, Kabupaten Pandeglang, Provinsi Banten. Pantai yang menghadap ke Samudra Hindia ini berada sedikit menjorok ke laut yang terlihat seperti lesung (alat penumbuk padi). Karena bentuknya tersebut, pantai ini akhirnya dinamakan Lesung.',
    image: 'https://cdn-2.tstatic.net/travel/foto/bank/images/pantai-tanjung-lesung-banten.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Srakung',
    id: '023',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Srakung berlokasi di Desa Pucung, Kecamatan Girisubo, Kabupaten Gunungkidul, DIY. Lokasi pantai ini searah dengan Pantai Sadeng. Jadi jika ke Pantai Srakung bisa sekalian ke Pantai Sadeng.',
    image: 'http://www.pegipegi.com/travel/wp-content/uploads/2014/04/srakung6.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Sawarna',
    id: '024',
    category: 'Pantai',
    location: 'Banten',
    description: 'Desa Wisata Sawarna adalah sebuah Desa wisata di Kecamatan Bayah, Kabupaten Lebak, Banten. Desa Sawarna berbatasan langsung dengan Samudera Hindia, di sisi selatan sehingga Desa Sawarna merupakan kawasan pesisir pantai.',
    image: 'https://piknikwisata.com/wp-content/uploads/2019/11/info-lengkap-wisata-pantai-sawarna.jpg'
  ),
  RecommendationDataItem(
    name: 'Tebing Breksi',
    id: '025',
    category: 'Taman',
    location: 'Yogyakarta',
    description: 'Tebing Breksi merupakan tempat wisata yang berada di wilayah Kabupaten Sleman. Lokasinya berada di sebelah selatan Candi Prambanan dan berdekatan dengan Candi Ijo serta Kompleks Keraton Boko. Lokasi Wisata Tebing Breksi tepatnya berada di Desa Sambirejo, Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55572.',
    image: 'https://asset.kompas.com/crops/5ZBaogQARv8odjFn3ktbP1zZAKk=/0x0:739x493/750x500/data/photo/2021/03/09/60470c6b30f8c.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Safari Pasuruan',
    id: '026',
    category: 'Taman',
    location: 'Jawa Timur',
    description: 'Taman Safari Indonesia 2 adalah salah satu safari park terluas di Asia, yang terletak di lereng Gunung Arjuno, Kecamatan Prigen, Kabupaten Pasuruan, Jawa Timur.',
    image: 'https://cdn-2.tstatic.net/travel/foto/bank/images/sejumlah-satwa-di-taman-safari-prigen-kamis-322022.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Laut Bunaken',
    id: '027',
    category: 'Pantai',
    location: 'Sulawesi Utara',
    description: 'Taman Nasional Bunaken adalah taman laut yang terletak di Sulawesi Utara, Indonesia. Taman ini terletak di Segitiga Terumbu Karang yang menjadi habitat bagi 390 spesies terumbu karang dan juga berbagai spesies ikan, moluska, reptil, dan mamalia laut',
    image: 'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2020/01/ikan-laut-1.jpg'
  ),
  RecommendationDataItem(
    name: 'Pulau Padar',
    id: '028',
    category: 'Pantai',
    location: 'Nusa Tenggara Timur',
    description: 'Pulau Padar adalah pulau ketiga terbesar di kawasan Taman Nasional Komodo, setelah Pulau Komodo dan Pulau Rinca. Pulau ini relatif lebih dekat ke Pulau Rinca daripada ke Pulau Komodo, yang dipisahkan oleh Selat Lintah. Pulau Padar tidak dihuni oleh ora. Di sekitar pulau ini terdapat pula tiga atau empat pulau kecil.',
    image: 'https://awsimages.detik.net.id/community/media/visual/2019/01/18/327bf7c6-c6f2-4b6c-803a-f0c566fc08ff_169.jpeg?w=780&q=90'
  ),
  RecommendationDataItem(
    name: 'Pantai Tampora',
    id: '029',
    category: 'Pantai',
    location: 'Jawa Timur',
    description: 'Pantai Tampora yang terletak di Desa Kalianget, Kecamatan Banyuglugur, Kabupaten Situbondo Propinsi Jawa Timur ini memiliki pasir putih serta terdapat tebing bebatuan. Pantai tampora terletak di balik bukit dimana pohon-pohon rimbun menjadi nilai plus bagi wisatawan untuk menikmati keindahan pantai ini.',
    image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/31/3b/3b/pantai-tampora.jpg?w=1200&h=1200&s=1'
  ),
  RecommendationDataItem(
    name: 'Pantai Surumanis',
    id: '030',
    category: 'Pantai',
    location: 'Jawa Tengah',
    description: 'Pantai Surumanis Kebumen adalah pantai dengan pasir pantai berwarna hitam kecoklatan dengan batu karang besar disekelilingnya. Pantai ini berada pada daerah tersembunyi dan harus melewati Pantai Pecaron terlebih dahulu untuk menjangkaunya.',
    image: 'https://sikidang.com/wp-content/uploads/Pantai-Surumanis-Pantai-Surumanis.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Kasap',
    id: '031',
    category: 'Pantai',
    location: 'Jawa Timur',
    description: 'Pantai Kasap merupakan salah satu pantai di paitan. Secara administratif terletak di wilayah Kecamatan Pringkuku tepatnya di Dusun Ketro, Desa Watukarung. Pantai Kasap penampakannya mirip dengan Kabupaten Raja Ampat yang memiliki pulau pulau kecil di tengah laut.',
    image: 'https://www.pantainesia.com/wp-content/uploads/2018/07/pantai-kasap.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Gesing',
    id: '032',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Gesing memiliki pasir putih dan ombak yang kecil sehingga cocok untuk wisata keluarga dan bermain air. Hal yang menarik dari pantai ini adalah gradasi permukaan air dari warna hijau terang ke warna biru menambah keindahan Pantai Gesing.',
    image: 'https://awsimages.detik.net.id/community/media/visual/2020/03/03/c82b7a02-2962-4e47-a187-fe77d41fe2b9_169.jpeg?w=780&q=90'
  ),
  RecommendationDataItem(
    name: 'Pantai Balekambang',
    id: '033',
    category: 'Pantai',
    location: 'Jawa Timur',
    description: 'Pantai Balekambang adalah sebuah pantai di pesisir selatan yang terletak di tepi Samudra Indonesia secara administratif masuk wilayah Dusun Sumber Jambe, Desa Srigonco, Kecamatan Bantur, Kabupaten Malang, Jawa Timur dan merupakan salah satu wisata di Kabupaten Malang sejak 1985 hingga kini.',
    image: 'https://media.suara.com/pictures/653x366/2021/09/17/43570-pantai-balekambang-malang-instagramatbalekambangmalang.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Air Manis',
    id: '034',
    category: 'Pantai',
    location: 'Sumatera Barat',
    description: 'Pantai Air Manis adalah pantai yang terletak kurang lebih 10 km ke selatan dari pusat Kota Padang. Lokasinya Berada di belakang Gunung Padang atau tepatnya di Kecamatan Padang Selatan, Kota Padang. Pantai ini merupakan salah satu tujuan wisata populer yang selalu ramai dikunjungi oleh masyarakat',
    image: 'https://pariwisata.padang.go.id/uploads/images/image_default_5e50303d895ca.jpg'
  ),
  RecommendationDataItem(
    name: 'Curug Cipendok',
    id: '035',
    category: 'Air',
    location: 'Jawa Tengah',
    description: 'Curug Cipendok adalah air terjun dengan ketinggian 92 meter yang terletak di lereng Gunung Slamet. Curug Cipendok mempunyai daya tarik tersendiri, karena lingkungan masih betul-betul alami. Kesunyian juga masih sangat terasa, sebab belum banyak pelancong yang datang menikmati keindahan alamnya.',
    image: 'https://sikidang.com/wp-content/uploads/Curug-Cipendok.jpg'
  ),
  RecommendationDataItem(
    name: 'Curug Cipamingkis',
    id: '036',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Curug Cipamingkis merupakan tempat pertemuan aliran dua sungai yang melintasi Kabupaten Bogor, yaitu Sungai Cipamingkis dan Sungai Cisarua. Nama Curug Cipamingkis sendiri diambil dari salah satu sumber sungai tersebut.',
    image: 'https://cdn.nativeindonesia.com/foto/curug-cipamingkis/Wahana-Kolam-Renang.jpg'
  ),
  RecommendationDataItem(
    name: 'Raja Ampat',
    id: '037',
    category: 'Pantai',
    location: 'Papua Barat',
    description: 'Kepulauan Raja Ampat merupakan rangkaian empat gugusan pulau yang berdekatan dan berlokasi di barat bagian Kepala Burung Pulau Papua. Secara administrasi, gugusan ini berada di bawah Kabupaten Raja Ampat, Provinsi Papua Barat.',
    image: 'https://asset.kompas.com/crops/ZXmxhiXwfTv2aYF8_QlPdvMYADI=/0x0:720x480/750x500/data/photo/2021/10/31/617e75ab7283d.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Santolo',
    id: '038',
    category: 'Pantai',
    location: 'Jawa Barat',
    description: 'Pantai Santolo adalah sebuah pantai yang terletak di Kecamatan Cikelet, Kabupaten Garut, Jawa Barat, Indonesia. Garut tidak hanya terkenal dengan Jeruk Garut tetapi salah satu pantai yang populer terdapat di Kabupaten Garut yaitu Pantai Santolo.',
    image: 'https://www.pantainesia.com/wp-content/uploads/2018/06/pantai-santolo.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Nasional Bantimurung',
    id: '039',
    category: 'Taman',
    location: 'Sulawesi Selatan',
    description: 'Taman Nasional Bantimurung Bulusaraung juga biasa disebut TN Babul. Kawasan taman nasional ini membentang dari Kabupaten Maros hingga Kabupaten Pangkep, Sulawesi Selatan. Luas lahan yang dimiliki kurang lebih 43.750 hektar dan menyimpan keanekaragaman hayati yang melimpah.',
    image: 'https://cdn.timesmedia.co.id/images/2019/10/29/Taman-Nasional-Bantimurung-Bulusaraung.jpg'
  ),
  RecommendationDataItem(
    name: 'Candi Prambanan',
    id: '040',
    category: 'Candi',
    location: 'Yogyakarta',
    description: 'Candi Prambanan atau Candi Roro Jonggrang adalah kompleks candi Hindu terbesar di Indonesia yang dibangun pada abad ke-9 masehi. Candi ini dipersembahkan untuk Trimurti, tiga dewa utama Hindu yaitu dewa Brahma sebagai dewa pencipta, dewa Wisnu sebagai dewa pemelihara, dan dewa Siwa sebagai dewa pemusnah.',
    image: 'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/08/22/1747449169.jpg'
  ),
  RecommendationDataItem(
    name: 'Candi Borobudur',
    id: '041',
    category: 'Candi',
    location: 'Jawa Tengah',
    description: 'Candi Borobudur atau yang disingkat Borobudur adalah sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia. Candi ini terletak kurang lebih 100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut Yogyakarta.',
    image: 'https://pict.sindonews.net/dyn/620/pena/news/2021/10/02/768/557306/5-misteri-candi-borobudur-yang-belum-terungkap-hingga-kini-vzq.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Situ Lembang',
    id: '042',
    category: 'Taman',
    location: 'Jakarta',
    description: 'Taman Situ Lembang adalah sebuah taman kota yang terletak di pusat Jakarta. Situ berarti danau yang payau, sedangkan Lembang adalah nama jalan yang berada di dekat taman tersebut. Taman ini merupakan salah satu taman tertua di Jakarta dan memiliki danau kecil yang airnya berasal dari sumber air alam.',
    image: 'https://www.jejakpiknik.com/wp-content/uploads/2017/09/1-@wahyu04061983-630x380.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Sari',
    id: '043',
    category: 'Taman',
    location: 'Yogyakarta',
    description: 'Tamansari, yang berarti taman yang indah, pada mulanya merupakan sebuah taman atau kebun istana Keraton Yogyakarta. Kompleks ini dibangun secara bertahap pada masa Sri Sultan Hamengku Buwono I. Pembangunan dimulai pada tahun 1758 M, ditandai oleh candra sengkala "Catur Naga Rasa Tunggal" yang menunjuk tahun 1684 Jawa.',
    image: 'https://cdn.nativeindonesia.com/foto/taman-sari-jogja/Taman-Sari-Jogja.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Kuta',
    id: '044',
    category: 'Pantai',
    location: 'Bali',
    description: 'Pantai Kuta adalah sebuah tempat pariwisata yang terletak di kecamatan Kuta, sebelah selatan Kota Denpasar, Bali, Indonesia. Daerah ini merupakan sebuah tujuan wisata turis mancanegara dan telah menjadi objek wisata andalan Pulau Bali sejak awal tahun 1970-an.',
    image: 'https://indonesiakaya.com/wp-content/uploads/2020/10/pantai_kuta_bali_1200.jpg'
  ),
  RecommendationDataItem(
    name: 'Lembang Park & Zoo',
    id: '045',
    category: 'Taman',
    location: 'Jawa Barat',
    description: 'Lembang Park and Zoo adalah sebuah objek wisata yang memadukan berbagai macam tema wisata dalam satu kawasan. Luas Lembang Park and Zoo sekitar 20 ha, sehingga dengan luas tersebut mampu menyajikan berbagai macam wahana. Meskipun baru hanya sampai 10 ha yang dapat tertata secara optimal.',
    image: 'https://asset.kompas.com/crops/4uvMnzzclujiISj_eCrKdbkyOFU=/0x90:1080x810/750x500/data/photo/2020/01/26/5e2d3e0492143.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Hutan Raya Ir.H.Djuanda',
    id: '046',
    category: 'Taman',
    location: 'Jawa Barat',
    description: 'Taman Hutan Raya Ir. H. Djuanda merupakan kawasan konservasi yang terpadu antara alam sekunder dengan hutan tanaman dengan jenis Pinus yang terletak di Sub-Daerah Aliran Sungai Cikapundung.',
    image: 'https://modernsocialmagazine.com/wp-content/uploads/2019/08/Indahnya-Taman-Hutan-Raya-Juanda.jpg'
  ),
  RecommendationDataItem(
    name: 'Red Island Beach',
    id: '047',
    category: 'Pantai',
    location: 'Jawa Timur',
    description: 'Pulau Merah atau Pulo Merah adalah sebuah pantai dan objek wisata di Kecamatan Pesanggaran, Kabupaten Banyuwangi, Provinsi Jawa Timur. Pantai ini dikenal karena sebuah bukit hijau kecil dengan tanah berwarna merah yang terletak di dekat bibir pantai. Bukit ini dapat dikunjungi dengan berjalan kaki saat air laut surut. ',
    image: 'https://www.eastjava.com/tourism/banyuwangi/images/pulau-merah.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Parangtritis',
    id: '048',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Parangtritis adalah tempat wisata yang terletak di Desa Parangtritis, Kapanéwon Kretek, Kabupaten Bantul, Daerah Istimewa Yogyakarta. Jaraknya kurang lebih 27 km dari pusat Kota Yogyakarta. Pantai ini menjadi salah satu destinasi wisata terkenal di Yogyakarta dan telah menjadi ikon pariwisata di Yogyakarta.',
    image: 'https://www.pantainesia.com/wp-content/uploads/2020/04/Pantai-Parangtritis-Yogyakarta.jpg'
  ),
  RecommendationDataItem(
    name: 'Gunung Lalakon',
    id: '049',
    category: 'Gunung',
    location: 'Jawa Barat',
    description: 'Gunung Lalakon merupakan sebuah gunung yang terdapat di Kampung Jelegong, Desa Badaraksa, Kecamatan Kutawaringin, Kabupaten Bandung, Jawa Barat dan memiliki ketinggian 870 meter. Gunung Lalakon terkenal dikarenakan bentuknya yang menyerupai kerucut sempurna atau piramida.',
    image: 'https://correcto.id/content/images/th1_2020102010051989908.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Indrayanti',
    id: '050',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Indrayanti adalah salah satu tempat wisata pantai di Jogja yang sering direkomendasikan pada wisatawan. Nama pantai Indrayanti sendiri sudah cukup dikenal di kalangan wisatawan baik lokal ataupun manca negara. Sama seperti tipikal pantai selatan di wilayah gunung kidul, pemandangan disini tidak kalah indahnya.',
    image: 'https://jogjacars.com/wp-content/uploads/2020/01/Pantai-Indrayanti-sumber-Camera-Wisata.png'
  ),
  RecommendationDataItem(
    name: 'Pantai Nglambor',
    id: '051',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Nglambor adalah sebuah pantai eksotis yang terletak di Kelurahan Purwodadi, Kecamatan Tepus, Gunung Kidul, Daerah Istimewa Yogyakarta. Lokasinya persis di sebelah barat dari Pantai Siung dan sebelah timur dari Pantai Jogan.',
    image: 'https://img.inews.co.id/media/822/files/inews_new/2020/03/31/IMG_31032020_143523__822_x_430_piksel_.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Kesirat',
    id: '052',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Kesirat atau Wisata Tanjung Kesirat merupakan salah satu pantai di Gunung Kidul yang memiliki topografi berbeda jika dibandingkan dengan pantai yang ada. Disini kamu tidak akan menyaksikan hamparan pasir yang menghiasi pantai, bahkan bermain air dan berenang pun tidak dapat kamu lakukan. Pantai ini hanya memiliki tebing karang dengan hiasan rumput serta pepohonan yang ada di sekitarnya, posisi lautan ada di bagian bawah tebing.',
    image: 'https://raskita.com/wp-content/uploads/2019/09/Pantai-Kesirat.jpg'
  ),
  RecommendationDataItem(
    name: 'Dago Dreampark',
    id: '053',
    category: 'Taman',
    location: 'Jawa Barat',
    description: 'Dago Dreampark merupakan wisata kekinian di Kota Bandung dengan luas 13 hektar yang mengusung konsep Jawa - Sunda & Bali dengan dilengkapi berbagai fasilitas & wahana yang menarik.',
    image: 'https://img.idxchannel.com/media/500/images/idx/2021/10/14/Dago_Dreampark.jpg'
  ),
  RecommendationDataItem(
    name: 'Water Blaster Bukit Candi Golf',
    id: '054',
    category: 'Air',
    location: 'Jawa Tengah',
    description: 'Water Blaster Semarang Graha Candi Golf merupakan wahana permainan air yang pertama kali berdiri di Semarang dan menjadi andalan rekreasi keluarga warga kota Semarang. Total wahana air yang dimiliki Water Blaster Semarang ini delapan unit. Keutamaan wahana ini memiliki arus luncur dengan ketinggian 25 meter di atas permukaan tanah. Anda dapat meluncur cepat dan berputar sepanjang 230 meter hingga tercebur ke dalam kolam yang segar.',
    image: 'https://2.bp.blogspot.com/-XTMgXVkHPSs/V2our7KuviI/AAAAAAAAEoI/UarKRrS9gvEGid0gkNtvKC7Rd_Wi2AXSgCLcB/w1280-h720-p-k-no-nu/water%2Bblaster%2Bsemarang.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Sungai Mudal',
    id: '055',
    category: 'Taman',
    location: 'Yogyakarta',
    description: 'Taman Sungai Mudal, sebuah objek wisata alam terbuka yang terletak di Kabupaten Kulon Progo, yang menawarkan pesona sebuah kolam pemandian yang bersumber dari mata air alami. Mata airnya bersumber dari sebuah goa, sehingga kehadiran Taman Sungai Mudal menjadi mengesampingkan kesan angker dari sebuah goa. Apalagi ditambah dengan dukungan fasilitas yang membuat para wisatawan merasa nyaman saat berada di sana.',
    image: 'https://ksmtour.com/media/images/articles27/taman-sungai-mudal-kulonprogo-Yogyakarta.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Marina',
    id: '056',
    category: 'Pantai',
    location: 'Jawa Tengah',
    description: 'Pantai Marina adalah salah satu objek wisata pantai yang berada di kota Semarang, Jawa Tengah. Pantai ini menyimpan pemandangan eksotis khas kota Semarang. Dahulu, tempat ini merupakan hutan bakau dan tambak, tapi pemerintah setempat mengubahnya menjadi tempat rekreasi dengan cara reklamasi daratan',
    image: 'https://www.hargatiket.net/wp-content/uploads/2021/03/pantai-marina-semarang-buka-atau-tutup.jpg'
  ),
  RecommendationDataItem(
    name: 'Tempo Gelato Prawirotaman',
    id: '057',
    category: 'Pasar',
    location: 'Yogyakarta',
    description: 'Tempo Gelato ialah gerai es krim paling diburu di Kota Gudeg. Saat ini Tempo Gelato berada di 3 lokasi yang berbeda, yaitu Taman Siswa, Prawirotaman, dan di Jalan Kaliurang. Di tempat ini terdapat banyak varian es krim mulai dari buah-buahan, rempah-rempah bahkan sorbet.',
    image: 'https://phinemo.com/wp-content/uploads/2017/10/tempo-gelato.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Film',
    id: '058',
    category: 'Taman',
    location: 'Jawa Barat',
    description: 'Taman Film adalah salah satu taman tematik dan ruang terbuka publik di Kota Bandung yang terletak di bawah Jembatan Pasupati, Bandung, Jawa Barat. Taman ini diresmikan oleh Wali kota Bandung, Ridwan Kamil, pada tanggal 14 September 2014.',
    image: 'https://sikidang.com/wp-content/uploads/Spot-Wisata-Taman-Film-Bandung.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Siung',
    id: '059',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Siung adalah suatu objek wisata pantai yang terletak di Kec. Tepus, tepatnya berada di Dusun Duwet, Kelurahan Purwodadi, Kecamatan Tepus, Kabupaten Gunungkidul, provinsi Daerah Istimewa Yogyakarta.',
    image: 'https://piknikwisata.com/wp-content/uploads/2020/02/info-wisata-pantai-siung-jogja.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Ngandong',
    id: '060',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Ngandong merupakan salah satu pantai yang terdapat di daerah Gunung Kidul, Yogyakarta, selain itu lokasinya bersebelahan dengan Pantai Sundak. Pantai Ngandong memiliki pemandangan alam yang indah, hamparan pasir putihnya berpadu dengan air lautnya yang bersih, serta batuan karang yang ikut menghiasi lautan',
    image: 'https://cdn.nativeindonesia.com/foto/pantai-ngandong/keindahan-pantai-ngandong-ketika-surut.jpg'
  ),
  RecommendationDataItem(
    name: 'NuArt Sculpture Park',
    id: '061',
    category: 'Taman',
    location: 'Jawa Barat',
    description: 'NuArt Sculpture Park merupakan destinasi wisata di Bandung yang memadukan antara unsur seni, budaya dan alam. NuArt Sculpture Park mengahadirkan berbagai macam bentuk patung yang unik dengan imajinasi tinggi. Sehingga, pengunjung yang datang akan terbawa alur imajinasi dari karya Nyoman Nuarta tersebut.',
    image: 'https://statik.tempo.co/data/2020/03/29/id_926794/926794_720.jpg'
  ),
  RecommendationDataItem(
    name: 'The Lodge Maribaya',
    id: '062',
    category: 'Taman',
    location: 'Jawa Barat',
    description: 'The Lodge Maribaya adalah salah satu tempat wisata di Lembang yang menawarkan berbagai hal pada pengunjung. Disini kita bisa melakukan berbagai akitivitas seperti camping, trekking mengelilingi area hutan pinus yang indah, acara gathering dan team building, atau bahkan hanya sekedar refreshing menikmati kuliner.',
    image: 'https://anekatempatwisata.com/wp-content/uploads/2021/05/The-Lodge-Maribaya-klook.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Jungwok',
    id: '063',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Jungwok adalah pantai yang terletak di Desa Jepitu, Kecamatan Girisubo, Kabupaten Gunungkidul, Daerah Istimewa Yogyakarta. Pantai Jungwok merupakan salah satu pantai yang memiliki panorama yang indah dengan pasir putih yang khas dari pantai di Gunung Kidul.',
    image: 'https://www.jejakpiknik.com/wp-content/uploads/2017/05/bb-2-630x380.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Bungkul',
    id: '064',
    category: 'Taman',
    location: 'Jawa Timur',
    description: 'Taman Bungkul adalah taman wisata kota yang terletak di pusat kota Surabaya, tepatnya di Jalan Raya Darmo. Taman ini berdiri di area seluas 900 meter persegi. Dilengkapi berbagai fasilitas penunjang, seperti amfiteater berdiameter 33 meter, lajur joging, lahan papan luncur, taman bermain anak-anak, air mancur, dan pujasera. Selain itu, taman ini juga dilengkapi akses internet nirkabel yang terbuka untuk umum sehingga siapapun bisa mengakses internet selama di taman ini. ',
    image: 'https://cdn1-production-images-kly.akamaized.net/E8648rQFx3FLU2TIIHEWUY8KlZw=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/764274/original/055991500_1415678232-4_ragamnusantara_info.jpg'
  ),
  RecommendationDataItem(
    name: 'Kawah Rengganis Cibuni',
    id: '065',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Kawah Rengganis merupakan salah satu destinasi wisata di Bandung Selatan tepatnya berada di daerah kawasan Ciwidey, Kawah Rengganis merupakan kawah yang menyajikan keindahan alam yang masih alami, selain itu terdapat sumber air panas dan lumpur alami dari luapan gas yag berasal dari kawah.',
    image: 'https://dolanyok.com/wp-content/uploads/2019/01/Kawah-Rengganis-zainfoto.jpg'
  ),
  RecommendationDataItem(
    name: 'Gunung Papandayan',
    id: '066',
    category: 'Gunung',
    location: 'Jawa Barat',
    description: 'Gunung Papandayan adalah gunung api strato yang terletak di Kabupaten Garut, Jawa Barat tepatnya di Kecamatan Cisurupan. Gunung dengan ketinggian 2665 meter di atas permukaan laut itu terletak sekitar 70 km sebelah tenggara Kota Bandung. Pada Gunung Papandayan, terdapat beberapa kawah yang terkenal.',
    image: 'https://www.jelajahgarut.com/wp-content/uploads/2020/11/Papandayan-2-1024x683.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Balai Kota Bandung',
    id: '067',
    category: 'Taman',
    location: 'Jawa Barat',
    description: 'Taman Balai Kota Bandung merupakan sebuah taman kota yang terletak di Kota Bandung. Taman ini berada di sebelah selatan Balai Kota Bandung. Saat ini, Taman Balai Kota Bandung terdiri dari dua taman yang menyatu, antara lain Taman Dewi Sartika dan Taman Badak.',
    image: 'https://www.pinhome.id/info-area/wp-content/uploads/2022/03/taman-balai-kota-bandung.jpeg'
  ),
  RecommendationDataItem(
    name: 'Pantai Sundak',
    id: '068',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Sundak merupakan sebuah objek wisata alam berupa Pantai yang berada di daerah Wonosari. Pantai ini terletak sekitar 3 Km dari Pantai Kukup. Meskipun Pantai Sundak tidak terlalu besar, namun pantai ini menyajikan keindahan alam yang alami dan menyenangkan.',
    image: 'https://antarejatour.com/wp-content/uploads/2019/09/Pantai-Sundak-sumber-ig-coco_z.o.e.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Drini',
    id: '069',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Drini adalah salah satu objek wisata yang terletak di Desa Banjarejo, Kecamatan Tanjungsari,Gunungkidul, Yogyakarta. Letaknya di sebelah timur Pantai Baron dan berjarak sekitar 1 km ke arah timur Pantai Sepanjang. Namun jarak sebenarnya yang harus ditempuh untuk sampai ke pantai ini sejauh 60 km atau sekitar 2-3 jam dari Kota Yogyakarta. ',
    image: 'https://cdn.statically.io/img/catperku.com/f=auto%2Cq=70/wp-content/uploads/Pantai-Drini-ini-adalah-salah-satu-pantai-favorit-saya-Di-Gunungkidul-Jogja.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Baron',
    id: '070',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Baron adalah salah satu objek wisata berupa pantai yang terletak di Desa Kemadang, Kecamatan Tanjungsari, Kabupaten Gunungkidul. Lokasi Pantai Baron dapat ditempuh 40 km daeri pusat kota Yogyakarta. Asal mula nama Pantai Baron berasal dari nama seorang bangsawan asal Belanda yang bernama Baron Skeber.',
    image: 'https://www.alodiatour.com/wp-content/uploads/2018/10/lokasi-7.jpg'
  ),
  RecommendationDataItem(
    name: 'Curug Tilu Leuwi Opat',
    id: '071',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Curug Tilu Leuwi Opat merupakan salah satu wisata curug di Lembang. Tempatnya sendiri cukup luas. Disini ada area outbond, camping, dan tentunya wisata air terjun dan sungai.Area depan berupa lembah dengan sungai jernih. Biasanya outbond, camping, dan permainan dilakukan di area ini.',
    image: 'https://cdn.nativeindonesia.com/foto/2016/05/curug-tilu-leuwi-opat-lembang-bandung.jpg'
  ),
  RecommendationDataItem(
    name: 'Bukit Jamur',
    id: '072',
    category: 'Taman',
    location: 'Jawa Barat',
    description: 'Bukit Jamur merupakan fenomena alam yang biasa disebut Mushroom Rock, yaitu fenomena di mana batu terkikis oleh angin yang akan membawa dan membuang material-material kecil dari batu tersebut. Bukit Jamur Gresik merupakan salah satu wisata baru yang banyak dikunjungi oleh wisatawan setiap harinya.',
    image: 'https://cdns.klimg.com/merdeka.com/i/w/news/2019/02/26/1054945/content_images/670x335/20190226121606-1-bukit-jamur-rancabolang-002-tantri-setyorini.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Suropati',
    id: '073',
    category: 'Taman',
    location: 'Jakarta',
    description: 'Taman Suropati (awalnya bernama Burgemeester Bisschopplein) adalah nama sebuah taman di Jakarta. Taman Suropati menjadi sebuah taman yang penting di Jakarta karena terdapat enam monumen Perhimpunan Bangsa-Bangsa Asia Tenggara. Monumen-monumen tersebut dibuat oleh masing-masing seniman dari enam negara pendiri ASEAN.',
    image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/2a/37/82/photo5jpg.jpg?w=1200&h=-1&s=1'
  ),
  RecommendationDataItem(
    name: 'Sky Rink, Mall Taman Anggrek',
    id: '074',
    category: 'Taman',
    location: 'Jakarta',
    description: 'Salah satu arena ice-skating ini merupakan salah satu arena terluas di Asia Tenggara dengan luas mencapai 1.248 m2. Jangan khawatir jika kamu masih pemula, di sini selain disediakan arena bermain ice-skating juga disediakan pula tempat penyewaan sepatu dan peralatan untuk bermain.',
    image: 'https://asset.kompas.com/crops/aovWzNKI1HODMP3orscCNahzles=/0x0:592x296/750x500/data/photo/2022/03/17/6232c36c40c8d.png'
  ),
  RecommendationDataItem(
    name: 'Pantai Krakal',
    id: '075',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Krakal merupakan pantai yang terbentuk dari proses geologi di kawasan perbukitan kars Gunung Kidul. Nama “KERAKAL” dalam bahasa Jawa berarti batu-batuan kecil yang tersebar.',
    image: 'https://2.bp.blogspot.com/-9cyhohk2NAc/VlMaeE-sq3I/AAAAAAAAHRU/83DpLCvJwDI/s1600/pantai-krakal.jpg'
  ),
  RecommendationDataItem(
    name: 'Farm House Susu Lembang',
    id: '076',
    category: 'Taman',
    location: 'Jawa Barat',
    description: 'Farmhouse Lembang Bandung merupakan wahana wisata baru yang terdapat di Lembang, berdiri dan dibuka sejak bulan Desember 2015. Farmhouse Lembang Bandung memang sangat cocok untuk dijadikan wisata keluarga anda, karena selain pemandangannya yang indah, tempat yang strategis juga didukung oleh konsep wisata yang modern.',
    image: 'https://3.bp.blogspot.com/-LTZwc5UTvZU/VshlKtOIW5I/AAAAAAAAA38/m6SyrEmpXsU/s1600/farmhouse%2Blembang%2B1.png'
  ),
  RecommendationDataItem(
    name: 'Pantai Samas',
    id: '077',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Samas merupakan salah satu pantai yang berada di deretan pantai sebelah timur Pantai Parangtritis. Pantai Samas terkenal dengan deburan ombaknya yang menggulung, angin lautnya yang kencang dan sebagai tempat persinggahan penyu-penyu langka seperti penyu sisik dan penyu hijau untuk bertelur.',
    image: 'https://jelajah-api.bantulkab.go.id/files/content/20a389a8be21e06431d7d590b44619f5.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Pulang Sawal',
    id: '078',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Pulang Sawal atau banyak yang menyebutnya dengan Pantai Indrayanti menawarkan panorama yang indah dengan hamparan pasir putihnya yang memukau. Air lautnya juga jernih sehingga tak kalah dengan pantai lain yang ada di Gunung Kidul.',
    image: 'https://indonesiatraveler.id/wp-content/uploads/2020/11/Pantai-Pulang-Sawal-Photo-by-Wikipedia.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Pok Tunggal',
    id: '079',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Pok Tunggal atau biasa disebut "the hidden paradise" (surga yang tersembunyi). Nama Pantai Pok Tunggal diambil karena dipantai tersebut terdapat sebuah pohon duras tua yang berdiri kokoh hingga saat ini.  Uniknya, pantai ini memiliki aliran sungai air tawar dibawah tanah yang menjadi sumber kehidupan bagi masyarakat sekitar pantai.',
    image: 'https://piknikwisata.com/wp-content/uploads/2019/12/pantai-pok-tunggal-e1574332793270.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Depok',
    id: '080',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Depok merupakan salah satu pantai dengan pemandangan eksotis yang ada di Yogyakarta. Pantai di Yogya ini semakin menarik perhatian karena keindahan alamnya yang semakin memesona.',
    image: 'https://jurnalpost.com/wp-content/uploads/2016/05/Pantai-Depok.jpg'
  ),
  RecommendationDataItem(
    name: 'Gunung Tangkuban Perahu',
    id: '081',
    category: 'Gunung',
    location: 'Jawa Barat',
    description: 'Gunung Tangkuban Parahu terbentuk sekitar 90.000 tahun lalu di Kaldera Sunda. Gunung Tangkuban Parahu ini termasuk gunung api aktif yang statusnya diawasi terus oleh Direktorat Vulkanologi Indonesia. Beberapa kawahnya masih menunjukkan tanda tanda keaktifan gunung ini.',
    image: 'https://img.inews.co.id/media/822/files/inews_new/2020/03/12/IMG_12032020_142215__822_x_430_piksel_.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Teluk Asmara',
    id: '082',
    category: 'Pantai',
    location: 'Jawa Timur',
    description: 'Pantai Teluk Asmara, atau yang lebih dikenal sebagai Pantai Teluk Asmoro oleh warga setempat. Pantai ini menyuguhkan hamparan pasir putih dengan bebatuan karang yang terhampar di perairannya yang biru. Pantai ini sendiri dinamakan Teluk Asmara karena ada bebatuan karang di dekatnya yang bentuknya menyerupai hati bila dilihat dari atas.',
    image: 'https://1.bp.blogspot.com/-SmuZ1tA7gFw/XoeG6zxe4eI/AAAAAAAAGEo/0j2e8rhte4ENbnU6wtGq8hy39rs9auYgACLcBGAsYHQ/w1200-h630-p-k-no-nu/PANTAI-TELUK-ASMARA-MALANG-10.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Cattleya',
    id: '083',
    category: 'Taman',
    location: 'Jakarta',
    description: 'Taman Cattleya adalah satu dari sekian banyak Ruang Terbuka Hijau (RTH) yang dimiliki oleh Pemrov DKI Jakarta. Kehadiran Taman Cattleya tentu saja sangat bermanfaat bagi masyarakat Ibu Kota, ditengah situasi penatnya kemacetan, tumpukkan pekerjaan, serta polusi yang menjadi ancaman bagi kota-kota besar.',
    image: 'https://cdn.nativeindonesia.com/foto/taman-cattleya/Taman-Sejuk-Di-Tengah-Kota.jpg'
  ),
  RecommendationDataItem(
    name: 'Curug Cipanas',
    id: '084',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Curug Cipanas Nagrak merupakan air terjun dengan air belerang bersuhu hangat yang bersumber dari Gunung Tangkuban Parahu. Pancaran airnya membentuk air terjun dalam kolam di bawahnya yang kemudian dibendung menjadi pemandian air panas.',
    image: 'https://sanjayatour.com/wp-content/uploads/2020/04/Curug-Cipanas-Nagrak-Kancah-Bandung.jpg'
  ),
  RecommendationDataItem(
    name: 'Candi Sewu',
    id: '085',
    category: 'Candi',
    location: 'Yogyakarta',
    description: 'Candi Sewu atau Manjusrighra adalah candi Buddha yang dibangun pada abad ke-8 Masehi yang berjarak sekitar delapan ratus meter di sebelah utara Candi Prambanan. Aslinya terdapat 249 bangunan candi di kompleks ini yang disusun membentuk mandala wajradhatu, perwujudan alam semesta dalam kosmologi Buddha Mahayana.',
    image: 'https://3.bp.blogspot.com/-K2-UaVW24TU/XDpx2lCpDRI/AAAAAAAABXY/ADIRhx_Vo28mjE6lUif5l8Vd8Nbc719VgCLcBGAs/s1600/wisata%2Bcandi%2Bsewu.jpg'
  ),
  RecommendationDataItem(
    name: 'Tebing Keraton',
    id: '086',
    category: 'Taman',
    location: 'Jawa Barat',
    description: 'Tebing Keraton atau Tebing Karaton merupakan sebuah tebing yang berada di dalam kawasan Taman Hutan Raya Ir. H. Djuanda. Anda bisa menyaksikan hijaunya pemandangan Taman Hutan Raya Ir. H. Djuanda yang menghampar luas sepanjang mata memandang. Pemandangan ini pun akan bertambah indah, jika anda datang sebelum matahari terbit atau kira-kira jam 6 pagi.',
    image: 'https://i0.wp.com/kelloggsnyc.com/wp-content/uploads/2019/09/tebing-keraton.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Keputran',
    id: '087',
    category: 'Taman',
    location: 'Jawa Timur',
    description: 'Berada di Jalan Kayoon No 80 Kaliasin Surabaya. Taman Keputran lokasinya menyatu dengan Kalimas Surabaya. Jika Anda ingin menikmati waktu dengan duduk santai ditepi sungai cocok sekali jika Anda berkunjung ke taman ini di pagi atau sore hari.',
    image: 'https://img.okezone.com/content/2022/02/16/408/2548236/27-taman-di-surabaya-yang-wajib-dikunjungi-IPmDa7wQhO.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Timang',
    id: '088',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Timang memiliki sebuah pulau yang berada di tengah lautan, yang bernama Pulau Timang atau Pulau Watu Panjang. Inilah yang menjadi daya tarik utama dari pantai yang satu ini.',
    image: 'https://eksotisjogja.com/wp-content/uploads/2016/08/pantai-timang-tepus-gunung-kidul.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Ria Kenjeran',
    id: '089',
    category: 'Pantai',
    location: 'Jawa Timur',
    description: 'Kamu dapat menikmati keindahan Pantai Kenjeran Surabaya sambil wisata kuliner, menikmati keindahan sunset dan sunrise, dan juga berlayar menikmati pemandangan menggunakan perahu. Pemandangan yang terdapat di pantai ini memang sangat menyatu dengan kondisi alam sehingga dapat membuat perasaanmu jauh lebih rileks.',
    image: 'https://www.pantainesia.com/wp-content/uploads/2021/01/Pantai-Ria-Kenjeran-Surabaya.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Ngrawe',
    id: '090',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Daya tarik yang dimiliki Pantai Ngrawe sehingga mampu menjaring wisatawan dari berbagai daerah seperti deburan ombak, taman yang menyejukkan, hunting foto.',
    image: 'https://wisatamilenial.com/wp-content/uploads/2020/01/View-Pantai-Ngrawe-Dari-Atas-Arah-Taman-Image-From-@arif_josselalu.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Baruna',
    id: '091',
    category: 'Pantai',
    location: 'Jawa Tengah',
    description: 'Berbeda dengan pantai lain yang hanya terdiri dari hamparan pasir, Pantai Baruna memiliki hamparan padang ilalang luas hingga sejauh mata memandang hanya ada rerumputan dan pepohonana dikejauhan. Namun, Pantai Baruna ini sayang untuk dilewatkan karena pemandangan alamnya yang memukau.',
    image: 'https://infobudayaindonesia.com/wp-content/uploads/2017/01/Keindahan-Pantai-Baruna-Semarang-800x480.jpg'
  ),
  RecommendationDataItem(
    name: 'Curug Luhur',
    id: '092',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Curug Luhur memiliki sajian bermain air yang berbeda dibandingkan dengan curug-curug yang ada di Bogor. Lokasinya didesain sedemikian rupa, sehingga terciptalah sebuah waterboom dengan hiasan air terjun yang cukup deras.',
    image: 'https://wisatakaka.com/wp-content/uploads/2018/12/Harga-Tiket-Masuk-Curug-Luhur-Bogor-Terbaru.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Pintar',
    id: '093',
    category: 'Taman',
    location: 'Yogyakarta',
    description: 'Taman Pintar adalah tempat rekreasi edukasi yang keren dan seru di Jogja. Wahananya ada planetarium, wahana bahari, zona pengolahan sampah, science theater, playground, perpustakaan, kampung kerajinan, gedung oval, dll.',
    image: 'https://petualangmuda.com/wp-content/uploads/2022/01/Taman-Pintar-Yogyakarta-bisniswisata-co-id.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Indonesia Kaya',
    id: '094',
    category: 'Taman',
    location: 'Jawa Tengah',
    description: 'Taman yang dahulu dikenal sebagai Taman KB ini bertempat di Jl. Menteri Soepeno, Semarang ini telah dipugar dan diberikan fasilitas-fasilitas baru yang dapat mendukung aktivitas masyarakat.',
    image: 'https://t-2.tstatic.net/tribunjatengwiki/foto/bank/images/tik.jpg'
  ),
  RecommendationDataItem(
    name: 'Bukit Panguk Kediwung',
    id: '095',
    category: 'Gunung',
    location: 'Yogyakarta',
    description: 'Bukit Panguk Kediwung merupakan salah satu tempat wisata untuk berrburu hunting foto di Jogja. Keberadaan tempat wisata kekinian di jogja ini yang menghadap kearah timur, hal ini sangat cocok untuk tempat berburu sunrise. Waktu yang sangat pas untuk mengunjungi Bukit Panguk Kediwung adalah pada pukul 05.00 pagi.',
    image: 'https://1.bp.blogspot.com/-ggUK194zHg0/XVqVvi-sgqI/AAAAAAAACgk/oPFc0dx_RAkEFnxG6hsBi7RUvPELRIcFQCLcBGAs/s1600/spot-sunrise-di-bukit-panguk-kediwung-bantul-yogyakarta.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Sepanjang',
    id: '096',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Sepanjang memiliki garis pantai yang panjang, pasir berwarna putih yang masih terjaga, dan ombak yang sedang. Anda tinggal memilih, ingin berjemur di atas pasir menikmati terik matahari, membelah ombak dengan papan selancar, ataupun hanya melihat keindahan pantai.',
    image: 'https://tripjogja.co.id/wp-content/uploads/2018/03/pantai-sepanjang3.jpg'
  ),
  RecommendationDataItem(
    name: 'Museum Gunung Merapi',
    id: '097',
    category: 'Museum',
    location: 'Yogyakarta',
    description: 'Di kaki Gunung Merapi, sebuah museum berdiri sebagai perekam jejak gunung api ini. Kenangan dari tiap letusan tersimpan rapi, bahkan suara gemuruhnya pun dapat didengar berkali-kali. Di museum ini, Merapi dikagumi sebagai pemberi pelajaran berarti.',
    image: 'https://bisniswisata.co.id/wp-content/uploads/2019/09/Museum-Gunung-Merapi.jpg'
  ),
  RecommendationDataItem(
    name: 'Candi Ratu Boko',
    id: '098',
    category: 'Candi',
    location: 'Yogyakarta',
    description: 'Berbeda dengan peninggalan purbakala lain dari zaman Jawa Kuno yang umumnya berbentuk bangunan keagamaan, situs Ratu Boko merupakan kompleks profan, lengkap dengan gerbang masuk, pendopo, tempat tinggal, kolam pemandian, hingga pagar pelindung.',
    image: 'https://2.bp.blogspot.com/-duty4YGEWVQ/XDjGRrT7_sI/AAAAAAAABXE/QX9Cx0JEHKYVpIo_RKC4yz3_WGn25jBCQCLcBGAs/s1600/wisata%2Bcandi%2Bratu%2Bboko.jpg'
  ),
  RecommendationDataItem(
    name: 'Bukit Gantole Cililin',
    id: '099',
    category: 'Gunung',
    location: 'Jawa Barat',
    description: 'Bukit Gantole Cililin awalnya di buka untuk tujuan terselenggaranya Porda Jabar 2010 dan Pekan Olahraga Nasional 2016 Cabang olahraga Paralayang. Tidak hanya lokasinya yang pas untuk olahraga, pemandangan yang ada di sekitar bukit juga membuat tempat ini tidak hanya digemari oleh para atlet untuk berlatih tapi juga para wisatawan.',
    image: 'https://sikidang.com/wp-content/uploads/fasilitas-di-Bukit-Gantole-Cililin.jpg'
  ),
  RecommendationDataItem(
    name: 'Air Terjun Kali Pancur',
    id: '100',
    category: 'Air',
    location: 'Jawa Tengah',
    description: 'Ketinggian curug atau Air Terjun Kali Pancur ini kurang lebih sekitar 100 meter. Untuk waktu terbaik agar bisa menikmati keindahan alam penuh pesona berupa air terjun ini, Anda harus datang sekitar jam 8 pagi dan kembali ke Semarang kota sebelum jam 17.00.',
    image: 'https://cdn.nativeindonesia.com/foto/2020/11/Air-Terjun-Kali-Pancur.jpg'
  ),
  RecommendationDataItem(
    name: 'Watu Gunung ',
    id: '101',
    category: 'Air',
    location: 'Jawa Tengah',
    description: 'Watu Gunung merupakan wisata yang menyuguhkan pemandangan alam yang luar biasa indah dan unik. Walaupun wisata Watu Gunung adalah wisata buatan, namun pemandangan alamnya sangat indah dan natural. Disediakan berbagai jenis kolam renang dengan berbagai kedalaman untuk memanjakan pengunjungnya.',
    image: 'https://seringjalan.com/wp-content/uploads/2020/01/Kolam-Renang-di-Watu-Gunung.-Foto-myimage-e1578279428502.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Spathodea',
    id: '102',
    category: 'Taman',
    location: 'Jakarta',
    description: 'Taman Spathodea meski tergolong taman baru namun sudah menjadi favorit bagi warga Jagakarsa dan sekitarnya untuk berkumpul dan berolahraga. Taman Spathodea memiliki banyak jenis tanaman yang ditanam baik pepohonan dan bunga-bunga yang menghiasi area taman.',
    image: 'https://getlost.id/wp-content/uploads/2021/05/spathodea_1344999578.jpg'
  ),
  RecommendationDataItem(
    name: 'Kawah Ijen',
    id: '103',
    category: 'Gunung',
    location: 'Jawa Timur',
    description: 'Kawah Ijen berada dalam wilayah Cagar Alam Taman Wisata Ijen Kabupaten Bondowoso dan Kabupaten Banyuwangi, Jawa Timur. Fenomena eternal blue fire atau api biru abadi berada di dalam kawah Ijen, dan pemandangan alami ini hanya terjadi di dua tempat di dunia yaitu Etiopia (gunung Dallol) dan Ijen.',
    image: 'https://theworldtravelguy.com/wp-content/uploads/2021/07/DJI_0126_1200.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Wediombo',
    id: '104',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Nama Pantai Wediombo sendiri diambil dari bahasa Jawa, yakni wedi yang berarti pasir dan ombo yang berarti luas. Seperti pantai-pantai di Gunungkidul yang terkenal akan keindahannya, Wediombo juga memiliki keindahan yang mempesona dengan tebing-tebing tinggi serta pasirnya yang berwarna putih bersih.',
    image: 'https://www.pantainesia.com/wp-content/uploads/2018/04/Pantai-Wediombo-1248x703.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Sadranan',
    id: '105',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Sadranan merupakan salah satu pantai yang menyajikan keseruan menyaksikan keindahan bawah laut dengan snorkeling. Hamparan pasir putihnya diiringi deburan ombak yang cukup kencang di beberapa waktu, keindahan pantainya dihiasi dengan keberadaan sebuah pulau yang berada di tengah laut.',
    image: 'https://jogjakita.co.id/wp-content/uploads/2021/03/pantai-sadranan.png'
  ),
  RecommendationDataItem(
    name: 'Pantai Maron',
    id: '106',
    category: 'Pantai',
    location: 'Jawa Tengah',
    description: 'Pantai Maron salah satu wisata pantai favorit warga di Semarang. Pantai ini terkenal dengan ombaknya yang bersahabat, pesona hutan mangrove dan tempat menikmati panorama sunset.',
    image: 'https://www.pantainesia.com/wp-content/uploads/2018/05/PANTAI-MARON-1248x703.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Congot',
    id: '107',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Congot merupakan muara dari Sungai Bogowonto. Ini pulalah yang menyebabkan Pantai Congot menjadi spot favorite para pemancing, karena terdapat banyak jenis ikan yang ada mulai dari ikan air tawar, ikan air payau hingga ikan air asin.',
    image: 'https://mytrip123.com/wp-content/uploads/2018/10/alamat-pantai-congot.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Nasional Komodo',
    id: '108',
    category: 'Taman',
    location: 'Nusa Tenggara Timur',
    description: 'Taman nasional untuk melindungi Komodo yang terancam punah dan habitatnya serta keanekaragaman hayati di dalam wilayah tersebut. Taman lautnya dibentuk untuk melindungi biota laut yang sangat beragam yang terdapat disekitar kepulauan tersebut, termasuk yang terkaya di bumi.',
    image: 'https://img.okezone.com/content/2019/10/01/406/2111522/dikembangkan-sebagai-wisata-premium-taman-nasional-komodo-tidak-jadi-ditutup-PqqsyR1PvU.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Sari',
    id: '109',
    category: 'Taman',
    location: 'Yogyakarta',
    description: 'Taman Sari Yogyakarta adalah situs bekas taman atau kebun istana Keraton Ngayogyakarta Hadiningrat. Walaupun secara resmi sebagai kebun kerajaan, namun bebrapa bangunan yang ada mengindikasikan Taman Sari berfungsi sebagai benteng pertahanan terakhir jika istana diserang oleh musuh.',
    image: 'https://www.starjogja.com/assets/2017/02/Tamansari-Jogja-9.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Bunga Celosia',
    id: '110',
    category: 'Taman',
    location: 'Jawa Tengah',
    description: 'Taman Bunga Celosia dibangun dengan konsep kekinian taman bunga, spot foto, wahana permainan dan cafe garden (kuliner). Wisata ini cocok untuk semua usia mulai dari anak, remaja, dewasa, maupun lansia. Terdapat ratusan jenis bunga hias.',
    image: 'https://tamanbungacelosia.gtc9.com/wp-content/uploads/sites/48/2020/08/img-9253333-1200x675.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Budaya Yogyakarta',
    id: '111',
    category: 'Museum',
    location: 'Yogyakarta',
    description: 'Taman Budaya Yogyakarta memiliki kompleks gedung yang berfungsi sebagai tempat pameran, pertunjukan, dan berbagai kegiatan seni lainnya.',
    image: 'https://www.sholtan.com/wp-content/uploads/2018/04/06_taman_budaya.jpeg'
  ),
  RecommendationDataItem(
    name: 'Pantai Watu Kodok',
    id: '112',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Diberi nama Pantai Watu Kodok karena konon katanya terdapat dua tebing berbentuk mirip kodok (katak) di sisi barat dan timurnya. Garis pantainya luas dan panjang dengan pasir putih yang bersih. Ombaknya memang sama seperti pantai-pantai lain, tetapi cocok untuk bermain air.',
    image: 'https://pidjar.com/wp-content/uploads/2019/09/Pantai-Watukodok.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Ngrenehan',
    id: '113',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Ngrenehan berupa teluk dan dikelilingi perbukitan kapur dengan panorama yang estetik. Selain pemandangan nan elok, pantai ini juga menawarkan surga belanja ikan segar. Sehingga pantai ini luas dikenal dengan nama pantai nelayan.',
    image: 'https://2.bp.blogspot.com/-azlDIGMWhu0/WjNSRs-IWDI/AAAAAAAAF1Q/90aY8jNur0EYylpFRwemORi7pJbW6QV1ACLcBGAs/s1600/Pantai-Ngrenehan.jpg'
  ),
  RecommendationDataItem(
    name: 'Jatim Park 2',
    id: '114',
    category: 'Taman',
    location: 'Jawa Timur',
    description: 'Jatim Park 2 berada di dataran tinggi, tepatnya di Kota Batu, Jawa Timur. Selain memiliki hawa yang sejuk Jatim Park 2 ini memiliki banyak sekali destinasi wisata yang harus kamu datangi. Daya tarik Jatim Park 2 contohnya adalah Batu Secret Zoo, Museum Satwa, Eco Green Park, Sweet Memories Selfie.',
    image: 'https://anekatempatwisata.com/wp-content/uploads/2020/05/1-Jatim-Park-2-Wisata-Ramah-Anak-di-Malang-yang-Punya-Beragam-Wahana-1200x600.jpg'
  ),
  RecommendationDataItem(
    name: 'Curug Malela',
    id: '115',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Tempat ini menyajikan pemandangan air terjun yang luar biasa, dan dilengkapi oleh nuansa asri tanaman hijau dan pohon rindang di sekitarnya. Air terjun Malela tidak hanya terdiri dari satu pancuran air saja, namun terdiri dari beberapa pancuran air yang berdekatan.',
    image: 'https://hargaticket.com/wp-content/uploads/2021/01/tiket-masuk-curug-malela.jpg'
  ),
  RecommendationDataItem(
    name: 'Curug Bugbrug',
    id: '116',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Curug Bugbrug merupakan destinasi wisata berupa air terjun yang berada di Cisarua, Bandung Barat. Curug ini masih satu aliran sungai dengan Curug Tilu dan Curug Cimahi. Namun, lokasinya lebih tersembunyi di dalam area lembah. Pesona alami yang tersaji mampu menyegarkan mata dan pikiran di akhir pekan.',
    image: 'http://backpackerjakarta.com/wp-content/uploads/2016/10/62980964-0B7A-4C58-8980-FCF37E521E09.jpg'
  ),
  RecommendationDataItem(
    name: 'Curug Batu Templek',
    id: '117',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Curug Batu Templek tak kalah menarik karena pemandangan di sekitarnya dipenuhi dengan terbing yang berbatu cadas. Sejarah Curug Batu Templek sangat sederhana, hanya karena di tempat ini dahulunya terdapat penambangan batu yang terdapat sebuah aliran air terjun dan diketahui aliran tersebut berasal dari sungai yang ada di atas tebing sehingga dinamakan Curug Batu Templek.',
    image: 'https://www.tempatwisata.pro/users_media/3091/cbt.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Greweng',
    id: '118',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Greweng, lokasinya tersembunyi dibalik hutan dan ladang. Sehingga untuk menuju ke sana kamu harus melakukan trekking terlebih dahulu. Meski begitu, pantai ini tak pernah sepi pengunjung. Hampir setiap hari ada pengunjung yang datang untuk bermain air atau camping.',
    image: 'https://cdn.nativeindonesia.com/foto/pantai-greweng/Pantai-Greweng.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Pink',
    id: '119',
    category: 'Pantai',
    location: 'Nusa Tenggara Timur',
    description: 'Pink beach atau pantai pink yang berada di Labuan Bajo, Nusa Tenggara Timur, merupakan salah satu surga wisata di Indonesia. Dengan pasir yang berwarna pink dan birunya air laut, banyak wisatawan yang datang dari domestik maupun mancanegara. Warna pink pada pasirnya sendiri berasal dari butir-butir asli warna putih pasir, bercampur dengan terumbu karang berwarna merah yang sudah mati.',
    image: 'https://amormagazine.co.uk/wp-content/uploads/2019/10/Pink-Beach-Of-Komodo-Indonesia.jpg'
  ),
  RecommendationDataItem(
    name: 'Curug Anom',
    id: '120',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Curug ini menawarkan Anda sebuah pemandangan yang masih sangat asri dan menenangkan. Anda yang menyukai wisata alam, datang saja ke Curug Cisarua ini dan buktikan sendiri keindahan alamnya.',
    image: 'https://www.bandoeng.co.id/wp-content/uploads/2020/12/Curug-Cimahi.jpg'
  ),
  RecommendationDataItem(
    name: 'Curug Cilengkrang',
    id: '121',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Selain air terjun yang indah, objek wisata ini juga menawarkan sejumlah eksotisme alam yang mampu membuat Anda terpukau melihatnya. Pepohonan yang rindang, udara sejuk, suara merdu burung, akan membuat Anda betah berlama-lama menikmati keindahan pemandangannya.',
    image: 'https://wisatalova.com/wp-content/uploads/2016/10/Curug-Cilengkrang-Bandung-5.jpg'
  ),
  RecommendationDataItem(
    name: 'Candi Ijo',
    id: '122',
    category: 'Candi',
    location: 'Yogyakarta',
    description: 'Candi Ijo dibangun sekitar abad ke-9, di sebuah bukit yang dikenal dengan Bukit Hijau atau Gumuk Ijo yang ketinggiannya sekitar 410 m di atas permukaan laut. Karena ketinggiannya, maka bukan saja bangunan candi yang bisa dinikmati tetapi juga pemandangan alam di bawahnya berupa teras-teras seperti di daerah pertanian dengan kemiringan yang curam.',
    image: 'https://sikidang.com/wp-content/uploads/candi-ijo.jpg'
  ),
  RecommendationDataItem(
    name: 'Candi Gedong Songo',
    id: '123',
    category: 'Candi',
    location: 'Jawa Tengah',
    description: 'Candi Gedong Songo adalah nama sebuah kompleks bangunan candi peninggalan budaya Hindu yang terletak di desa Candi, tepatnya di lereng Gunung Ungaran. Lokasi sembilan candi yang tersebar di lereng Gunung Ungaran ini memiliki pemandangan alam yang indah. Selain itu, objek wisata ini juga dilengkapi dengan pemandian air panas dari mata air yang mengandung belerang, area perkemahan, dan wisata berkuda.',
    image: 'https://asset.kompas.com/crops/Ve_tsJMbUilZ8tY7L8nyIcCjtD8=/23x0:1003x653/750x500/data/photo/2021/12/26/61c8581af190b.png'
  ),
  RecommendationDataItem(
    name: 'Bukit Moko',
    id: '124',
    category: 'Gunung',
    location: 'Jawa Barat',
    description: 'Bandung sebagai destinasi wisata tak pernah ada habisnya. Didukung dengan lanskap yang cantik, kawasan Bandung mampu menarik perhatian wisatawan. Baik dari segi alam, budaya, kuliner, dan seni kreatif secara bersamaan.',
    image: 'https://sweetrip.id/wp-content/uploads/2021/05/BUKIT-MOKOOO.jpg'
  ),
  RecommendationDataItem(
    name: 'Air Terjun Semirang',
    id: '125',
    category: 'Air',
    location: 'Jawa Tengah',
    description: 'Air Terjun Semirang atau juga dikenal dengan nama Curug Semirang merupakan sebuah tempat wisata ungaran yang cukup populer. Dengan ketinggian air terjun yang mencapai 45 meter, air terjun ini memberikan keindahan dan kesejukan sebuah air terjun. Lahan wisata alam ini memiliki luas kurang-lebih 10 hektar. Suasana lingkungan sangat segar. Terdapat banyak sekali jenis pepohonan rindang di sekitar air terjun ini.',
    image: 'https://1.bp.blogspot.com/-GYgDJWpc0t8/Xuy26qTilPI/AAAAAAAAIj4/9Z1UOa7MJpgCtIrY63E47k5cFIpOGsR-wCLcBGAsYHQ/s1600/lokasi-dan-tiket-masuk-wana-wisata-curug-semirang-semarang-2020.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Menteng',
    id: '126',
    category: 'Taman',
    location: 'Jakarta',
    description: 'Taman Menteng adalah sebuah taman yang berlokasi di kawasan Menteng, Jakarta Pusat. Taman ini dulunya ditempati oleh Stadion Menteng. Taman ini berdiri di atas lahan seluas 2,9 hektar, dan memiliki koleksi 30 spesies tanaman yang berbeda. Taman Menteng juga memiliki beragam fasilitas pendukung seperti taman bermain untuk anak-anak serta lapangan futsal dan basket.',
    image: 'https://upload.wikimedia.org/wikipedia/commons/c/cd/Taman_Menteng.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Flora',
    id: '127',
    category: 'Taman',
    location: 'Jawa Timur',
    description: 'Taman Flora Bratang Surabaya ini mempunyai lahan seluas 2,4 hektar. Di dalamnya terdapat ratusan bunga dan puluhan pohon-pohon besar yang siap memberikan oksigen murni bagi para pengunjungnya. Anda dapat berkumpul dengan keluarga sekaligus mengajak buah hati untuk berekreasi dan belajar tentang berbagai flora ataupun kehidupannya.',
    image: 'https://getlost.id/wp-content/uploads/2021/05/Yamin-Nathaniel.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Ngobaran',
    id: '128',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Ngobaran merupakan pantai yang cukup eksotik. Kalau air surut, anda bisa melihat hamparan alga (rumput laut) baik yang berwarna hijau maupun coklat. Jika dilihat dari atas, hamparan alga yang tumbuh di sela-sela karang tampak seperti sawah di wilayah padat penduduk. Puluhan jenis binatang laut juga terdapat di sela-sela karang, mulai dari landak laut, bintang laut, hingga golongan kerang-kerangan.',
    image: 'https://mytrip123.com/wp-content/uploads/2019/05/pantai-ngobaran.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Kukup',
    id: '129',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai ini memiliki air yang jernih dan banyak terdapat ikan-ikan kecil. Tak heran banyak anak-anak yang memilih untuk berenang sambil mencari ikan-ikan kecil untuk dibawa pulang. Di sebelah kiri pantai, terdapat sebuah jembatan yang menghubungkan bukit karang di tepi pantai dengan bukit karang di seberangnya.',
    image: 'https://mmc.tirto.id/image/2020/06/20/pantai-kukup-antarafoto--2_ratio-16x9.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Jogan',
    id: '130',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Air terjun di bibir laut adalah sesuatu yang langka di Indonesia, bahkan dunia. Tersembunyi di balik perbukitan karst, Gunungkidul di selatan Yogyakarta ternyata menyimpan air terjun yang jatuh langsung ke bibir laut. Sebuah pesona yang sulit ditolak.',
    image: 'https://cdn.nativeindonesia.com/foto/pantai-jogan/Panorama-Di-Pantai-Jogan.jpg'
  ),
  RecommendationDataItem(
    name: 'Bukit Wisata Pulepayung',
    id: '131',
    category: 'Taman',
    location: 'Yogyakarta',
    description: 'Tempat wisata ini sempat diperbincangkan di Instagram lantaran menawarkan wisata malam yang menarik, juga beragam aktivitas asyik yang patut dicoba.',
    image: 'https://img.okezone.com/content/2020/11/16/408/2310338/4-objek-wisata-alam-di-kulon-progo-canting-mas-hingga-pulepayung-7ztsNmIDNO.jpg'
  ),
  RecommendationDataItem(
    name: 'Air Terjun Sri Gethuk',
    id: '132',
    category: 'Air',
    location: 'Yogyakarta',
    description: 'Pesona keindahan kawasan Air Terjun Sri Gethuk layaknya Verdon Gorge yang ada di Perancis. Memang tidak sepanjang, dan sedalam Verdon Gorge sungainya. Namun view sepanjang Sungai Oyo Gunung Kidul sungguh mengagumkan.',
    image: 'https://cdn.nativeindonesia.com/foto/air-terjun-sri-gethuk/Cantiknya-Air-Terjun-Sri-Gethuk.jpg'
  ),
  RecommendationDataItem(
    name: 'Air Terjun Kedung Pedut',
    id: '133',
    category: 'Air',
    location: 'Yogyakarta',
    description: 'Daya tarik utama dari air terjun yang letaknya cukup tersembunyi, antara lain karena warnanya yang unik, yakni biru toska dan putih jernih; serta keberadaannya yang dibuat laksana water park tradisional.',
    image: 'https://garasijogja.com/wp-content/uploads/2017/03/@imanuel_yuda.jpg'
  ),
  RecommendationDataItem(
    name: 'Merapi Park',
    id: '134',
    category: 'Taman',
    location: 'Yogyakarta',
    description: 'Merapi Park ialah sebuah taman yang indah dengan dilengkapi banyak banget spot foto yang ajib. Merapi Park sering disebut “The World Landmarks”, karena terdapat beberapa miniatur landmark dari kota-kota besar di dunia.',
    image: 'https://1.bp.blogspot.com/-6ok5axyZMUQ/XEoIg7O5NhI/AAAAAAAADmI/7u20QjXf8VcfBD3ehgNcr9NGyIAa4YtCQCLcBGAs/s640/landmark02-o.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Hutan Tebet',
    id: '135',
    category: 'Taman',
    location: 'Jakarta',
    description: 'Dibalik gedung-gedung yang menjulang tinggi, ternyata Jakarta masih memiliki beberapa ruang terbuka hijau yang bisa dikunjungi. Taman Hutan Tebet adalah salah satu contohnya, yang tak hanya berperan sebagai paru-paru kota tetapi juga menjadi tempat favorit berolahraga. Banyak sekali fasilitas olahraga yang disediakan, mulai jogging track, spot fitnes, hingga lapangan luas.',
    image: 'https://cdn-2.tstatic.net/tribunnews/foto/bank/images/tebet-eco-park1.jpg'
  ),
  RecommendationDataItem(
    name: 'Curug Aseupan',
    id: '136',
    category: 'Air',
    location: 'Jawa Barat',
    description: 'Curug Aseupan Jawa Barat masih sangat asri, lokasinya yang terletak di area hutan rakyat menjadikan nuansa asri selalu terjaga. Salah satu air terjun di Bandung yang tidaklah terlalu tinggi, walaupun begitu debit air di curug ini cukup deras. Uniknya warna air yang biru ke hijau – hijauan menambah pesona air terjun ini.',
    image: 'https://kataomed.com/wp-content/uploads/2021/01/Curug-Aseupan-e1612012969412.jpg'
  ),
  RecommendationDataItem(
    name: 'Saloka Theme Park',
    id: '137',
    category: 'Taman',
    location: 'Jawa Tengah',
    description: 'Saloka atau lebih dikenal dengan nama Saloka Theme Park merupakan sebuah taman rekreasi tematis yang memiliki konsep kearifan lokal. Hal ini setidaknya ditunjukkan oleh berbagai wahana yang mengusung legenda Jawa, terutama legenda di Jawa Tengah yang digunakan pada 25 wahana berbeda yang tersebar di 5 zona.',
    image: 'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit621414gsm/events/2021/03/15/faad2b06-a01d-4dd0-bc0f-acc26965b2b9-1615786965437-8f193faa572586f48a80beefafac7b77.jpg'
  ),
  RecommendationDataItem(
    name: 'Puncak Gunung Api Purba Nglanggeran',
    id: '138',
    category: 'Gunung',
    location: 'Yogyakarta',
    description: 'Puncak Gunung Api Purba Nglanggeran berada diketinggian 700 mdpl, menjadi salah satu spot moment sunrise yang sering diburu para pecinta mentari pagi. membutuhkan waktu sekitar 50-60 Menit untuk bisa sampai kelokasi ini. Gunung Gedhe sebutan puncak barat Gunung Api Purba ini memiliki kondisi yang agak lapang namun tidak bisa digunakan untuk camping/mendirikan tenda.',
    image: 'https://asset.kompas.com/crops/LQ2Mj770XSVajKN0p1bpSsuK3BY=/0x0:1800x1200/750x500/data/photo/2020/10/16/5f8982630b991.jpg'
  ),
  RecommendationDataItem(
    name: 'Taman Bunga Nusantara',
    id: '139',
    category: 'Pantai',
    location: 'Jawa Barat',
    description: 'Taman Bunga Nusantara adalah sebuah taman bunga seluas 35 hektare yang terletak dekat Gunung Gede Pangrango dan Kebun Teh Bogor. Di taman ini disimpan berbagai tipe bunga dari seluruh dunia yang tumbuh di tempat ini, dalam hal ini terutama budi daya anggrek. Diperkirakan ada sekitar 2000 jenis anggrek yang dirawat di tempat ini.',
    image: 'https://pandawa87cianjur.com/wp-content/uploads/2020/05/taman1.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Nguluran',
    id: '140',
    category: 'Pantai',
    location: 'Yogyakarta',
    description: 'Pantai Nguluran merupakan salah satu cara untuk menyaksikan keindahan pantai dengan cara yang lain, lokasinya berada di Kabupaten Gunung Kidul tepatnya di Desa Girikarto, Kecamatan Panggang. Yang menjadi favorit wisatawan ialah spot teras kaca, yakni berupa tempat untuk berfoto dengan lantai yang terbuat dari kaca dan menghadap langsung ke arah lautan.',
    image: 'https://www.pesisir.net/wp-content/uploads/2021/09/Daya-Tarik-dari-Pantai-Nguluran.jpg'
  ),
  RecommendationDataItem(
    name: 'Waterbom PIK (Pantai Indah Kapuk)',
    id: '141',
    category: 'Air',
    location: 'Jakarta',
    description: 'Tempat wisata ini menjadi tempat rekreasi keluarga bertema waterpark atau taman air. Waterbom PIK menawarkan suasana Urban Cool dengan tema taman tropis yang identik dengan pohon yang rimbun.',
    image: 'https://cektiket.id/wp-content/uploads/2019/03/Waterboom-PIK-Jakarta.png'
  ),
  RecommendationDataItem(
    name: 'Air Terjun Madakaripura',
    id: '142',
    category: 'Air',
    location: 'Jawa Timur',
    description: 'Air terjun Madakaripura berada di ujung lembah sempit dan berbentuk ceruk yang dikelilingi tebing-tebing curam yang meneteskan air pada seluruh bidang tebingnya seperti layaknya sedang hujan, 3 di antaranya bahkan mengucur deras membentuk air terjun lagi.',
    image: 'https://setapaklangkah.com/wp-content/uploads/2020/10/Wisata-Air-Terjun-Madakaripura.jpg'
  ),
  RecommendationDataItem(
    name: 'Pantai Klingking',
    id: '143',
    category: 'Pantai',
    location: 'Bali',
    description: 'Bukan hanya menyuguhkan kawasan pantai berpasir putih yang menggoda, tapi juga samudera luas yang bisa dilihat dari area atas tebing. Warna laut yang biru mempesona, ombak besar menderu-deru kejauhan di pantai berbentuk jari kelingking (yang menjadi asal mula pengambilan namanya), hal tersebut akan menambah eksotisme di tempat ini.',
    image: 'https://cdns.klimg.com/merdeka.com/i/w/news/2021/03/02/1280264/content_images/670x335/20210302130841-1-pantai-kelingking-nusa-penida-001-tyas-titi-kinapti.jpg'
  ),
];