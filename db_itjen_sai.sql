/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : db_itjen_sai

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2017-12-05 07:46:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for master_artikel
-- ----------------------------
DROP TABLE IF EXISTS `master_artikel`;
CREATE TABLE `master_artikel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_date` datetime NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_artikel
-- ----------------------------
INSERT INTO `master_artikel` VALUES ('25', 'Manajemen Risiko Buat Apa?', '<p style=\"text-align: justify;\">Dimuat di majalah Warta ASEI edisi tahun 2012.<br /><br />Bicara tentang manajemen risiko, kasus pailit PT. Telkomsel adalah contoh paling hangat yang sangat menarik. Bagaimana bisa kasus hutang hanya senilai Rp5,3 miliar membuat Telkomsel dinyatakan pailit oleh Pengadilan Negeri Jakarta Pusat Lihat saja, nilai hutang tersebut sangat kecil dibandingkan dengan laba Telkomsel di tahun 2011 sebesar Rp12,82 triliun. Apalagi dibandingkan dengan asetnya Rp58,72 triliun di tahun lalu.<br /><br />Artikel ini tidak membahas kasus hukum, tetapi bagaimana memandang krusialnya mengelola risiko. Sekecil apapun risiko, berpotensi berdampak buruk bagi organisasi. Pengabaian manajemen risiko dapat melahirkan dampak yang jauh lebih besar dibandingkan dengan upaya kecil yang seharusnya dilakukan. Itu bisa kita jumpai, misalnya, dari kasus kecelakaan mudik tahun ini yang merenggut lebih dari 900 jiwa. Peran manajemen risiko makin terasa ketika menghadapi situasi krisis. Negara-negara dan perusahaan-perusahaan di zona Eropa saat ini sedang menguji keampuhan manajemen risikonya menghadapi krisis.<br /><br />Namun mengaplikasikan manajemen risiko tak harus menunggu krisis. Industri asuransi umum di Indonesia juga semestinya menerapkan manajemen risiko terintegrasi agar bisa memenangkan persaingan sengit. &nbsp;Aplikasi manajemen risiko tidak semata untuk organisasi atau perusahaan. Bisa dipraktekkan untuk pribadi atau yang dikenal dengan personal risk management.<br /><br />Definisi dan tujuan&nbsp;<br /><br />Di banyak literatur, ada variasi definisi manajemen risiko. Salah satunya, menurut Kaye (2011), manajemen risiko diartikan sebagai identifikasi, analisis dan kontrol risiko yang dapat mengancam operasi, aset dan tanggung jawab organisasi. Tujuan manajemen risiko adalah menambah nilai yang berkelanjutan secara maksimum pada semua aktifitas organisasi (AIRMIC, ALARM, IRM Standard, 2002). Juga untuk menjalankan organisasi dengan lebih efektif dalam lingkungan yang dipenuhi dengan risiko-risiko (PricewaterhouseCoopers, 2004). Artinya, manajemen risiko hadir agar perusahaan mampu mencapai tujuan dan sasaran-sasarannya di tengah banyaknya risiko. Bagaimana membuat risiko tidak menggagalkan capaian-capaian perusahaan.<br /><br />Awalnya, manajemen risiko adalah bagian tidak terpisahkan dari pengendalian internal. Dalam perkembangannya, peran manajemen risiko lebih besar daripada pengendalian internal. Praktek manajemen risiko dalam perusahaan akan sangat membantu manajemen di dalam mengeksekusi kebijakan dan strategi. Manajemen risiko diintegrasikan ke dalam proses organisasi dan menjadi praktek yang melekat. Risiko-risiko yang berpotensi menggagalkan capaian dan mengurangi nilai perusahaan dikendalikan dengan semestinya. Inilah yang saat ini mulai dipraktekkan di ASEI. Di dalam RKAP 2013, identifikasi dan kontrol risiko sudah mulai dikenalkan.<br /><br />Perlu diingat bahwa risiko tak selamanya berciri negatif. Cara pandang tradisional menganggap risiko sebagai sumber masalah. Ini berbeda dengan perspektif manajemen risiko terintegrasi yang melihat risiko bisa menjadi sumber keunggulan (Djohanputro, 2004). Risiko tak harus dihindari. Mengapa? Karena di balik risiko, tersimpan peluang yang apabila dapat dikelola dengan optimal akan menjadi keunggulan bersaing.<br />Standar Acuan&nbsp;<br /><br />Seperti halnya definisi yang beragam, manajemen risiko juga memiliki beberapa standar yang dapat dipilih oleh penggunanya. Beberapa yang sangat populer adalah The Australia/New Zealand Standard 4360, The Committee of Sponsoring Organisations of the Treadway Commission (COSO) dan ISO 31000. ASEI sudah memiliki pedoman manajemen risiko. Standar yang diacu adalah versi ISO 31000 yang dikeluarkan oleh International Organization for Standarization. Sekedar diketahui bahwa ISO 31000 ini berbeda dengan ISO 9001:2008 tentang quality management system. ISO 31000 tidak digunakan untuk sertifikasi. Sehingga tak ada audit, baik audit internal maupun eksternal.<br />Munawar Kasan</p>', '2017-09-08 12:39:58', 'admin', '2017-11-14 19:17:01', 'admin');
INSERT INTO `master_artikel` VALUES ('26', 'Pengawasan', '<p style=\"text-align: justify;\">Dalam Peraturan Pemerintah Nomor 60 Tahun 2008 tentang Sistem Pengendalian Intern Pemerintah (SPIP) dijelaskan bahwa pengawasan intern adalah seluruh proses kegiatan audit, reviu, pemantauan, evaluasi, dan kegiatan pengawasan lainnya berupa asistensi, sosialisasi dan konsultasi terhadap penyelenggaraan tugas dan fungsi organisasi dalam rangka memberikan keyakinan yang memadai bahwa kegiatan telah dilaksanakan sesuai dengan tolok ukur yang telah ditetapkan secara &nbsp; &nbsp;efektif dan efisien untuk kepentingan pimpinan dalam mewujudkan kepemerintahan yang baik.<br /><br />A. &nbsp;PERAN APARATUR PENGAWASAN INTERN PEMERINTAH<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; Aparat Pengawasan Intern Pemerintah (APIP) adalah instansi pemerintah yang dibentuk dengan tugas melaksanakan pengawasan intern di lingkungan pemerintah pusat dan/atau pemerintah daerah, terdiri atas Badan Pengawasn Keungan dan Pembangunan (BPKP), Inspektorat Jenderal Kementerian, Inspektorat/Unit pengawasan intern pada Kementerian Negara, Inspektorat Utama/Inspektorat Lembaga Pemerintah Non Kementerian, inspektorat/unit pengawasan intern pada kesekretariatan lembaga tinggi negara dan lembaga negara, inspektorat provinsi/kabupaten/kota, dan unit pengawasan intern pada badan hukum pemerintah lainnya sesuai dengan peraturan perundang-undangan.<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; Bagi manajemen, APIP adalah kebutuhan. Semakin kompleksnya tugas dan fungsi yang diemban oleh instansi pemerintah, sulit bagi pimpinan umit (manajemen) untuk melaksanakan pengawasan secara langsung terhadap seluruh aktivitas organisasi, sehingga diperlukan unit pengawasan intern yang diperankan oleh APIP.<br /><br />Peran dan kontribusi APIP terhadap manajemen tersurat dalam Peraturan Pemerintah (PP) Nomor 60 Tahun 2008, di mana unsur-unsur SPIP meliputi :<br /><br />1. &nbsp;Lingkungan Pengendalian<br /><br />Agar tujuan organisasi tercapai, para pimpinan instansi harus menciptakan dan memelihara lingkungan dalam organisasi yang menetapkan perilaku positip dan dukungan terhadap pengendalian manajemen dan kesadaran para pimpinan instansi. Lingkungan pengendalian menentukan mutu pengendalian intern, karena merupakan cerminan sikap semua pihak yang terkait dengan organisasi terhadap pentingnya pengendalian<br /><br />2. &nbsp;Penilaian Risiko<br /><br />Untuk memberikan jaminan memadai akan tercapainya tujuan organisasi, para pimpinan instansi harus melaksanakan penilaian resiko manajemen. Penilaian resiko ini merupakan upaya untuk meminimalkan kekeliruan dan ketidakberesan dalam pelaksanaan kegiatan dan fungsi organisasi. Ketika para pimpinan instansi dapat menilai resiko-resiko yang dihadapi, maka perancangan dan implementasi prosedur pengendalian dan pengelolaan risiko dapat dilaksanakan dengan baik.<br /><br />3. &nbsp;Kegiatan Pengendalian<br /><br />Aktivitas pengendalian adalah kebijakan, prosedur, teknik, dan mekanisme yang memberi arah pada para pimpinan dan membantu mereka meyakini bahwa tindakan-tindakan yang perlu telah dilakukan untuk mengantisipasi risiko.<br /><br />4. &nbsp;Informasi dan Komunikasi<br /><br />Pengelolaan instansi akan lebih baik, jika pihak-pihak yang terkait dengan organisasi dapat berkomunikasi dan saling berbagi informasi melalui sistem komunikasi dan informasi akuntansi yang memadai. Para pimpinan instansi dan pihak-pihak ekstern juga dapat memperoleh informasi yang relevan dan handal bagi kebutuhan pengambilan keputusan, sehingga instansi dapat dikelola dengan baik.<br /><br />5. &nbsp;Pemantauan Pengendalian Intern<br /><br />Sistem pengendalian intern memiliki sifat dinamis, karena itu efektivitas dan efisiensinya harus dipantau. APIP bertanggung jawab atas pelaksanaan pemantauan ini.<br /><br />&nbsp; &nbsp; &nbsp; &nbsp;Untuk mewujudkan lingkungan pengendalian yang positip dan kondusif, salah satu caranya adalah dengan mewujudkan peran aparat pengawasan intern pemerintah yang efektif. Dalam PP 60 Tahun 2008 pasal 11 disebutkan bahwa peran APIP yang efektif sekurang-kurangnya adalah :<br /><br />Memberikan keyakinan yang memadai atas ketaatan, kehematan, efisiensi, dan efektivitas pencapaian tujuan penyelenggaraan tugas dan fungsi instansi pemerintah;<br />Memberikan peringatan dini dan meningkatkan efektivitas manajemen risiko dalam penyelenggaraan tugas dan fungsi instansi pemerintah; dan<br />Memelihara dan meningkatkan kualitas tata kelola penyelenggaraan tugas dan fungsi instansi pemerintah.<br />&nbsp; &nbsp; &nbsp; &nbsp;Menteri/pimpinan lembaga, gubernur, dan bupati/walikota bertanggungjawab atas efektivitas penyelenggaraan SPIP di lingkungan masing-masing. Untuk memperkuat dan menunjang efektivitas tersebut dilakukan :<br /><br />Pengawasan intern atas penyelenggaraan tugas dan fungsi instansi pemerintah termasuk akuntabilitas keuangan negara.<br />Pembinaan penyelenggaraan SPIP.<br />Pengawasan intern di atas dilaksanakan oleh aparatur pengawasan intern pemerintah dengan cara :<br /><br />Audit adalah proses identifikasi masalah, analisis, dan evaluasi yang dilakukan secra independen, objektif, dan professional berdasarkan standar audit, untuk menilai kebenaran, kecermatan, kredibilitas, efetivitas, efisiensi, dan keandalan informasi pelaksanaan tugas dan fungsi instansi pemerintah.<br />&nbsp; &nbsp; &nbsp; a. &nbsp;Audit keuangan, terdiri dari :<br /><br />Audit keuangan merupakan audit atas laporan keuangan untuk memberikan opini secara independen. Dalam penugasannya auditor wajib menggunakan Standar Pemeriksaan Keuangan Negara (SPKN) dan /atau Standar Profesional Akuntan Publik (SPAP) sebagaimana diatur dalam ketentuan peraturan perundang-undangan.<br />Audit terhadap aspek keuangan tertentu (audit atas laporan keuangan bukan untuk memberikan opini), adalah audit atas aspek tertentu pengelolaan keuangan yang diselenggarakan oleh instansi pemerintah atas dana yang dibiayai oleh APBN/APBD dalam rangka memberikan keyakinan yang memadai bahwa pengelolaan keuangan telah dilaksanakan sesuai dengan tolok ukur yang telah ditetapkan sebagaimana ketentuan yang berlaku. Contohnya antara lain:<br />Audit atas bagian dari laporan keuangan/informasi keuangan;<br />Audit atas laporan pendapatan dan biaya;<br />Audit atas laporan penerimaan dan pengeluaran kas;<br />Audit atas laporan aktiva tetap, permintaan anggaran;<br />Audit pengelolaan keuangan dana dekonsentrasi;<br />Audit keuangan lainnya.<br />&nbsp; &nbsp; &nbsp; b. Audit kinerja adalah audit atas pelaksanaan tugas dan fungsi instansi pemerintah yang terdiri atas audit aspek &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ekonomi, efisiensi, dan efektivitas, serta ketaatan pada peraturan. Contoh :&nbsp;<br /><br />Audit dengan sasaran ekonomis, efisiensi, dan efektivitas, serta ketaatan pada peraturan;<br />Post audit dengan sasaran ekonomis, efisensi, dan efektivitas, serta ketaatan pada peraturan;<br />Audit kinerja atas penyusunan dan pelaksanaan anggaran;<br />Audit kinerja atas penerimaan, penyaluran, dan penggunaan dana;<br />Audit kinerja atas pengelolaan asset dan kewajiban;<br />Audit operasional;<br />Audit akuntabilitas.<br />&nbsp; &nbsp; &nbsp; c. &nbsp;Audit dengan tujuan tertentu merupakan audit selain audit keuangan dan selain audit terhadap aspek keuangan &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;tertentu, contohnya antara lain:<br /><br />Audit ketaatan (compliance audit);<br />Audit investagatif;<br />Audit atas tindak kecurangan/fraud audit;<br />Audit atas kegiatan melawan hukum/illegal act audit;<br />Mengumpulkan data dan/atau informasi intelijen;<br />Fraud audit/illegal act audit/audit atas tindak kecurangan/KKN/audit forensik audit investigatif (sebagai kelanjutan sebelumnya);<br />Memproses penyelesaian TP/TGR;<br />Melakukan audit atas berbagai indikasi pemborosan;<br />Audit khusus terhadap adanya pengaduan masyarakat terkait dugaan penyimpangan pemeriksaan terhadap kasus kehilangan asset;<br />Membantu aparat penegak hukum (APH) dengan memberikan keterangan ahli/pendampingan pemberian keterangan ahli dalam peradilan kasus hasil pengawasan;<br />Membantu APH melakukan penghitungan kerugian keuangan Negara (audit PPKN);<br />Pemeriksaan dan pengecekan atas pengaduan kasus dugaan penyimpangan;<br />Audit atas pengelolaan asset;<br />Memberikan kesaksian dalam peradilan kasus hasil pengawasan;<br />Audit atas kepegawaian;<br />Mengkaji sistem pengendalian manajemen objek pengawasan;<br />Pengendalian intern terhadap ketaatan hukum dan peraturan atas proses tender, akuntansi, hibah, bantuan, dan kontrak;<br />Audit ketaatan atas hokum dan peraturan;<br />Audit komprehensif atas aspek pengelolaan keuangan, kepegawaian, dan asset;<br />Audit penyesuaian harga;<br />Audit klaim;<br />Pemeriksaan serentak;<br />Audit lingkungan;<br />Audit sosial: audit bantuan kegiatan (seperti, bantuan langsung tunai/BLT);<br />Audit khusus dalam rangka serah terima jabatan (sertijab)/alih jabatan;<br />Pemeriksaan dalam rangka berakhirnya masa jabatan kepala daerah;<br />Audit atas catatan-catatan akuntansi intern (internal accaounting records)<br />Audit buril, seperti: melaksanakan verifikasi, pengujian, dan penilaian dokumen;<br />Pemeriksaan berkala, pemeriksaan sewaktu-waktu, maupun pemeriksaan terpadu;<br />Audit teknologi informasi;<br />Audit dengan tujuan tertentu berdasarkan permintaan instansi tertentu;<br />Audit yang bertujuan untuk memberikan pendapat atas pengendalian intern organisasi auditi<br />Audit atas pinjaman/hibah luar negeri (PHLN)<br />Pemeriksaan pelaksanaan kebijakan;<br />Pemeriksaan dokumen legalisasi data;<br />Pemeriksaan penerimaan Negara bukan pajak (PNBP), seperti visa on arrival;<br />Audit untuk tujuan tertentu lainnya, seperti : telaah staf atas penelaahan usulan hukuman disiplin, pelarian napi, keberatan hukuman disiplin, dugaan KKN, penyalahgunaan wewenang.<br />&nbsp; &nbsp; &nbsp; 2. Reviu<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; Reviu adalah penelaahan ulang bukti bukti suatu kegiatan untuk memastikan bahwa kegiatan tersebut telah dilaksanakan sesuai dengan ketentuan, standar, rencana, atau norma yang telah ditetapkan. Contoh kegiatan reviu yang dilaksanakan oleh APIP anatara lain :<br /><br />Reviu atas laporan keuangan;<br />Reviu atas sistem pengendalian intern pemerintah (SPIP);<br />Reviu atas rencana kegiatan dan anggaran (RKA);<br />Reviu atas usulan revisi yang mengubah plafon anggaran;<br />Reviu atas aspek keuangan tertentu;<br />Reviu aspek kinerja tertentu;<br />Reviu periodik atas pengelolaam keuangan;<br />Reviu atas aspek tertentu penyelenggaraan pemerintahan dan pembangunan;<br />Reviu atas hasil kajian pengawasan tertentu.<br />&nbsp; &nbsp; &nbsp;3. &nbsp;Evaluasi<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; Evaluasi adalah rangkaian kegiatan membandingkan hasil/prestasi suatu kegiatan dengan standar, rencana, atau norma yang telah ditetapkan, dan menentukan faktor-faktor yang mempengaruhi keberhasilan atau kegagalan suatu kegiatan dalam mencapai tujuan. Contoh kegiatan evaluasi yang dilaksanakan oleh APIP antara lain :<br /><br />Evaluasi dan penilaian atas efektivitas proses tata kelola;<br />Evaluasi dan penilaian atas efektivitas manajemen resiko;<br />Evaluasi dan penilaian atas efektivitas penerapan sistem pengendalian intern;<br />Evaluasi atas efektivitas suatu program;<br />Evaluasi kelembagaan;<br />Evaluasi kebijakan;<br />Evaluasi strategi pelaksanaan kegiatan;<br />Evaluasi akuntabilitas kinerja instansi pemerintah (AKIP).<br />&nbsp; &nbsp; &nbsp;4. Pemantauan<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; Pemantauan adalah proses penilaian kemajuan suatu program/kegiatan dalam mencapai tujuan yang telah ditetapkan. Contoh kegiatan pemantauan yang dilaksanakan oleh APIP antara lain :<br /><br />Pemantauan tindak lanjut hasil pemeriksaan;<br />Pemantauan terhadap pelaksanaan kebijakan;<br />Pemantauan realisasi penyerapan anggaran;<br />Pemantauan capaian kinerja instansi pemerintah;<br />Pemantauan dana dekonsentrasi;<br />Pemantauan persidangan perkara pidana.<br />&nbsp; &nbsp; &nbsp;5. Kegiatan Pengawasan Lainnya<br /><br />&nbsp; &nbsp; &nbsp; &nbsp;Kegiatan pengawasan lainnya dan kegiatan yang tidak memberikan penjaminan kualitas, antara lain konsultasi, sosialisasi dan asistensi. Contoh :<br /><br />Melaksanakan penyuluhan/sosialisasi di bidang pengawasan;<br />Memberikan konsultai di bidang pengawasan;<br />Melaksanakan bimbingan teknis/asistensi/pendampingan di bidang pengawasan;<br />Melaksanakan bantuan teknis di bidang pengawasan;<br />Melaksanakan pemetaan/mapping di bidang pengawasan;<br />Melaksanakan penugasan penelitian di bidang pengawasan;<br />Mengkompilasi laporan sekelompok objek pengawasan daan atau kegiatan yang sejenis;<br />Pengujian terhadap laporan berkala dan/atau sewaktu-waktu dari unit/satuan kerja;<br />Inventarissi fisik;<br />Cek fisik;<br />Mengumpulkan data dan/atau informasi intelijen non keuangan;<br />Mengkaji aspek tertentu di bidang pengawasan;<br />Mengkaji sistem pengendalian manajemen objek pengawasan;<br />Memaparkan hasil audit (yang merupakan kegiatan tersendiri bukan bagian dari penugasan audit);<br />Menyusun modul diklat, soal ujian, dan mengkoreksi hasil ujian di bidang pengawasan;<br />Penatausahaan persediaan/asset;<br />Pengawasan terpadu peningkatan mutu sekolah;<br />Pengawalan: tes pengadaan CPNS, gerakan nasional (Gernas);<br />Pembahasan sebab terjadinya penyimpangan;<br />Penyempurnaan/pengembangan database auditor;<br />Pengawasan dan pendampingan ujian tertulis dalam proses pengadaan CPNS;<br />Sosialisasi penerapan SPIP;<br />Pembinaan di bidang pengawasan terhadap Satker/SKPD; dan<br />Menyusun dan meutakhirkan data audit universe.<br />&nbsp;<br /><br />B. &nbsp;PEMERIKSAAN OLEH BPK<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; Pemeriksaan pengelolaan dan tanggung jawab keuangan daerah merupakan bagian dari siklus APBD sebelum disahkannya pertanggungjawaban pengelolaan keuangan daerah menjadi peraturan daerah. Melalui pemeriksaan yang dilaksanakan oleh BPK, pengelolaan dan tanggung jawab keuangan daerah yang diasersi oleh pemerintah daerah melalui laporan keuangan pemerintah daerah akan dinilai kewajarannya.<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; Pemeriksaan adalah proses identifikasi masalah, analisis, dan evaluasi yang dilakukan secara independen, objektif, dan professional berdasarkan standar pemeriksaan, untuk menilai kebenaran, kecermatan, kredibilitas, dan keandalan informasi mengenai pengelolaan dan tanggung jawab keuangan negara.<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; Ketentuan tentang pemeriksaan oleh BPK diatur dalam Undang-UndangNomor 15 Tahun 2004 tentang Pemeriksaan Tanggung Jawab dan Pengelolaan Keuangan Negara. Sedangkan ketentuan tentang Badan Pemeriksa Keuangan sebagai institusi pemeriksa diatur dalam undang-Undang Nomor 15 Tahun 2006 tentang Badan Pemeriksa Keuangan.<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; Sebagaimana telah ditetapkan dalam UUD RI Tahun 1945, pemeriksaan yang menjadi tugas BPK meliputi pemeriksaan atas pengelolaan &nbsp;keuangan dan pemeriksaan atas tanggung jawab keuangan daerah. Pemeriksaan tersebut mencakup seluruh unsur keuangan daerah. Oleh karena itu, kepada BPK diberikan kewenangan untuk melakukan 3 (tiga) jenis pemeriksaan yaitu : pemeriksaan keuangan, pemeriksaan kinerja, dan pemeriksaan dengan tujuan tertentu.<br /><br />1. &nbsp;Pemeriksaan Keuangan<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; Pemeriksaan keuangan adalah pemeriksaan atas laporan keuangan pemerintah. Pemeriksaan ini dilakukan dalam rangka pemberian opini atas kewajaran penyajian laporan keuangan. Hasil pemeriksaan keuangan oleh BPK akan menghasilkan opini yang merupakan pernyataan p[rofesional pemeriksa mengenai kewajaran informasi keuangan yang disajikan. Kriteria untuk pemberian opini adalah sebagai berikut :<br /><br />Kesesuaian dengan standar akuntansi pemerintahan;<br />Kecukupan pengungakapan;<br />Kepatuhan terhadap peraturan perundang-undangan; dan<br />Efektivitas sistem pengendalian intern.<br />&nbsp; &nbsp; &nbsp; &nbsp; Penilaian atas empat kriteria diatas akan menentukan pemberian opini terhadap laporan keuangan yang meliputi lima jenis sebagai berikut :<br /><br />Wajar Tanpa Pengecualian (unqualified opinion);<br />Wajar Tanpa Pengecualian dengan paragraph penjelas;<br />Wajar Dengan Pengecualian (qualified opinion);<br />Tidak wajar (adversed opinion), dan<br />Pernyataan menolak memberikan opini (disclaimer of opinion).<br />&nbsp; &nbsp; &nbsp; &nbsp; Opini wajar tanpa pengecualian (WTP) diberikan jika pos-pos laporan keuangan tidak mengandung salah siji material dan laporan keuangan secara keseluruhan disajikan secara wajar. Opini WTP dengan paragraf penjelas diberikan apabila terdapat permasalahan yang belum dapat dituntaskan, tetapi tidak berpengaruh secara signifikan terhadap kewajaran laporan keuangan. Opini wajar dengan pengecualian jika terdapat pos-pos tertentu dalam laporan keuangan mengandung salah saji secara material, namun secara keseluruhan tidak mengganggu kewajaran laporan keuangan. Opini tidak wajar diberikan jika pos-pos laporan keuangan mengandung salah saji material sehingga laporan keuangan secara keseluruhan tidak wajar. Opini disclaimer diberikan jika pemeriksa tidak dapat memperoleh keyakinan atas kewajaran informasi yang disajikan dalam laporan keuangan.<br /><br />2. &nbsp;Pemeriksaan Kinerja<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; Pemeriksaan kinerja sering juga disebut value money audit. Pemeriksaan kinerja adalah pemeriksaan atas aspek ekonomi, efisiensi, serta efektivitas. Pemeriksaan ini lazim dilakukan oleh aparat pengawasan intern untuk kepentingan jajaran manajemen. Namun demikian UUD RI Tahun 1945 juga mengamanatkan kepada BPK untuk melakukan pemeriksaan kinerja, terutama untuk mengidentifikasi area-area yang potensial untuk peningkatan kinerja yang menjadi perhatian lembaga perwakilan.<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; Hasil pemeriksaan kinerja adalah temuan, kesimpulan, dan rekomendasi. Pemeriksaan kinerja antara lain dilakukan dengan melakukan evaluasi atas efisiensi pelaksaanaan kegiatan serta efektivitas suatu program. Adapun bagi pemerintah, pemeriksaan kinerja ini dimaksudkan untuk mengarahkan agar sumber daya yang tersedia dimanfaatkan secara efisien dan efektif untuk pelayanan kepada masyarakat.<br /><br />3. &nbsp;Pemeriksaan dengan Tujuan Tertentu<br /><br />&nbsp; &nbsp; &nbsp; &nbsp;Pemeriksaan dengan tujuan tertentu adalah pemeriksaan yang dilakukan dengan tujuan khusus, di luar pemeriksaan keuangan dan pemeriksaan kinerja. Termasuk dalam pemeriksaan ini adalah pemeriksaan atas hal-hal lain yang bersifat keuangan, pemeriksaan atas sistem pengendalian intern, dan pemeriksaan investigatif.<br /><br />&nbsp; &nbsp; &nbsp; &nbsp;Hasil pemeriksaan dengan tujuan tertentu adalah kesimpulan. Dalam hal pemeriksaan investigative, apabila diketemukan adanya indikasi tindak pidana atau tindakan yang membawa dampak pada kerugian Negara, BPK segera melaporkannya kepada instansi yang berwenang sesuai dengan peraturan perundang-undangan.</p>', '2017-09-08 12:44:30', 'admin', '2017-11-14 19:21:20', 'admin');
INSERT INTO `master_artikel` VALUES ('27', 'Internal Audit', '<p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:justify;line-height:150%;\">Internal auditing is an independent, objective assurance and consulting activity designed to add value and improve an organization\'s operations. It helps an organization accomplish its objectives by bringing a systematic, disciplined approach to evaluate and improve the effectiveness of risk management, control and governance processes.[1] Internal auditing is a catalyst for improving an organization\'s governance, risk management and management controls by providing insight and recommendations based on analyses and assessments of data and business processes.[2] With commitment to integrity and accountability, internal auditing provides value to governing bodies and senior management as an objective source of independent advice. Professionals called internal auditors are employed by organizations to perform the internal auditing activity.<br /></p><p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:justify;line-height:150%;\">The scope of internal auditing within an organization is broad and may involve topics such as an organization\'s governance, risk management and management controls over: efficiency/effectiveness of operations (including safeguarding of assets), the reliability of financial and management reporting,[3][4] and compliance with laws and regulations. Internal auditing may also involve conducting proactive fraud audits to identify potentially fraudulent acts; participating in fraud investigations under the direction of fraud investigation professionals, and conducting post investigation fraud audits to identify control breakdowns and establish financial loss.<br /></p><p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:justify;line-height:150%;\">Internal auditors are not responsible for the execution of company activities; they advise management and the Board of Directors (or similar oversight body) regarding how to better execute their responsibilities. As a result of their broad scope of involvement, internal auditors may have a variety of higher educational and professional backgrounds.<br /></p><p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:justify;line-height:150%;\">The Institute of Internal Auditors (IIA) is the recognized international standard setting body for the internal audit profession and awards the Certified Internal Auditor designation internationally through rigorous written examination. Other designations are available in certain countries.[5] In the United States the professional standards of the Institute of Internal Auditors have been codified in several states\' statutes pertaining to the practice of internal auditing in government (New York State, Texas, and Florida being three examples). There are also a number of other international standard setting bodies.<br /></p><p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:justify;line-height:150%;\">Internal auditors work for government agencies (federal, state and local); for publicly traded companies; and for non-profit companies across all industries. Internal auditing departments are led by a Chief Audit Executive (\"CAE\") who generally reports to the Audit Committee of the Board of Directors, with administrative reporting to the Chief Executive Officer (In the United States this reporting relationship is required by law for publicly traded companies).<br /></p><p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:justify;line-height:150%;\">From Wikipedia, the free encyclopedia &ndash; Admin 2017</p>', '2017-09-08 13:38:32', 'admin', '2017-09-08 13:40:27', 'admin');
INSERT INTO `master_artikel` VALUES ('28', 'Memahami Prinsip Dasar Three Lines of Defence Dalam Manajemen Risiko', '<p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><strong><span lang=\"IN\" style=\"font-size:16.0pt;line-height:115%;\"></span></strong></p>Memahami Prinsip Dasar Three Lines of Defence Dalam Manajemen Risiko<p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><strong></strong></p><table><colgroup><col style=\"width:212px;\" /><col style=\"width:23px;\" /><col style=\"width:228px;\" /><col style=\"width:27px;\" /><col style=\"width:188px;\" /></colgroup><thead><tr style=\"height:20.2pt;\"><th colspan=\"5\">Three levels of risk management</th></tr></thead><tbody><tr style=\"height:22.0pt;\"><td style=\"text-align:center;\"><strong>Business Operation</strong></td><td>&nbsp;</td><td style=\"text-align:center;\"><strong>Risk and Control Functions</strong></td><td>&nbsp;</td><td style=\"text-align:center;\"><strong>Internal audit</strong></td></tr><tr><td><strong>First line of defence</strong><br /><br />Risk management by business operations</td><td>&nbsp;</td><td><strong>Second line of defence</strong><br /><br />Independent risk control and compliance</td><td>&nbsp;</td><td><strong>Third line of defence</strong><br /><br />Internal audit</td></tr><tr style=\"height:33.7pt;\"><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan=\"5\" style=\"text-align:center;\"><strong>RISK</strong></td></tr></tbody></table><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\">Penerapan manajemen risiko seyogyanya menjadi tanggung jawab semua pihak yang terlibat dalam sebuah organisasi perusahaan. Manajemen Risiko hendaknya bukan hanya menjadi tanggung jawab dari unit manajemen risiko saja. Prinsip inilah yang menjadi dasar terlaksananya three lines of defence dalam manajemen risiko. Apakah yang dimaksud dengan three lines of defence?</span></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\"></span></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\"></span></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\">Pada dasarnya three lines of defence adalah mekanisme pertahanan secara berlapis untuk mengelola risiko. Sesuai namanya, three lines of defence terdiri dari 3 lapisan. Lapisan yang pertama terletak pada setiap unit kerja sebagai risk owner, karena memang pada dasarnya setiap unit kerja memiliki risiko, apapun jenis dan lingkup pekerjaannya. Yang kedua, adalah pada unit manajemen risiko (managing risk/ risk controller), dan yang ketiga adalah pada unit audit internal.</span></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\"></span></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\">Fungsi unit kerja sebagai unit yang turut menangani risiko memang terlihat seperti adanya penambahan beban kerja, namun pada dasarnya setiap unit kerja memang merupakan unit yang memiliki pengetahuan operasional secara langsung dan karenanya memiliki pengetahuan terhadap potensi-potensi risiko apa saja yang dapat muncul dan dihadapi. Selain itu, setiap unit kerja juga memiliki sekilas gambaran terhadap solusi-solusi apa saja yang dapat direkomendasikan. Karenanya setiap unit kerja harus melaksanakan tugas dan tanggung jawabnya dengan penuh kesadaran akan adanya potensi risiko yang dapat muncul.</span></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\"></span></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\">Selanjutnya pada fungsi manajemen risiko, merupakan fungsi controlling dan monitoring risiko secara keseluruhan atau penerapan enterprise risk management. Fungsi controlling dan monitoring ini termasuk diantaranya adalah penetapan kebijakan manajemen risiko yang meliputi beberapa elemen mendasar seperti berapa tingkat risk tolerancenya, dan seperti apa risk appetite dari sebuah perusahaan. Selain itu fungsi controlling dan monitoring ini juga termasuk diantaranya adalah sebagai counterpart dari masing-masing unit kerja untuk berkonsultasi mengenai implementasi dari risiko yang dihadapi oleh masing-masing unit kerja. Tentu saja fungsi reporting termasuk didalam controlling dan monitoring.</span></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\"></span></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\">Sebagai lapisan paling terakhir adalah audit internal yang bertujuan untuk melakukan audit terhadap pelaksanaan seluruh unit kerja. Dari hasil temuan audit, ditemukan permasalahan atau adanya indikasi terhadap penyimpangan dan pelanggaran dari ketentuan perusahaan ataupun peraturan yang berlaku. Pelanggaran-pelanggaran tersebut selain dicari upaya-upaya tindak lanjutnya, juga akan dibuatkan data database pelanggaran berikut dengan upaya-upaya solusi apa saja yang dapat dilakukan. Database tersebut akan menjadi referensi ataupun juga sebagai yurisprudensi jika terjadi pelanggaran serupa. Disitulah hakekat sejati dari penerapan post ante, karena memang seyogyanya seperti itulah fungsi audit internal dijalankan.</span></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\"></span></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\">Penerapan three lines of defence ini harus berjalan beriringan dan tentu saja tidak boleh terjadi overlapping antara satu dengan sama lain, namun juga harus memudahkan terciptanya koordinasi. Kesadaran akan pentingnya risiko dan keterbukaan dari setiap unit menjadi kunci dari penerapan prinsip three lines of defence ini.</span></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\"></span></p><p style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;\"><span lang=\"IN\">Fakhruroji Hasan (admin 2017)</span></p>', '2017-09-15 10:21:26', 'admin', '2017-09-15 10:25:14', 'admin');

-- ----------------------------
-- Table structure for master_berita
-- ----------------------------
DROP TABLE IF EXISTS `master_berita`;
CREATE TABLE `master_berita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `berita` text NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_berita
-- ----------------------------
INSERT INTO `master_berita` VALUES ('1', 'Audit Utama', '<p>Dalam rangka mendorong akuntabilitas pertanggungjawaban keuangan unit utama, Inspektorat III Mulai tahun 2016 melakukan pengawalan pada unit utama melalui kegiatan audit atas pertanggungjawaban keuangan. &nbsp;Dari tanggal 10 s.d 17 Juni 2016, dilakukan audit tersebut untuk pertanggungjawaban semester I tahun 2016 (admin, 2016)</p>', '2016-06-10 14:08:50', '2017-11-15 08:30:06');
INSERT INTO `master_berita` VALUES ('3', 'Pelatihan Di Kantor Sendiri (PKS) Audit Operasional Keuangan Tentang Audit Unit Utama Semester I Tahun 2016 tanggal 9 Juni 2016', '<p>Dalam rangka audit Unit Utama (10 s.d. 17 Juni 2016) Auditor Inspektorat III sebelumnya telah melaksanakan Pelatihan di Kantor Sendiri (PKS) tentang <span lang=\"IN\">Audit Unit Utama Semester I Tahun 2016</span> pada tanggal 9 Juni 2016 bertempat di Ruang Sidang lantai VI diikuti oleh seluruh Auditor Inspektorat III.</p>', '2016-06-13 15:08:00', '2017-11-15 08:30:24');
INSERT INTO `master_berita` VALUES ('4', 'Diseminasi Pemetaan DAK', '<p>Pada hari senin, 13 Juni 2016&nbsp; para Auditor Inspektorat III menghadiri kegiatan Desiminasi Pemetaan DAK yang diselenggarakan oleh PLP Set. Itjen Kemdikbud dimulai pukul 15.00&nbsp; s.d. 18.00 WIB bertempat di Ruang Sidang lantai VI.</p>', '2016-06-14 11:28:07', '2017-11-15 08:30:33');
INSERT INTO `master_berita` VALUES ('5', 'Reviu RKAKL 2018', '<p>Tim Inspektorat III, sejak dari tanggal 4 sd 10 Agustus 2017 melakukan reviu RKAKL tahun 2018. Reviu dilakukan untuk tiga unit utama berada di area pengawan Inspektorat III yaitu: Ditjen Guru dan Tenaga Kependidikan, Sekretariat Jenderal, dan Badan pembinaan dan Pengembangan Bahasa. &nbsp;Reviu ditekakan pada beberapa hal penting yaitu: Kesesuaian anggaran dengan pagu yang diperoleh, kesesuaian dalam penempatan akun, pembatasan/efisiensi perjalanan dinas, kesesuaian dengan standar biaya yang telah ditetapkan, dan upaya mengurangi lemak-lemak dalam kegiatan.</p>\r\n<p>Upaya yang dilakukan oleh tim Inspektorat III ini dimaksudkan agar anggaran tahun 2018 dapat disusun secara efisien efektif dan akuntabel. &nbsp;Melalui kegiatan ini pula diharapkan dapat dihindari secara dini permasalahan-permasalahan atau penyimpangan dalam penggunaan anggara (Agustus, admin 2017)</p>', '2017-08-08 22:47:03', '2017-11-15 08:30:42');

-- ----------------------------
-- Table structure for master_carousel
-- ----------------------------
DROP TABLE IF EXISTS `master_carousel`;
CREATE TABLE `master_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_carousel
-- ----------------------------
INSERT INTO `master_carousel` VALUES ('5', '~/Uploads/sosialisasi-audit-dini.jpg', 'Sosialiasi Audit Dini');
INSERT INTO `master_carousel` VALUES ('6', '~/Uploads/sosialisasi-audit-dini2.jpg', 'Peserta Sosialisasi Audit Dini');
INSERT INTO `master_carousel` VALUES ('7', '~/Uploads/peserta-sosialisasi-audit-dini.jpg', 'Peserta Sosialisasi Audit Dini');
INSERT INTO `master_carousel` VALUES ('8', '~/Uploads/inspektorat-3.jpg', 'inspektorat III');
INSERT INTO `master_carousel` VALUES ('9', '~/Uploads/penyusunan-perencanaan-program-1.jpg', 'Narasumber kegiatan Penyusunan Perencanaan Program');
INSERT INTO `master_carousel` VALUES ('10', '~/Uploads/penyusunan-perencanaan-program-2.jpg', 'Narasumber kegiatan Penyusunan Program');
INSERT INTO `master_carousel` VALUES ('12', '~/Uploads/penyusunan-perencanaan-program-3.jpg', 'Peserta penyusunan perencanan program Inspektorat III tahun 2017');
INSERT INTO `master_carousel` VALUES ('13', '~/Uploads/penyusunan-perencanaan-program-4.jpg', 'Senam di sela-sela kegiatan penyusunan dan perencanaan program');
INSERT INTO `master_carousel` VALUES ('14', '~/Uploads/fgd-penyelesaian-kasus-tanah-kantor-bahasa-1.jpg', 'FGD penyelesiaan kasus tanah kantor bahasa');
INSERT INTO `master_carousel` VALUES ('15', '~/Uploads/fgd-penyelesaian-kasus-tanah-kantor-bahasa-2.jpg', 'Peserta FGD penyelesaian kasus tanah kantor bahasa');
INSERT INTO `master_carousel` VALUES ('16', '~/Uploads/fgd-penyelesaian-kasus-tanah-kantor-bahasa-3.jpg', 'narasumber FGD penyelesaian kasus tanah kantor bahasa');
INSERT INTO `master_carousel` VALUES ('17', '~/Uploads/raker-malang-1.jpg', 'Raker Inspektorat III tahun 2017 di Malang (Pembukaan)');
INSERT INTO `master_carousel` VALUES ('18', '~/Uploads/raker-malang-2.jpg', 'Sekretaris Itjen Kemdikbud (Hindun Basri Purba) memberikan paparan pada Raker Inspektorat III di Malang');
INSERT INTO `master_carousel` VALUES ('19', '~/Uploads/raker-malang-3.jpg', 'Suasana pemaparan narasumber Ses. Itjen Kemdikbud');
INSERT INTO `master_carousel` VALUES ('20', '~/Uploads/raker-malang-4.jpg', 'Foto bersama peserta dengan Sekretaris Itjen Kemdikbud');

-- ----------------------------
-- Table structure for master_galeri
-- ----------------------------
DROP TABLE IF EXISTS `master_galeri`;
CREATE TABLE `master_galeri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_galeri
-- ----------------------------
INSERT INTO `master_galeri` VALUES ('1', '~/Uploads/img-20160202-wa0066.jpg', 'Auditor dan Staf Inspektorat III di depan Kantor Itjen Kemendikbud');
INSERT INTO `master_galeri` VALUES ('2', '~/Uploads/c360-2016-02-20-13-40-58.jpg', 'reviu RAB di lingkungan Balitbang');
INSERT INTO `master_galeri` VALUES ('3', '~/Uploads/c360-2016-02-20-13-41-14-org.jpg', 'Reviu RAB di lingkungan Balitbang');
INSERT INTO `master_galeri` VALUES ('4', '~/Uploads/c360-2016-03-15-16-27-23.jpg', 'Aktivitas harian di kantor');
INSERT INTO `master_galeri` VALUES ('5', '~/Uploads/20160202-162744.jpg', 'Rapat harian dengan menggunakan pakaian adat');
INSERT INTO `master_galeri` VALUES ('6', '~/Uploads/20160509-085646.jpg', 'Pemantauan UN di SMP Jakarta');
INSERT INTO `master_galeri` VALUES ('7', '~/Uploads/c360-2016-04-26-11-10-27.jpg', 'Diskusi dengan BPK tindak lanjut temuan di Balitbang');
INSERT INTO `master_galeri` VALUES ('8', '~/Uploads/img-20160329-wa0000.jpg', 'Hari selasa minggu pertama');
INSERT INTO `master_galeri` VALUES ('9', '~/Uploads/img-20160122-wa0002.jpg', 'Olah raga');
INSERT INTO `master_galeri` VALUES ('10', '~/Uploads/img-20160109-wa0006.jpg', 'Acr pelantikan');
INSERT INTO `master_galeri` VALUES ('11', '~/Uploads/img-20151214-wa0001.jpg', 'Kegiatan PKS');
INSERT INTO `master_galeri` VALUES ('12', '~/Uploads/img-20160329-wa0003.jpg', 'ngopi n teh minggu pertama');
INSERT INTO `master_galeri` VALUES ('13', '~/Uploads/img-20160322-wa0000.jpg', 'diskusi kelompok');
INSERT INTO `master_galeri` VALUES ('14', '~/Uploads/img-20160321-wa0004.jpg', 'sosialisasi pedoman audit');
INSERT INTO `master_galeri` VALUES ('15', '~/Uploads/img-20160121-wa0063.jpg', 'serah terima jabatan');
INSERT INTO `master_galeri` VALUES ('16', '~/Uploads/img-20160329-wa0003.jpg', 'Kopi pagi');
INSERT INTO `master_galeri` VALUES ('17', '~/Uploads/img-20160329-wa0000.jpg', 'Pakaian Adat ');
INSERT INTO `master_galeri` VALUES ('18', '~/Uploads/img-20160322-wa0000.jpg', 'Diskjusi terpumpun (FGD)');
INSERT INTO `master_galeri` VALUES ('19', '~/Uploads/c360-2016-02-20-13-40-58.jpg', 'Reviu RAB');

-- ----------------------------
-- Table structure for master_golongan
-- ----------------------------
DROP TABLE IF EXISTS `master_golongan`;
CREATE TABLE `master_golongan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `golongan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_golongan
-- ----------------------------
INSERT INTO `master_golongan` VALUES ('2', 'III / a');
INSERT INTO `master_golongan` VALUES ('3', 'III / b');
INSERT INTO `master_golongan` VALUES ('4', 'III / c');
INSERT INTO `master_golongan` VALUES ('5', 'III / d');
INSERT INTO `master_golongan` VALUES ('6', 'IV / a');
INSERT INTO `master_golongan` VALUES ('7', 'IV / b');
INSERT INTO `master_golongan` VALUES ('8', 'IV / c');
INSERT INTO `master_golongan` VALUES ('9', 'IV / d');
INSERT INTO `master_golongan` VALUES ('10', 'IV / e');

-- ----------------------------
-- Table structure for master_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `master_jabatan`;
CREATE TABLE `master_jabatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_jabatan
-- ----------------------------
INSERT INTO `master_jabatan` VALUES ('3', 'Auditor Utama');
INSERT INTO `master_jabatan` VALUES ('4', 'Auditor Madya');
INSERT INTO `master_jabatan` VALUES ('5', 'Auditor Pertama');
INSERT INTO `master_jabatan` VALUES ('6', 'Auditor Muda');
INSERT INTO `master_jabatan` VALUES ('7', 'Auditor Penyelia');
INSERT INTO `master_jabatan` VALUES ('8', 'Auditor Lanjut');

-- ----------------------------
-- Table structure for master_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `master_karyawan`;
CREATE TABLE `master_karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(255) NOT NULL,
  `nama_karyawan` varchar(255) NOT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  `id_golongan` int(11) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tlp` varchar(255) DEFAULT NULL,
  `id_peran` int(11) DEFAULT NULL,
  `is_cordinator` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `master karyawan_ibfk_1` (`id_jabatan`),
  KEY `id_golongan` (`id_golongan`),
  KEY `id_peran` (`id_peran`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_karyawan
-- ----------------------------
INSERT INTO `master_karyawan` VALUES ('75', ',195921011985031001', 'Joko Sapto Pratolo, M.Si', '3', '10', 'Jl. Buni 28 RT01/04 kel munjul cibubur Jakarta Timur', '081279442794', '8', '');
INSERT INTO `master_karyawan` VALUES ('76', '196102281198703002', 'Prabarini Primaningsih, SH, M.Pd, M.Ak', '3', '10', 'Jl. Aseli 18 Jagakarsa,  Jakarta Selatan', '08159885533', '2', '\0');
INSERT INTO `master_karyawan` VALUES ('77', '195708191984032001', 'Dra. Nina Kentjana NS, MM', '3', '10', 'Jl. Tebet Barat dalam no 37 Jakarta Selatan', '08128146161', '3', '');
INSERT INTO `master_karyawan` VALUES ('78', ',195810241983121001', 'Drs.  Darsono', '3', '10', 'Taman Wisma Asri D33 No 63Rt 001/016 Teluk Pucung Bekasi', '08128707830', '4', '\0');
INSERT INTO `master_karyawan` VALUES ('79', ',196410051989031003', 'Iwan Mustafa, SE. MM', '4', '6', 'Jl. Cisadane 1 No 175 Karawang , Jawa barat', '01808530666', '8', '\0');
INSERT INTO `master_karyawan` VALUES ('80', ',196504271988121001', 'Drs. A. Junaidi Gunawan', '4', '7', 'Komplek PAM LAMA Jl Penjernihan 1 No 15C Rt 08/016 Benhil Jakarta Pusat', '081389405377', '7', '\0');
INSERT INTO `master_karyawan` VALUES ('81', '196109251982031002', 'Fachri Noekman, SE', '4', '6', 'Graha Ahena Pondok  Jagung Sn/57 Pondok Kalang,  Tangerang', '082298932516', '3', '\0');
INSERT INTO `master_karyawan` VALUES ('82', ',195907201986011001', 'Yaya Mulya, SH', '4', '6', 'Perum Bukit Sawangan Indah, Blok D 6 No 1, Sawangan Depok', '081315331212', '4', '\0');
INSERT INTO `master_karyawan` VALUES ('83', ',195910311988021001', 'Drs.Edy Wijaya Kusuma,M.Si', '4', '7', 'Komplek Bintaro 3 Blok D Nomor 31 RT 004/07 Kel. Bintaro Jaya, Kec. Bekasi Barat', '\'081319267461', '3', '\0');
INSERT INTO `master_karyawan` VALUES ('84', ',196011101989031003', 'Ir.  Haroid Parningotan H', '4', '6', 'Jl. Bintang Raya No. 9 Blok 16 Pondok Mekar Sari, Cimanggis- Kota Depok', '08119438870', '8', '\0');
INSERT INTO `master_karyawan` VALUES ('85', ',196203201989032001', 'Dra. Hendri Yetni A Muis', '4', '8', 'Taman Laguna L1 Nomor 31 Jatikarya, Jatisampurna, Bekasi', '\'081319422815', '4', '\0');
INSERT INTO `master_karyawan` VALUES ('86', ',197001071994032002', 'Momy Siti Armilah,SH,M.Si', '4', '7', 'Perum Tityan kencana Blok J3/7Bekasi Utara ', '\'081280351706', '2', '\0');
INSERT INTO `master_karyawan` VALUES ('87', ',196302131984031001', 'Drs. Satiri', '4', '6', 'Jl. H. Openg RT 011/02 Kebon Jeruk No. 59 Komplek DPR, Kec. Soleas, Tangerang', '\'08211488813', '2', '\0');
INSERT INTO `master_karyawan` VALUES ('88', ',195905281988021001', 'Drs, Eduart B Ginting', '4', '8', 'Villa Bintaro Indah Blok C II/17 Jombang - Ciputat, Tangerang Selatan', '\'0812 8421 5100', '7', '\0');
INSERT INTO `master_karyawan` VALUES ('89', ',196506131994031001', 'Drs, Dedy Linggajaya, MM', '4', '6', 'Jl kaka tua 3 No 11 Rt007/012 kel cibodasari kota tangerang', '\'\'082111197891', '2', '\0');
INSERT INTO `master_karyawan` VALUES ('90', ',196909271988121001', 'Waluyo, S.IP, M.Si', '4', '6', 'Jl. Pulo Indah raya No.14 RT 12 RW 3 Kel.Petir Kec.Cipondoh Kota Tangerang', '\'081314815410', '3', '\0');
INSERT INTO `master_karyawan` VALUES ('91', ',196512021987031003', 'Danang Syahrul,SE', '4', '8', 'Bebelan Indah Jl. Nusantara II Blok A/275 Rt 004/08 Bekasi Utara', '01808530666', '7', '\0');
INSERT INTO `master_karyawan` VALUES ('92', ',195904271988021001', 'Dr. H. Indra Jaya', '4', '6', 'Jl. Joe RT 01/03 N0. 9 Kelapa Tiga Jagakarsa, Jakarta Selatan', '\'081381771789', '3', '\0');
INSERT INTO `master_karyawan` VALUES ('93', ',196908241988122001', 'Irna Suharti, SIP, M.Si', '4', '7', 'Jati Mulya Regency B2/4 Bekasi, Bekasi  Jawa   Barat', '\'083892252729', '7', '\0');
INSERT INTO `master_karyawan` VALUES ('94', ',196606251987032002', 'Puspita Yunia Stri, SH', '4', '7', 'Jl. Daksinapati Timur Laut No 1', '\'0815 9544 337', '7', '\0');
INSERT INTO `master_karyawan` VALUES ('95', ',196212031991031002', 'Drs.Kustri Waluyo, MM', '4', '6', 'Bumi Sani Permai F5/15 Setia Mekar, Tambun Selatan Bekasi', '\'0856 7079 412', '10', '\0');
INSERT INTO `master_karyawan` VALUES ('96', ',196311051989031002', 'Drs.Hiswara', '4', '7', 'Villa Rizki 48/14 Karawaci, Tangerang', '\'0813 8549 6669', '2', '\0');
INSERT INTO `master_karyawan` VALUES ('97', ',196611081992031001', 'Subiyantoro,SH,M.Si', '4', '6', 'Jl. Cemara Kav. 1413 Bukit Nusa Indah Ciputat Tangerang Selatan', '081311133380', '8', '\0');
INSERT INTO `master_karyawan` VALUES ('98', ',195808061982032002', 'Dra. Mitra Susanti, M.Si', '4', '8', 'Pondok Timur Indah Khusus Blok K4/12 Bekasi Timur', '081218158001', '3', '\0');
INSERT INTO `master_karyawan` VALUES ('99', ',196809211988122000', 'Purwaniati Nugraheni,SH,MM', '4', '7', 'Kp. Baraka RT10 RW08 No.31 Curug, Cimanggis Depok', '\'0816 4831 216', '3', '\0');
INSERT INTO `master_karyawan` VALUES ('100', ',196204281988032001', 'Dra, Andriati Condro Arsetyo, M.Pd', '4', '7', 'Komplek BPK III Nomor B-5 Kebon Jeruk, Palmerah, Jakarta Barat', '\'0217409378', '7', '\0');
INSERT INTO `master_karyawan` VALUES ('101', ',196211141991031002', 'Urip Widodo,SH.,M.Si', '4', '7', 'Cempaka Baru IV/6 Jakarta Pusat', '\'0812 9786 717', '4', '\0');
INSERT INTO `master_karyawan` VALUES ('102', ',195704161984111011', 'Drs, Arsa Dinata. AS', '4', '6', null, null, null, null);
INSERT INTO `master_karyawan` VALUES ('103', ',197107171994012001', 'Tety Yliati, SPd', '4', '6', 'Buana Gardena Blok D1 No. 1 RT 004/04 Pinang Kota Tangerang', '\'0878805995', '4', '\0');
INSERT INTO `master_karyawan` VALUES ('104', ',195712311986031013', 'Drs, Ambo Sakka', '4', '8', 'Pondok Kacang ermaiBlok A5/6Rt09/08 Pondok Aren Tangsel', '\'082113313898', '10', '\0');
INSERT INTO `master_karyawan` VALUES ('105', ',196204251984122002', 'Endang Lestiningrum M.Pd', '4', '7', 'JL. Mawadah X Blok J 6 No. 11 Islamic Village, Tangerang', '\'0853312678590', '10', '\0');
INSERT INTO `master_karyawan` VALUES ('106', ',195812071985031001', 'John Swart Arroan, SE', '4', '9', 'Pondok Tirta Mandala Blok F1 No.6 Depok Timur', '\'08119999463', '10', '\0');
INSERT INTO `master_karyawan` VALUES ('107', ',196401121994031001', 'Sunarto,SH,MM', '4', '6', 'Jl. Gaharu I No. 92A   Cipete  Jakarta  Selatan', '\'082125120040', '2', '\0');
INSERT INTO `master_karyawan` VALUES ('108', ',196011231987032001', 'Dra,Mindo BR Purba', '4', '6', 'Kampung Kramat Rt. 03/04 No. 47, Kel. Setu,  Jakarta Timur', '\'\'081310740876', '8', '\0');
INSERT INTO `master_karyawan` VALUES ('109', ',195703161988031001', 'M. Nurdin,SH', '4', '7', null, null, null, null);
INSERT INTO `master_karyawan` VALUES ('110', ',196706171994031001', 'R.Saptoadji P,SH,M.Si', '4', '6', 'Jl. Kpg 2 No 18 Rt02/15 kel jaka sempurna bekasi barat', '\'08129318789', '3', '\0');
INSERT INTO `master_karyawan` VALUES ('111', ',196202051988022001', 'Dra, Eriawani, M.Ak', '4', '7', 'Perum Pondok Hijau Permai Jl. Kenanga Selatan IV Blok H4 No. 3 Pengasinan Bekasi Timur', '\'0813 1949 0854', '4', '\0');
INSERT INTO `master_karyawan` VALUES ('112', ',195809071980031002', 'Drs.RH.Riyanto,M.M', '4', '7', 'Jl.Rosalia II Blok TJ No 1 Rt 10/04 No1 pondok betung podok aren ', '\'081298177272', '7', '\0');
INSERT INTO `master_karyawan` VALUES ('113', ',196912121995122001', 'Nureka Waty,S.Ssi', '4', '6', 'Perumahan Bukit Nusa Indah Jl. Melati No. 11-12 Ciputat, Tange', '081229926754', '2', '\0');
INSERT INTO `master_karyawan` VALUES ('114', ',107308232000031001', 'Yahya Sulaeman,SH,MM', '6', '5', 'Jl. H. Mida No. 63 RT 002/06 Pamulang Barat, Tangerang Selatan', '\'082213132868', '3', '\0');
INSERT INTO `master_karyawan` VALUES ('115', ',197401062005011002', 'Ahmar Hafid,SH,MH', '6', '5', 'Perum Griya SasmitaBlok C/10 Jl Senia Raya Bojongsari Depok', '\'081381175181', '8', '\0');
INSERT INTO `master_karyawan` VALUES ('116', ',196811121988121001', 'Hartono,M.Pd', '6', '4', 'Jl. Raya Mandor Tajir RT. 002/05 No.83 Kel Serua Bojongsari Depok', '\'08159093531', '7', '\0');
INSERT INTO `master_karyawan` VALUES ('117', ',19810602005011004', 'Rian Sopian,SE,MMSi', '6', '5', 'Komp. Griya Sasmita B1 No 13 RT 001/09 Serua Bojongsari Kota Depok', '01808530666', '4', '\0');
INSERT INTO `master_karyawan` VALUES ('118', ',196707031994031002', 'Rizal Rifai,SH', '6', '5', 'Jl. Lenteng agung GG. Anyar V, No. 32 Rt. 012/02, Jakarta Selatan', '\'085811533819', '10', '\0');
INSERT INTO `master_karyawan` VALUES ('119', ',196010131987032001', 'Sri Rejeki,S.Sos', '6', '5', 'Jl. Batu Ampar I No. 8 Rt 04/02, Kel. Condet Batu Ampar, Kec. Kramat Jati, Jakarta Timur', '\'0813 5213 8011', '2', '\0');
INSERT INTO `master_karyawan` VALUES ('120', ',196509041991031003', 'Undang, S.IP', '6', '4', 'Jl. Lenteng agung GG. Anyar V, No. 32 Rt. 012/02, Jakarta Selatan', '\'081283532002', '10', '\0');
INSERT INTO `master_karyawan` VALUES ('121', ',196004181960032002', 'Gina Aprilawatie,S.Pd.,M.Si', '6', '5', 'Komp. Depkeu No. 15 Kedaung Pamulang, Tangsel', '\'081280555722', '4', '\0');
INSERT INTO `master_karyawan` VALUES ('122', ',196808031990102001', 'Nur Sulasih', '6', '4', 'Jl. Mubarokah IX Blok A .10 Nomor 5 RT 002/35 Villa Rizki Ilham, Tangerang- Banten', '\'08128833620', '7', '\0');
INSERT INTO `master_karyawan` VALUES ('123', ',196704131987032001', 'Nirma, S.IP', '6', '4', 'Binong Permai Blok J5 N0. 9-10 Curug  Tangerang', '\'081319477725', '2', '\0');
INSERT INTO `master_karyawan` VALUES ('124', ',196903051988122002', 'Semi Widayati, S.IP', '4', '6', 'Komp. Non Dinas TNI AU Pulo Nirwana Pinangranti Jakarta Timur', '\'0812 1061 6202', '8', '\0');
INSERT INTO `master_karyawan` VALUES ('125', ',196502071986011001', 'Zaenal Abidin,S.Pd', '6', '4', 'Jl. Celepuk II Rt.04/012 No. 36 Kel. Jatimakmur Kec. Pondok Gede Bekasi', '\'0812 8627 5553', '4', '\0');
INSERT INTO `master_karyawan` VALUES ('126', ',197001121988021000', 'Tri Sukmono Joko PBS', '6', '4', 'Mutiara Gading Timur Blok H9 No. 5  Mustika Jaya, Kota Bekasi', '\'08174851431', '3', '\0');
INSERT INTO `master_karyawan` VALUES ('127', ',19609052001121003', 'Setyo Bimandoko,SE,M.Ak', '6', '4', 'Perum.Mahkota Simprug Blok A 5/No.8 Rt 03/015 Kel.Paninggilan Utara, Ciledug Tangerang Kota Tangerang', '\'0815 8504 1976', '8', '\0');
INSERT INTO `master_karyawan` VALUES ('128', ',196606081988091001', 'Sugiyanto,SH', '6', '5', 'Jl Basuki Rahmat Rt 10/10 Cipinang Besar Selatan, Jatinegara Jakarta Timur', '\'0813 1010 5511', '8', '\0');
INSERT INTO `master_karyawan` VALUES ('129', ',195902221988031001', 'Firdaus,S.Sos', '6', '4', null, null, null, null);
INSERT INTO `master_karyawan` VALUES ('130', ',196301201992031001', 'Muhammad Basri', '4', '6', '\'0813 1010 5511', '\'08126692063', '4', '\0');
INSERT INTO `master_karyawan` VALUES ('131', ',196808061988121002', 'Harsono, S.IP, M.Si', '6', '6', 'Jl. H.Ali I RT11 RW 4 No.22 Kel.Karang Tengah Kec.Kramat Jati Jakarta Timur', '\'0812 8086 562', '4', '\0');
INSERT INTO `master_karyawan` VALUES ('132', ',197305052005011002', 'Ausi kurnia Kawoco, SE, M.Ak', '5', '3', 'Jl Curug JayaIII/10 Rt07/01 Jati Cempaka Pondok gede Bekasi', '\'081381706669', '7', '\0');
INSERT INTO `master_karyawan` VALUES ('133', ',197206062000031001', 'Agus Setyo Wantoro,SH', '5', '4', 'Jl. Ulujami Raya No 50 B Rt 12/4 Pesanggrahan Jakarta Selatan', '\'08128687004', '7', '\0');
INSERT INTO `master_karyawan` VALUES ('134', ',196603161989011001', 'Tugimin,SIP', '5', '3', 'Kpg Rambut Rt05/09 kel pasirgunung selatan cimanggis depok', '\'081312227206', '10', '\0');
INSERT INTO `master_karyawan` VALUES ('135', ',198704092009122003', 'Kusmaningayu Wulandari, SE', '5', '3', 'Jl Batu Merah I No 7 F Rt 004/Rw 02, Pejaten Timur Pasar Minggu, Jakarta', '\'0813 8652 0060', '10', '\0');
INSERT INTO `master_karyawan` VALUES ('136', ',108309212008122002', 'Herlina Corina,SE', '5', '3', 'Jl. Pakubuwono No. 6 Karawaci, Tangerang', '\'087771248824', '10', '\0');
INSERT INTO `master_karyawan` VALUES ('137', ',196504181994031003', 'Dede Rudiana,S.Sos, M.Si', '5', '5', 'Jl. Utan Panjang III No. 16 RT 008/05 Kel. Utan Panjang Kec. Kemayoran, Jakarta Pusat', '\'08585560096', '2', '\0');
INSERT INTO `master_karyawan` VALUES ('138', ',1968072319900112001', 'Yuliafni,S.S', '5', '3', 'Jl. Villa Dago Resort Alam Asri 2 Blok I 1/15 Pamulang', '\'081314123334', '8', '\0');
INSERT INTO `master_karyawan` VALUES ('139', ',1984070320080110006', 'Ari Fitria Wibowo, S.Kom', '5', '3', 'Jl. Arridho Perumahan Muslim No. 1 Cilodong, Kota Depok', '\'085777779818', '2', '\0');
INSERT INTO `master_karyawan` VALUES ('140', ',196403131987032001', 'Rosiyanti, S.Pd', '5', '5', 'Pesona Jati Asih Permai Blok B1 No. 12 Jati Asih, Bekasi Selatan', '\'082113108565', '8', '\0');
INSERT INTO `master_karyawan` VALUES ('141', ',196605251988121001', 'Budiyono, S.Sos', '5', '3', null, null, null, null);
INSERT INTO `master_karyawan` VALUES ('142', ',198307102108121002', 'Aditya Wicaksono, S.Sos', '5', '3', null, null, null, null);
INSERT INTO `master_karyawan` VALUES ('143', ',196307111990011001', 'Makmun Ali S.Pd', '5', '4', 'Jl. Chairil Anwar Rt 02/02 No. 2 Kreo-Larangan ,Tangerang', '\'0813 1412 2547', '2', '\0');
INSERT INTO `master_karyawan` VALUES ('144', ',196605251988121001', 'Budiyono, S.Sos', '5', '3', null, null, null, null);
INSERT INTO `master_karyawan` VALUES ('145', ',106204231982101001', 'Chaidir', '7', '5', 'Jl. Masjid Al Mutaqien No. 1 Jakarta Selatan', '\'081281006123', '10', '\0');
INSERT INTO `master_karyawan` VALUES ('146', ',197812192009121002', 'Fani Arimulya Nugraha,SKUM', '7', '2', 'Jl. Waru No 36 Rt. 04/02 Cilangkap, Jakarta Timur', '\'082168630953', '3', '\0');
INSERT INTO `master_karyawan` VALUES ('147', ',196009081984031002', 'Muntohar Edy Purbono', '7', '5', 'Taman Adiyasa Blok C15 No 13 Cikasungka Kec sokas tangerang', '\'081219060250', '8', '\0');
INSERT INTO `master_karyawan` VALUES ('148', ',196010101981011001', 'Marsono,SPd', '7', '4', 'Jl. Puyuh 2 Blok F No 110 Bekasi Timur, Bekasi', '\'081281147550', '3', '\0');
INSERT INTO `master_karyawan` VALUES ('149', ',196809041988121001', 'Rudy Restu,S.Akt', '7', '4', 'Jl. Pulo Indah raya No.14 RT 12 RW 3 Kel.Petir Kec.Cipondoh Kota Tangerang', '\'08128806023', '3', '\0');
INSERT INTO `master_karyawan` VALUES ('150', ',196512131987031001', 'Subiantoro', '7', '3', 'Perumahan Citra Raya  Blok E.17/49   Cikupa Tangerang (Raflesia)', '\'081284370731', '7', '\0');
INSERT INTO `master_karyawan` VALUES ('151', ',195804121988021001', 'Muhammad Ansori, Sm.Hk', '7', '4', null, null, null, null);
INSERT INTO `master_karyawan` VALUES ('152', ',196404111988022', 'Tini Lestari,BA', '8', '4', 'Srengseng Sawah RT 001/06 Jagakarsa Jakarta Selatan', '\'081250109760', '4', '\0');
INSERT INTO `master_karyawan` VALUES ('153', ',196702061900032', 'Kori Isniasari', '8', '2', 'Jl. Cempaka Warna Rt 002/04 Cempaka Putih Timur Jakarta Pusat ', '\'081285213129', '3', '\0');
INSERT INTO `master_karyawan` VALUES ('154', ',195903031984031003', 'Joko Indriatno, SE', '8', '3', null, null, null, null);
INSERT INTO `master_karyawan` VALUES ('155', '198406142010121004', 'Eldhani Achdijalsjah, SE', '3', '3', 'Jl. Kenanga Blok C G Nomor 03 Kemang Pratama 5 Bekasi', '01808530666', '10', '\0');
INSERT INTO `master_karyawan` VALUES ('156', '197511052009121001', 'Yanto Susanto, S.Kom', '5', '3', 'Vila Bintaro Regenci Blok G IV N0 27 Pondok Aren Tangsel', '081293790418', '7', '\0');
INSERT INTO `master_karyawan` VALUES ('157', '195911291987031003', 'Drs, Pandji Dwi Prasetyo, MBA, MPA', '4', '9', 'Jl. Zamrud II/A-14 Cilandak Barat Cileduk Jakarta Selatan', '0217662483', '10', '\0');

-- ----------------------------
-- Table structure for master_kode
-- ----------------------------
DROP TABLE IF EXISTS `master_kode`;
CREATE TABLE `master_kode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `id parent` int(11) DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_kode
-- ----------------------------
INSERT INTO `master_kode` VALUES ('1', '100', 'Temuan Ketidakpatuhan Terhadap Peraturan Perundang-Undangan', null, '1');
INSERT INTO `master_kode` VALUES ('2', '200', 'Temuan Kelemahan Sistem Pengendalian Intern', null, '1');
INSERT INTO `master_kode` VALUES ('3', '300', 'Temuan 3E (Efektif, Efisien, dan Ekonomis)', null, '1');
INSERT INTO `master_kode` VALUES ('4', '1.01.', 'Kerugian negara/daerah atau kerugian negara/daerah yang terjadi pada perusahaan milik negara/daerah.', '1', '2');
INSERT INTO `master_kode` VALUES ('5', '1.02.', 'Potensi kerugian negara/daerah atau kerugian negara/daerah yang terjadi pada perusahaan milik negara/daerah.', '1', '2');
INSERT INTO `master_kode` VALUES ('6', '1.03.', 'Kekurangan penerimaan negara/daerah atau perusahaan milik negara/daerah', '1', '2');
INSERT INTO `master_kode` VALUES ('7', '1.04.', 'Administrasi', '1', '2');
INSERT INTO `master_kode` VALUES ('8', '1.05.', 'Indikasi Tindak Pidana', '1', '2');
INSERT INTO `master_kode` VALUES ('9', '2.01.', 'Kelemahan sistem pengendalian akuntansi dan pelaporan', '2', '2');
INSERT INTO `master_kode` VALUES ('10', '2.02.', 'Kelemahan sistem pengendalian pelaksanaan anggaran dan belanja', '2', '2');
INSERT INTO `master_kode` VALUES ('11', '2.03.', 'Kelemahan struktur pengendalian intern', '2', '2');
INSERT INTO `master_kode` VALUES ('12', '3.01.', 'Ketidakhematan/pemborosan/ketidakekonomisan', '3', '2');
INSERT INTO `master_kode` VALUES ('13', '3.02.', 'Ketidakefisienan', '3', '2');
INSERT INTO `master_kode` VALUES ('14', '3.03.', 'Ketidakefektifan', '3', '2');
INSERT INTO `master_kode` VALUES ('15', '1.01.01.', 'Belanja dan/atau pengadaan barang/jasa aktif', '4', '3');
INSERT INTO `master_kode` VALUES ('16', '1.01.02.', 'Rekanan pengadaan barang/jasa tidak menyelesaikan pekerjaan', '4', '3');
INSERT INTO `master_kode` VALUES ('17', '1.01.03.', 'Kekurangan volume pekerjaan dan/atau barang', '4', '3');
INSERT INTO `master_kode` VALUES ('18', '1.01.04.', 'Kelebihan pembayaran selain kekurangan volume pekerjaan dan/atau baran', '4', '3');
INSERT INTO `master_kode` VALUES ('19', '1.01.05.', 'Pemahalan harga (Mark up)', '4', '3');
INSERT INTO `master_kode` VALUES ('20', '1.01.06.', 'Penggunaan uang/barang untuk kepentingan pribadi', '4', '3');
INSERT INTO `master_kode` VALUES ('21', '1.01.07.', 'Pembayaran honorarium dan/atau biaya perjalanan dinas ganda dan/atau melebihi standar yang ditetapkan', '4', '3');
INSERT INTO `master_kode` VALUES ('22', '1.01.08.', 'Spesifikasi barang/jasa yang diterima tidak sesuai dengan kontrak', '4', '3');
INSERT INTO `master_kode` VALUES ('23', '1.01.09.', 'Belanja tidak sesuai atau melebihi ketentuan', '4', '3');
INSERT INTO `master_kode` VALUES ('24', '1.01.10.', 'Pengembalian pinjaman/piutang atau dana bergurlir macet', '4', '3');
INSERT INTO `master_kode` VALUES ('25', '1.01.11.', 'Kelebihan penetapan dan pembayaran restitusi pajak atau penetapan kompensasi kerugian', '4', '3');
INSERT INTO `master_kode` VALUES ('26', '1.01.12.', 'Penjualan/pertukaran/penghapusan aset negara/daerah tidak sesuai ketentuan dan merugikan negara/daerah', '4', '3');
INSERT INTO `master_kode` VALUES ('27', '1.01.13.', 'Pengenaan ganit kerugian negara belum/tidak dilaksanakan sesuai ketentuan', '4', '3');
INSERT INTO `master_kode` VALUES ('28', '1.01.14.', 'Entitas belum/tidak melaksanakan tuntutan perbendaharaan (TP) sesuai ketentuan', '4', '3');
INSERT INTO `master_kode` VALUES ('29', '1.01.15.', 'Penghapusan hak tagih tidak sesuai ketentuan', '4', '3');
INSERT INTO `master_kode` VALUES ('30', '1.01.16.', 'Pelanggaran ketentuan pemberian diskon penjualan', '4', '3');
INSERT INTO `master_kode` VALUES ('31', '1.01.17.', 'Penentuan HPP terlalu rendah sehingga penentuan harga jual lebih rendah dari seharusnya', '4', '3');
INSERT INTO `master_kode` VALUES ('32', '1.01.18.', 'Jaminan pelaksanaan dalam pelaksanaan pekerjaan, pemanfaatan barang dan pemberian fasilitas tidak dapat dicairkan', '4', '3');
INSERT INTO `master_kode` VALUES ('33', '1.01.19.', 'Penyetoran penerimaan negara/daerah dengan bukti fiktif', '4', '3');
INSERT INTO `master_kode` VALUES ('34', '1.02.01.', 'Kelebihan pembayaran dalam pengadaan barang/jasa tetapi pembayaran pekerhaan belum dilakukan sebagian atau seluruhnya', '5', '3');
INSERT INTO `master_kode` VALUES ('35', '1.02.02.', 'Rekanan belum melaksanakan kewajiban pemeliharaan barang hasil', '5', '3');
INSERT INTO `master_kode` VALUES ('36', '1.02.03.', 'Aset dikuasai pihak lain', '5', '3');
INSERT INTO `master_kode` VALUES ('37', '1.02.04.', 'Pembelian aset yang berstatus sengketa', '5', '3');
INSERT INTO `master_kode` VALUES ('38', '1.02.05.', 'Aset tidak diketahui keberadaannya', '5', '3');
INSERT INTO `master_kode` VALUES ('39', '1.02.06.', 'Pemberian jaminan pelaksanaan dalam pelaksanaan pekerjaan, pemanfaatan barang dan pemberian fasilitas tidak sesuai ketentuan', '5', '3');
INSERT INTO `master_kode` VALUES ('40', '1.02.07.', 'Pihak ketiga belum melaksankan kewajiban untuk menyerahkan aset kepada negara/daerah', '5', '3');
INSERT INTO `master_kode` VALUES ('41', '1.02.08.', 'Piutang/pinjaman atau dana bergulir yang berpotensi tidak tertagih', '5', '3');
INSERT INTO `master_kode` VALUES ('42', '1.02.09.', 'Penghapusan piutang tidak sesuai ketentuan', '5', '3');
INSERT INTO `master_kode` VALUES ('43', '1.02.10.', 'Pencairan anggaran pada akhir tahun anggaran untuk pekerjaan yang belum selesai', '5', '3');
INSERT INTO `master_kode` VALUES ('44', '1.03.01.', 'Penerimaan negara/daerah atau denda keterlambatan pekerjaan belum/tidak ditetapkan dipungut/diterima/disetor ke kas negara/daerah aau perusahaan milik negara/daerah', '6', '3');
INSERT INTO `master_kode` VALUES ('45', '1.03.02.', 'Penggunaan langsung penerimaan negara/daerah', '6', '3');
INSERT INTO `master_kode` VALUES ('46', '1.03.03.', 'Dana perimbangan yang telah ditetapkan belum masuk ke kas daerah', '6', '3');
INSERT INTO `master_kode` VALUES ('47', '1.03.04.', 'Penerimaan negara/daerah diterima atau digunakan oleh instansi yang tidak berhak', '6', '3');
INSERT INTO `master_kode` VALUES ('48', '1.03.05.', 'Pengenaan tarif pajak/PNBP lebih rendah dari ketentuan', '6', '3');
INSERT INTO `master_kode` VALUES ('49', '1.03.06.', 'Koreksi perhitungan bagi hasil dengan KKS', '6', '3');
INSERT INTO `master_kode` VALUES ('50', '1.03.0.7.', 'Kelebihan pembayaran subsidi oleh pemerintah', '6', '3');
INSERT INTO `master_kode` VALUES ('51', '1.04.01.', 'Pertanggungjawaban tidak akuntabel (bukti tidak lengkap/tidak valid)', '7', '3');
INSERT INTO `master_kode` VALUES ('52', '1.04.02.', 'Pekerjaan dilaksanakan mendahului kontrak atau penetapan anggaran', '7', '3');
INSERT INTO `master_kode` VALUES ('53', '1.04.03.', 'Proses pengadaan barang/jasa tidak sesuai ketentuan (tidak menimbulkan kerugian negara)', '7', '3');
INSERT INTO `master_kode` VALUES ('54', '1.04.04.', 'Pemecahan kontrak untuk menghindari pelelangan', '7', '3');
INSERT INTO `master_kode` VALUES ('55', '1.04.05.', 'Pelaksanaan leleang secara performa ', '7', '3');
INSERT INTO `master_kode` VALUES ('56', '1.04.06.', 'Penyimpangan terhadap peraturan perundang-undangan bidang pengelolaan perlengkapan atau barang milik negara/daerah/perusahaan', '7', '3');
INSERT INTO `master_kode` VALUES ('57', '1.04.07.', 'Penyimpangan terhadap peraturan perundang-undangan bidang tertentu lainnya seperti kehutanan, pertambangan, perpajakan, dll.', '7', '3');
INSERT INTO `master_kode` VALUES ('58', '1.04.08.', 'Koreksi perhitungan subsidi/kewajiban pelayanan umum', '7', '3');
INSERT INTO `master_kode` VALUES ('59', '1.04.09.', 'Pembentukan cadangan piutang, perhitungan penyusutan atau amortisasi tidak sesuai ketentuan', '7', '3');
INSERT INTO `master_kode` VALUES ('60', '1.04.10.', 'Penyetoran penerimaan negara/daerah atau kas di bendaharawan ke kas negara/daerah melebihi batas waktu yang ditentukan', '7', '3');
INSERT INTO `master_kode` VALUES ('61', '1.04.11.', 'Pertanggungjawaban/penyetoran uang persedian melebihi batas waktu yang ditentukan ', '7', '3');
INSERT INTO `master_kode` VALUES ('62', '1.04.12.', 'Sisa kas di bendara pengeluaran akhir tahuna anggaran belum/tidak disetor ke kas negara/daerah', '7', '3');
INSERT INTO `master_kode` VALUES ('63', '1.04.13.', 'Pengeluaran investasi pemerintah tidak didukung bukti yang sah', '7', '3');
INSERT INTO `master_kode` VALUES ('64', '1.04.14.', 'Kepemilikian aset tidak/belum didukung bukti yang sah', '7', '3');
INSERT INTO `master_kode` VALUES ('65', '1.04.15.', 'Pengalihan anggaran antar MAK tidak sah', '7', '3');
INSERT INTO `master_kode` VALUES ('66', '1.04.16.', 'Pelampauan pagu anggaran', '7', '3');
INSERT INTO `master_kode` VALUES ('67', '1.05.01.', 'Indikasi tindak pidana korupsi', '8', '3');
INSERT INTO `master_kode` VALUES ('68', '1.05.02.', 'Indikasi tindak pidana perbankan', '8', '3');
INSERT INTO `master_kode` VALUES ('69', '1.05.03.', 'Indikasi tindak pidana perpajakan', '8', '3');
INSERT INTO `master_kode` VALUES ('70', '1.05.04.', 'Indikasi tindak pidana kepabeanan', '8', '3');
INSERT INTO `master_kode` VALUES ('71', '1.05.05.', 'Indikasi tindak pidana kehutanan', '8', '3');
INSERT INTO `master_kode` VALUES ('72', '1.05.06.', 'Indikasi tindak pidana pasar modal', '8', '3');
INSERT INTO `master_kode` VALUES ('73', '1.05.07.', 'Indikasi tindak pidana khusus lainnya', '8', '3');
INSERT INTO `master_kode` VALUES ('74', '2.01.01.', 'Pencatatan tidak/belum dilakuakn atau tidak akurat', '9', '3');
INSERT INTO `master_kode` VALUES ('75', '2.01.02.', 'Proses penyusunan laporan tidak sesuai ketentuan', '9', '3');
INSERT INTO `master_kode` VALUES ('76', '2.01.03.', 'Entitas terlambat menyampaikan laporan', '9', '3');
INSERT INTO `master_kode` VALUES ('77', '2.01.04.', 'Sistem informasi akuntansi dan pelaporan tidak memadai', '9', '3');
INSERT INTO `master_kode` VALUES ('78', '2.01.05.', 'Sistem informasi akuntansi dan pelaporan tidak memadai', '9', '3');
INSERT INTO `master_kode` VALUES ('79', '2.02.01.', 'Perencanaan kegiatan tidak memadai', '10', '3');
INSERT INTO `master_kode` VALUES ('80', '2.02.02.', 'Mekanisme pemungutan, penyetoran dan pelaporan serta penggunaan penerimaan negara/daerah/perusahaan dan hibah tidak sesuai ketentuan', '10', '3');
INSERT INTO `master_kode` VALUES ('81', '2.02.03.', 'Penyimpangan terhadap peraturan perundang-undangan bidang teknis tertentu atau ketentuan intern organisasi yang diperiksa tentang pendapatan dan belanja', '10', '3');
INSERT INTO `master_kode` VALUES ('82', '2.02.04.', 'Pelaksanaan belanja di luar mekanisme APBN/APBD', '10', '3');
INSERT INTO `master_kode` VALUES ('83', '2.02.05.', 'Penetapan/pelaksanaan kebijakan tidak tepat atau belum dilakukan berakibat hilangnya potensi penerimaan/pendapatan', '10', '3');
INSERT INTO `master_kode` VALUES ('84', '2.02.06.', 'Penetapan/pelaksanaan kebijakan tidak tepat atau belum dilakukan berakibat peningkatan biaya/belanja', '10', '3');
INSERT INTO `master_kode` VALUES ('85', '2.02.07.', 'Kelemahan pengelolaan fisik aset', '10', '3');
INSERT INTO `master_kode` VALUES ('86', '2.03.01.', 'Entitas tidak memiliki SOP yang formal untuk suatu prosedur atau keseluruhan prosedur', '11', '3');
INSERT INTO `master_kode` VALUES ('87', '2.03.02.', 'SOP yang ada pada entitas tidak berjalan secara optimal atau tidak ditaati', '11', '3');
INSERT INTO `master_kode` VALUES ('88', '2.03.03.', 'Entitas tidak memiliki satuan pengawas intern', '11', '3');
INSERT INTO `master_kode` VALUES ('89', '2.03.04.', 'Satuan pengawas intern yang ada tidak memadai atau tidak berjalan optimal', '11', '3');
INSERT INTO `master_kode` VALUES ('90', '2.03.05.', 'Tidak ada pemisahaan tugas dan fungsi yang memadai ', '11', '3');
INSERT INTO `master_kode` VALUES ('91', '3.01.01.', 'Pengadaan barang/jasa melebihi kebutuhan', '12', '3');
INSERT INTO `master_kode` VALUES ('92', '3.01.02.', 'Penetapan kualtias dan kuantitas barang/jasa yang digunakan tidak sesuai standar', '12', '3');
INSERT INTO `master_kode` VALUES ('93', '3.01.03.', 'Pemborosan keuangan negara/daerah/perusahaan atau kemahalan harga', '12', '3');
INSERT INTO `master_kode` VALUES ('94', '3.02.01.', 'Pengunaan kuantitas input untuk satu satuan output lebih besar/tinggi dari yang seharusnya', '12', '3');
INSERT INTO `master_kode` VALUES ('95', '3.02.02.', 'Penggunaan kualitas input untuk satu satuan output lebih tinggi dari seharusnya', '12', '3');
INSERT INTO `master_kode` VALUES ('96', '3.03.01.', 'Penggunaan anggaran tidak tepat sasaran/tidak sesuai peruntukan', '13', '3');
INSERT INTO `master_kode` VALUES ('97', '3.03.02.', 'Pemanfaatan barang/jasa dilakukan tidak sesuai dengan rencana yang ditetapkan', '13', '3');
INSERT INTO `master_kode` VALUES ('98', '3.03.03.', 'Barang yang dibeli belum/tidak dapat dimanfaatkan', '13', '3');
INSERT INTO `master_kode` VALUES ('99', '3.03.04.', 'Pemanfaatan barang/jasa tidak berdampak terhadap pencapaian tujuan organisasi', '13', '3');
INSERT INTO `master_kode` VALUES ('100', '3.03.05.', 'Pelaksanaan kegiatan terlambat/terhambat sehingga mempengaruhi pencapaian tujuan organisasi', '13', '3');
INSERT INTO `master_kode` VALUES ('101', '3.03.06.', 'Pelayanan kepada maasyarakat tidak optimal', '13', '3');
INSERT INTO `master_kode` VALUES ('102', '3.03.07.', 'Fungsi atau tugas instansi yang diperiksa tidak diselenggarakan dengan baik termasuk target penerimaan tidak tercapai', '13', '3');
INSERT INTO `master_kode` VALUES ('103', '3.03.08.', 'Penggunaan biaya promosi/pemasaraan tidak efektif', '13', '3');

-- ----------------------------
-- Table structure for master_pengumuman
-- ----------------------------
DROP TABLE IF EXISTS `master_pengumuman`;
CREATE TABLE `master_pengumuman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `pengumuman` text NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_pengumuman
-- ----------------------------
INSERT INTO `master_pengumuman` VALUES ('1', 'Launching SMART APPLICATION INFORMATION', '<p>Kepada Yth: Auditor dan Staf Inspektorat III</p>\r\n<p>Sejak tanggal 10 Juni 2016, aplikasi ini resmi kita gunakan sebagai bentuk keinginan kita untuk menggunakan IT dalam membantu pelaksanaan pengawasan.</p>\r\n<p>Selamat menggunakan.</p>\r\n<p>Bravo</p>', '2016-06-10 14:01:48', '2017-11-15 08:21:44');
INSERT INTO `master_pengumuman` VALUES ('2', 'Sosialisasi Instrumen DAK/Sergu/Tamsil', '<p>Kepada:</p>\r\n<p>Bapak/Ibu Auditor Inspektorat III</p>\r\n<p>Hari ini tanggal 13 Juni 2016, di ruang sidang lantai VI akan diadakan sosialisasi instrumen pemantauan DAK/Sergu/Tamsil pada pukul 15.00 s.d selesai.</p>\r\n<p>Oleh karena itu, diharapkan kehadirannya tepat waktu. Terima kasih</p>', '2016-06-13 07:46:05', '2017-11-15 08:22:12');
INSERT INTO `master_pengumuman` VALUES ('3', 'RDK Konsolidasi Hasil Reviu RKAKL', '<p>Kepada: Yth. Tim Reviu RKAKL</p>\r\n<p>Seperti yang telah dilakukan pada tanggal 7 Agustus 2017, Kami mengingatkan, bahwa bapak/ibu tim reviu pada hari ini dan besok, masih melakukan kegiatan RDK Konsolidasi hasil Reviu.</p>\r\n<p>Mengingat pentinya acara tersebut, kami berharap bapak/ibu dapat melaksanakannya dengan baik.</p>\r\n<p>Terima kasih</p>', '2017-08-08 22:51:04', '2017-11-15 08:22:23');
INSERT INTO `master_pengumuman` VALUES ('4', 'Audit atas program PLPG', '<p>Sehubungan akan dilaksanakannya audit atas program PLPG, dari tanggal 10 s.d 16 September 2017, saya mengingatkan hal-hal sebagai berikut:</p>\r\n<ul>\r\n<li>Awali audit dengan memohon perlindungan Tuhan Yang Maha Esa.</li>\r\n<li>Pada saat temua awal, lakukan komitmen bersama dengan menandatangani Pakta Integritas.</li>\r\n<li>Ikuti program kerja audit yang telah ditetapkan, dan dibuktikan dengan kertas kerja audit sesuai dengan tahapan audit.</li>\r\n<li>Lakukan komunikasi audit dengan auditan secara santun tampa meningkalkan sikap independensi.</li>\r\n<li>Gunakan WA group untuk komunikasi temuan penting agar tidak terjadi treatmen yang berbeda atas kasus yang sama</li>\r\n</ul>\r\n<p>Demikian terima kasih atas perhatiannya, Selama bertugas, Bravo Inspektorat III</p>\r\n<p>Wassalam</p>', '2017-09-08 13:57:56', '2017-11-15 08:18:58');
INSERT INTO `master_pengumuman` VALUES ('5', 'Ekspose Hasil Audit', '<p>Kepada Yth. Auditor</p>\r\n<p>Sesuai Rencana, Pukul 14.00 s.d Selesai akan dilakukan kegiatan Ekspose Hasil Audit.</p>\r\n<p>Harap segera berkumpul dan siapkan bahan eksposenya</p>\r\n<p>Trims</p>', '2017-09-08 14:00:30', '2017-11-15 08:22:39');
INSERT INTO `master_pengumuman` VALUES ('6', 'EKSPOSE HASIL AUDIT', '<p>DIMOHON KEHADIRAN PARA AUDITOR INSPEKTORAT III, PADA KEGIATAN EKSPOSE HASIL AUDIT PADA :</p>\r\n<p>HARI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : SENIN</p>\r\n<p>TANGGAL&nbsp; : 18 SEPTEMBER 2017</p>\r\n<p>WAKTU&nbsp;&nbsp;&nbsp;&nbsp; : 13.00 - 15.00 WIB</p>\r\n<p>TEMPAT&nbsp;&nbsp;&nbsp; : RUANG SIDANG LT. 6 GEDUNG ITJEN KEMDIKBUD</p>\r\n<p>&nbsp;</p>\r\n<p>ATAS KEHADIRANNYA DIUCAPKAN TERIMA KASIH.</p>', '2017-09-15 10:01:36', '2017-11-15 08:22:47');
INSERT INTO `master_pengumuman` VALUES ('7', 'KOMPILASI HASIL AUDIT', '<p>HARI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: KAMIS - SABTU 2017</p>\r\n<p>TANGGAL&nbsp;&nbsp;&nbsp;&nbsp; : 5 - 7 OKTOBER 2017</p>\r\n<p>TEMPAT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : P4TK BISNIS DAN PARIWISATA</p>\r\n<p>KEPADA PARA AUDITOR YG TELAH DITUNJUK MOHON HADIR TEPAT PADA WAKTUNYA</p>', '2017-10-05 15:31:28', '2017-11-15 08:22:56');
INSERT INTO `master_pengumuman` VALUES ('8', 'AUDIT TUJUAN TERTENTU ATAS KEPATUHAN TINJUT HASIL TEMUAN BPK-RI TAHUN 20007-2017 D KEMDIKBUD', '<p>KEGIATAN INI DIIKUTI OLEH 17 AUDITOR INSPEKTORAT III</p>', '2017-10-05 18:47:32', '2017-11-15 08:23:12');

-- ----------------------------
-- Table structure for master_peran
-- ----------------------------
DROP TABLE IF EXISTS `master_peran`;
CREATE TABLE `master_peran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peran` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_peran
-- ----------------------------
INSERT INTO `master_peran` VALUES ('2', 'Kelompok I');
INSERT INTO `master_peran` VALUES ('3', 'Kelompok II');
INSERT INTO `master_peran` VALUES ('4', 'Kelompok III');
INSERT INTO `master_peran` VALUES ('5', 'Kasubag');
INSERT INTO `master_peran` VALUES ('6', 'BPP');
INSERT INTO `master_peran` VALUES ('7', 'Kelompok IV');
INSERT INTO `master_peran` VALUES ('8', 'Kelompok V');
INSERT INTO `master_peran` VALUES ('10', 'Kelompok VI');
INSERT INTO `master_peran` VALUES ('11', 'Auditor');
INSERT INTO `master_peran` VALUES ('12', 'Staff TU');

-- ----------------------------
-- Table structure for master_role
-- ----------------------------
DROP TABLE IF EXISTS `master_role`;
CREATE TABLE `master_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_role
-- ----------------------------
INSERT INTO `master_role` VALUES ('1', 'super admin');
INSERT INTO `master_role` VALUES ('2', 'administrator');
INSERT INTO `master_role` VALUES ('3', 'anggota');

-- ----------------------------
-- Table structure for master_sambutan
-- ----------------------------
DROP TABLE IF EXISTS `master_sambutan`;
CREATE TABLE `master_sambutan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kata` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_sambutan
-- ----------------------------
INSERT INTO `master_sambutan` VALUES ('1', '<h3>Assalamualaikum wr wb.</h3><p style=\"text-align:justify;\">Era modern menuntut penggunaan informasi dan teknologi dalam pengelolaan suatu organisasi. Sebagai bentuk komitmen Inspektorat III dalam mewujukan organisasi pengawasan modern, maka sejak tahun 2016 memanfaatkan \"Smart Aplication Information\". Aplikasi diharapkan dapat mempercepat dan meningkatkan akurasi informasi di lingkungan Inspektorat III, tidak hanya berhubungan dengan aspek pengawasan saja tetapi juga terkait dengan penatausahaan Inspektorat III. &nbsp;Akhirnya kami berharap aplikasi ini dapat dimanfaatkan semaksimal mungkin oleh semua pihak yang berkepentingan dalam upaya peningkatan akuntabilitas kinerja organisasi. Wassalam, Terima Kasih</p>');

-- ----------------------------
-- Table structure for master_user
-- ----------------------------
DROP TABLE IF EXISTS `master_user`;
CREATE TABLE `master_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status_pegawai` int(255) DEFAULT NULL,
  `status_aktivasi` int(11) DEFAULT NULL,
  `id_reff` int(11) DEFAULT NULL,
  `id_role_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_user
-- ----------------------------
