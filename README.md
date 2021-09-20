Spring MVC (no boot) kayıt defteri uygulaması

-Ana sayfa iki adet lik barındırır: Kayıt Listesi ve Yeni Kayıt

-Kayıt Listesi veri tabanında bulunan kayıtları listeler, herhangi bir kayıda tıklanarak güncelenebilir, silinebiir.

-Yeni Kayıt veri tabanına doldurulan formdaki isim, telefon adres gibi bilgileri kaydeder.


Projede şimdilik 4 branch bulunuyor,

-master branch Java based config ile yapıldı ve front end kısmında stilizasyon yapılmadı

-xml_based_config branchda proje xml based config olacarak yeniden düzenlendi ve front endden veri girişi yapıldığında veritabanına Türkçe karakterlerin kodlaması ile ilgili sorun düzeltildi.

-frontend_css_bootstrap_xml_conf branchda bir takım düzeltmelere ek olarak front end tarafında css, js ve bootstrap kullanılarak stilizasyon yapıldı,

-xml_based_add_service_layer_pagination_func branch da ise service katmanı eklenerek controller ve DAO katmanları arasında çalışarak bir takım business işlemlerini ve pagination işlemlerini düzenlemesi planlandı.


Not: 

Proje mysql veritabanı ile çalışmaktadır, şimdilik veritabanı bağlantı ayarları main/resurces içindeki application.properties dosyasından şu ayarları okumaktadır:

url: jdbc:mysql://localhost:3306

veritabanı adı: kayit_defteri

kullanıcı adı: murat

password: 12345


veritabanı tablosu:


CREATE TABLE kayitlar (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  isim VARCHAR(100) NOT NULL,
  soyisim VARCHAR(100) NOT NULL,
  kangrubu VARCHAR(5) NOT NULL,
  ceptel VARCHAR(13) NOT NULL,
  adres VARCHAR(400) NOT NULL
);
