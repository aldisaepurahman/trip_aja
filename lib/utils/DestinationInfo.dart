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
];