-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";


-- Veritabanında tabloyu olustur

CREATE TABLE kayitlar (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  isim VARCHAR(100) NOT NULL,
  soyisim VARCHAR(100) NOT NULL,
  kangrubu VARCHAR(5) NOT NULL,
  ceptel VARCHAR(13) NOT NULL,
  adres VARCHAR(400) NOT NULL
);


-- Birkac ornek kayit girisi yap

INSERT INTO kayitlar (isim, soyisim, kangrubu, ceptel, adres) VALUES
	("Murat Can", "Kurt", "0Rh+","+905443034910", "Öğretmenevleri Mh. Antalya"),
	("Ali", "Kamil", "ABRh+","+905441234567", "Bahçelievler Mh. Afyonkarahisar");