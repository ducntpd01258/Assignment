-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 01:36:11.019




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV int(10)  NOT NULL,
    TenNV varchar(50)  NOT NULL,
    Ngaysinh datetime  NOT NULL,
    Gioitinh char(50)  NOT NULL,
    Email varchar(50)  NOT NULL,
    Mucluong money  NOT NULL,
    Maphong int  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: Tphonban
CREATE TABLE Tphonban (
    Maphong int  NOT NULL,
    Tenphong varchar(45)  NOT NULL,
    CONSTRAINT Tphonban_pk PRIMARY KEY  (Maphong)
)
;









-- foreign keys
-- Reference:  TNhanvien_Tphonban (table: TNhanvien)

ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_Tphonban 
    FOREIGN KEY (Maphong)
    REFERENCES Tphonban (Maphong)
;





-- End of file.

