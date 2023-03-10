PGDMP                         z            sqlproje    15.0    15.0 l    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    25470    sqlproje    DATABASE     |   CREATE DATABASE sqlproje WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE sqlproje;
                postgres    false                        1255    40981    delete_ucretli()    FUNCTION     ?   CREATE FUNCTION public.delete_ucretli() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

declare
delete_ucretli_oyun integer;

begin
delete_ucretli_oyun:=old.oyunid;

delete from oyun where oyunid=delete_ucretli_oyun;


return new;

end;
$$;
 '   DROP FUNCTION public.delete_ucretli();
       public          postgres    false                       1255    40989    delete_ucretsiz()    FUNCTION     ?   CREATE FUNCTION public.delete_ucretsiz() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

declare
delete_ucretsiz_oyun integer;

begin
delete_ucretsiz_oyun:=old.oyunid;

delete from oyun where oyunid=delete_ucretsiz_oyun;


return new;

end;
$$;
 (   DROP FUNCTION public.delete_ucretsiz();
       public          postgres    false            ?            1255    40979    eklenenhesap()    FUNCTION     ?  CREATE FUNCTION public.eklenenhesap() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

BEGIN

	INSERT INTO eklenenhesap ("hesap","hesapadi", "hesapsoyadi","mail","oyunsayi","sayiarkadas","para","profil","magaza","destek","envanter","kutuphane")
		VALUES (NEW."hesapid", NEW."ad", NEW."soyad",NEW."mail",NEW."oyunlar",NEW."arkadaslar",NEW."bakiye",NEW."profilid",NEW."magazaid",NEW."destekid",NEW."envanterid",NEW."kutuphaneid");
		
RETURN NEW;
END;

$$;
 %   DROP FUNCTION public.eklenenhesap();
       public          postgres    false            ?            1255    32771    fiyatarttir()    FUNCTION       CREATE FUNCTION public.fiyatarttir() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
tfiyat integer;
begin
tfiyat:=(select fiyat from oyun order by oyunid desc limit 1);
update oyunsiparis set toplamoyunfiyat=toplamoyunfiyat+tfiyat;
return new;
end;
$$;
 $   DROP FUNCTION public.fiyatarttir();
       public          postgres    false            ?            1255    32783 
   gbarttir()    FUNCTION     R  CREATE FUNCTION public.gbarttir() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
gbtoplam integer;
begin
gbtoplam:=(select oyungb from oyun order by oyunid desc limit 1 );
update oyunsiparis set toplamgb=toplamgb+gbtoplam; --where OyunSiparisID = (select from oyunsiparis order by OyunSiparisID desc limit 1)
return new;
end;
$$;
 !   DROP FUNCTION public.gbarttir();
       public          postgres    false            ?            1255    25826    hesapgetir(character varying)    FUNCTION     8  CREATE FUNCTION public.hesapgetir(tmp character varying) RETURNS TABLE(hesapidsutun integer, hesapad character varying, hesapsoyad character varying, hesapmail character varying)
    LANGUAGE plpgsql
    AS $$
begin
	Return Query
	Select
	hesapid,
	ad,
	soyad,
	mail
	From
		hesap
	where
		ad like tmp;
end;
$$;
 8   DROP FUNCTION public.hesapgetir(tmp character varying);
       public          postgres    false            ?            1255    25821    indirim(double precision)    FUNCTION     ?   CREATE FUNCTION public.indirim(fiyat double precision) RETURNS double precision
    LANGUAGE plpgsql
    AS $$
begin
Fiyat:=Fiyat-Fiyat*0.2;
return Fiyat;
end;
$$;
 6   DROP FUNCTION public.indirim(fiyat double precision);
       public          postgres    false            ?            1255    32796    oyun_sayi_log()    FUNCTION     ?   CREATE FUNCTION public.oyun_sayi_log() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

begin
	INSERT INTO "hesaplog" ("hesap","oyunsayi")
 		values (new."hesapid",new."oyunlar");
	return new;
end;
$$;
 &   DROP FUNCTION public.oyun_sayi_log();
       public          postgres    false            ?            1255    32785    oyun_update()    FUNCTION     ?   CREATE FUNCTION public.oyun_update() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

begin
	INSERT INTO "oyunhesap" ("HesapID","oyunsayisi")
 		values (new."hesap",new."oyunsayi");
	return new;
end;
$$;
 $   DROP FUNCTION public.oyun_update();
       public          postgres    false            ?            1255    32777    oyunsayisiarttir()    FUNCTION     P  CREATE FUNCTION public.oyunsayisiarttir() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
toplamoyunsayisi integer;
begin
toplamoyunsayisi:=(select count (*) from oyun);
update oyunsiparis set oyunsayisi=toplamoyunsayisi; --where OyunSiparisID = (select from oyunsiparis order by OyunSiparisID desc limit 1)
return new;
end;
$$;
 )   DROP FUNCTION public.oyunsayisiarttir();
       public          postgres    false                       1255    41003 '   puana_gore_oyun_getir(integer, integer)    FUNCTION     (  CREATE FUNCTION public.puana_gore_oyun_getir(len_from integer, len_to integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
declare
  puan_count integer;
begin
   select count(*) 
   into puan_count
   from oyun
   where oyunpuan between len_from and len_to;
   
   return puan_count;
end;
$$;
 N   DROP FUNCTION public.puana_gore_oyun_getir(len_from integer, len_to integer);
       public          postgres    false            ?            1255    40966    silinenhesap()    FUNCTION     ?  CREATE FUNCTION public.silinenhesap() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

BEGIN

	INSERT INTO silinenhesap ("hesap","hesapadi", "hesapsoyadi","mail","oyunsayi","sayiarkadas","para","profil","magaza","destek","envanter","kutuphane")
		VALUES (NEW."hesapid", NEW."ad", NEW."soyad",NEW."mail",NEW."oyunlar",NEW."arkadaslar",NEW."bakiye",NEW."profilid",NEW."magazaid",NEW."destekid",NEW."envanterid",NEW."kutuphaneid");
		
RETURN NEW;
END;

$$;
 %   DROP FUNCTION public.silinenhesap();
       public          postgres    false            ?            1255    25829 %   siparisadresigetir(character varying)    FUNCTION     _  CREATE FUNCTION public.siparisadresigetir(siparisadres character varying) RETURNS TABLE(idsiparis integer, siparisadi character varying, siparissoyadi character varying, siparisadresi character varying)
    LANGUAGE plpgsql
    AS $$
begin
	return query
	select
	siparisid,
	ad,
	soyad,
	adres
	from
	siparis
	where
	adres like siparisadres;
end;
$$;
 I   DROP FUNCTION public.siparisadresigetir(siparisadres character varying);
       public          postgres    false            ?            1259    25573    arkadas    TABLE     	  CREATE TABLE public.arkadas (
    "ArkadasID" integer NOT NULL,
    "CevrimiciArkadas" character varying(50),
    "CevrimdisiArkadas" character varying(50),
    "OyundaOlanlar" character varying(50),
    "GrupID" integer NOT NULL,
    "HesapID" integer NOT NULL
);
    DROP TABLE public.arkadas;
       public         heap    postgres    false            ?            1259    25578    destek    TABLE     ?   CREATE TABLE public.destek (
    "DestekID" integer NOT NULL,
    "TemsilciAdi" character varying(20) NOT NULL,
    "TemsilciDurumu" character varying(10) NOT NULL,
    "TemsilciSayisi" integer NOT NULL
);
    DROP TABLE public.destek;
       public         heap    postgres    false            ?            1259    40963    eklenenhesap    TABLE     ?  CREATE TABLE public.eklenenhesap (
    hesap integer NOT NULL,
    hesapadi character varying(50) NOT NULL,
    hesapsoyadi character varying(50) NOT NULL,
    mail character varying(100) NOT NULL,
    oyunsayi integer NOT NULL,
    sayiarkadas integer NOT NULL,
    para integer NOT NULL,
    profil integer NOT NULL,
    magaza integer NOT NULL,
    destek integer NOT NULL,
    envanter integer NOT NULL,
    kutuphane integer NOT NULL
);
     DROP TABLE public.eklenenhesap;
       public         heap    postgres    false            ?            1259    25583    envanter    TABLE     ?   CREATE TABLE public.envanter (
    "EnvanterID" integer NOT NULL,
    "ToplamDeger" integer,
    "OgeSayisi" integer,
    "Hediye" integer
);
    DROP TABLE public.envanter;
       public         heap    postgres    false            ?            1259    25588    envanteresya    TABLE     |   CREATE TABLE public.envanteresya (
    "EnvanterEsyaID" integer NOT NULL,
    "EsyaID" integer,
    "EnvanterID" integer
);
     DROP TABLE public.envanteresya;
       public         heap    postgres    false            ?            1259    25593    esya    TABLE     ?   CREATE TABLE public.esya (
    "EsyaID" integer NOT NULL,
    "EsyaAdi" character varying(30) NOT NULL,
    "Fiyat" integer,
    "PazarID" integer
);
    DROP TABLE public.esya;
       public         heap    postgres    false            ?            1259    25598    grup    TABLE     ?   CREATE TABLE public.grup (
    "GrupID" integer NOT NULL,
    "KisiSayisi" integer,
    "Yonetici" character varying(20) NOT NULL
);
    DROP TABLE public.grup;
       public         heap    postgres    false            ?            1259    25603    hesap    TABLE     ?  CREATE TABLE public.hesap (
    hesapid integer NOT NULL,
    ad character varying(20) NOT NULL,
    soyad character varying(20) NOT NULL,
    mail character varying(150) NOT NULL,
    oyunlar integer,
    arkadaslar integer,
    bakiye integer,
    profilid integer NOT NULL,
    magazaid integer NOT NULL,
    destekid integer NOT NULL,
    envanterid integer NOT NULL,
    kutuphaneid integer NOT NULL
);
    DROP TABLE public.hesap;
       public         heap    postgres    false            ?            1259    25608    kupon    TABLE     \   CREATE TABLE public.kupon (
    "KuponID" integer NOT NULL,
    "Yuzde" integer NOT NULL
);
    DROP TABLE public.kupon;
       public         heap    postgres    false            ?            1259    25613 	   kutuphane    TABLE     ?   CREATE TABLE public.kutuphane (
    "KutuphaneID" integer NOT NULL,
    "Oyunlar" character varying(50),
    "Yuklenenler" character varying(50),
    "OyunSayisi" integer
);
    DROP TABLE public.kutuphane;
       public         heap    postgres    false            ?            1259    25618    magaza    TABLE     ?   CREATE TABLE public.magaza (
    "MagazaID" integer NOT NULL,
    "OneCikanlar" character varying(50),
    "IndirimliOyun" character varying(20),
    "CokSatanlar" character varying(20)
);
    DROP TABLE public.magaza;
       public         heap    postgres    false            ?            1259    25623    oyun    TABLE     
  CREATE TABLE public.oyun (
    oyunid integer NOT NULL,
    oyunturu character varying(20) NOT NULL,
    oyunpuan integer,
    fiyat integer,
    elestiriler text NOT NULL,
    oyungb integer NOT NULL,
    sirketid integer NOT NULL,
    magazaid integer NOT NULL
);
    DROP TABLE public.oyun;
       public         heap    postgres    false            ?            1259    25630 	   oyunhesap    TABLE     ?   CREATE TABLE public.oyunhesap (
    "oyunhesapID" integer NOT NULL,
    "HesapID" integer NOT NULL,
    "OyunID" integer NOT NULL,
    oyunsayisi integer
);
    DROP TABLE public.oyunhesap;
       public         heap    postgres    false            ?            1259    25635    oyunkutuphanesi    TABLE     ?   CREATE TABLE public.oyunkutuphanesi (
    oyunkpid integer NOT NULL,
    "KutuphaneID" integer NOT NULL,
    "OyunID" integer NOT NULL
);
 #   DROP TABLE public.oyunkutuphanesi;
       public         heap    postgres    false            ?            1259    25640    oyunsiparis    TABLE     ?   CREATE TABLE public.oyunsiparis (
    "OyunSiparisID" integer NOT NULL,
    "SiparisID" integer,
    "OyunID" integer,
    oyunsayisi integer,
    toplamoyunfiyat integer,
    toplamgb integer
);
    DROP TABLE public.oyunsiparis;
       public         heap    postgres    false            ?            1259    25645    pazar    TABLE     ?   CREATE TABLE public.pazar (
    pazarid integer NOT NULL,
    esyasayisi integer,
    toplamfiyat integer,
    satistaolan character varying(10)
);
    DROP TABLE public.pazar;
       public         heap    postgres    false            ?            1259    25650    profil    TABLE     2  CREATE TABLE public.profil (
    "ProfilID" integer NOT NULL,
    "Durum" character varying(20) NOT NULL,
    "Hakkinda" character varying(100) NOT NULL,
    "Cinsiyet" character varying(5) NOT NULL,
    "Yas" integer NOT NULL,
    "Konum" character varying(20) NOT NULL,
    "PazarID" integer NOT NULL
);
    DROP TABLE public.profil;
       public         heap    postgres    false            ?            1259    25655    siparis    TABLE     ?   CREATE TABLE public.siparis (
    siparisid integer NOT NULL,
    kuponid integer,
    ad character varying(25),
    soyad character varying(25),
    adres character varying(100),
    oyunsayisi integer NOT NULL,
    tutar integer
);
    DROP TABLE public.siparis;
       public         heap    postgres    false            ?            1259    25660    sirket    TABLE     ?   CREATE TABLE public.sirket (
    "SirketID" integer NOT NULL,
    "Kurucu" character varying(20) NOT NULL,
    "CalisanSayisi" integer
);
    DROP TABLE public.sirket;
       public         heap    postgres    false            ?            1259    25765    ucretli    TABLE     ?   CREATE TABLE public.ucretli (
    oyunid integer NOT NULL,
    fiyat integer NOT NULL,
    tur character varying(20) NOT NULL,
    adi character varying(40) NOT NULL
);
    DROP TABLE public.ucretli;
       public         heap    postgres    false            ?            1259    25775    ucretsiz    TABLE     ?   CREATE TABLE public.ucretsiz (
    oyunid integer NOT NULL,
    tur character varying(20) NOT NULL,
    adi character varying(20) NOT NULL
);
    DROP TABLE public.ucretsiz;
       public         heap    postgres    false            ?          0    25573    arkadas 
   TABLE DATA                 public          postgres    false    214   L?       ?          0    25578    destek 
   TABLE DATA                 public          postgres    false    215   j?       ?          0    40963    eklenenhesap 
   TABLE DATA                 public          postgres    false    234   ?       ?          0    25583    envanter 
   TABLE DATA                 public          postgres    false    216   3?       ?          0    25588    envanteresya 
   TABLE DATA                 public          postgres    false    217   ډ       ?          0    25593    esya 
   TABLE DATA                 public          postgres    false    218   S?       ?          0    25598    grup 
   TABLE DATA                 public          postgres    false    219   ??       ?          0    25603    hesap 
   TABLE DATA                 public          postgres    false    220   ??       ?          0    25608    kupon 
   TABLE DATA                 public          postgres    false    221   ??       ?          0    25613 	   kutuphane 
   TABLE DATA                 public          postgres    false    222   O?       ?          0    25618    magaza 
   TABLE DATA                 public          postgres    false    223   .?       ?          0    25623    oyun 
   TABLE DATA                 public          postgres    false    224   ?       ?          0    25630 	   oyunhesap 
   TABLE DATA                 public          postgres    false    225   q?       ?          0    25635    oyunkutuphanesi 
   TABLE DATA                 public          postgres    false    226   ??       ?          0    25640    oyunsiparis 
   TABLE DATA                 public          postgres    false    227   r?       ?          0    25645    pazar 
   TABLE DATA                 public          postgres    false    228   
?       ?          0    25650    profil 
   TABLE DATA                 public          postgres    false    229   ɒ       ?          0    25655    siparis 
   TABLE DATA                 public          postgres    false    230   ??       ?          0    25660    sirket 
   TABLE DATA                 public          postgres    false    231   Ô       ?          0    25765    ucretli 
   TABLE DATA                 public          postgres    false    232   j?       ?          0    25775    ucretsiz 
   TABLE DATA                 public          postgres    false    233   ?       ?           2606    25577    arkadas arkadas_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.arkadas
    ADD CONSTRAINT arkadas_pkey PRIMARY KEY ("ArkadasID");
 >   ALTER TABLE ONLY public.arkadas DROP CONSTRAINT arkadas_pkey;
       public            postgres    false    214            ?           2606    25582    destek destek_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.destek
    ADD CONSTRAINT destek_pkey PRIMARY KEY ("DestekID");
 <   ALTER TABLE ONLY public.destek DROP CONSTRAINT destek_pkey;
       public            postgres    false    215            ?           2606    25587    envanter envanter_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.envanter
    ADD CONSTRAINT envanter_pkey PRIMARY KEY ("EnvanterID");
 @   ALTER TABLE ONLY public.envanter DROP CONSTRAINT envanter_pkey;
       public            postgres    false    216            ?           2606    25592    envanteresya envanteresya_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.envanteresya
    ADD CONSTRAINT envanteresya_pkey PRIMARY KEY ("EnvanterEsyaID");
 H   ALTER TABLE ONLY public.envanteresya DROP CONSTRAINT envanteresya_pkey;
       public            postgres    false    217            ?           2606    25597    esya esya_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.esya
    ADD CONSTRAINT esya_pkey PRIMARY KEY ("EsyaID");
 8   ALTER TABLE ONLY public.esya DROP CONSTRAINT esya_pkey;
       public            postgres    false    218            ?           2606    25602    grup grup_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.grup
    ADD CONSTRAINT grup_pkey PRIMARY KEY ("GrupID");
 8   ALTER TABLE ONLY public.grup DROP CONSTRAINT grup_pkey;
       public            postgres    false    219            ?           2606    25607    hesap hesap_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.hesap
    ADD CONSTRAINT hesap_pkey PRIMARY KEY (hesapid);
 :   ALTER TABLE ONLY public.hesap DROP CONSTRAINT hesap_pkey;
       public            postgres    false    220            ?           2606    25612    kupon kupon_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.kupon
    ADD CONSTRAINT kupon_pkey PRIMARY KEY ("KuponID");
 :   ALTER TABLE ONLY public.kupon DROP CONSTRAINT kupon_pkey;
       public            postgres    false    221            ?           2606    25617    kutuphane kutuphane_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.kutuphane
    ADD CONSTRAINT kutuphane_pkey PRIMARY KEY ("KutuphaneID");
 B   ALTER TABLE ONLY public.kutuphane DROP CONSTRAINT kutuphane_pkey;
       public            postgres    false    222            ?           2606    25622    magaza magaza_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.magaza
    ADD CONSTRAINT magaza_pkey PRIMARY KEY ("MagazaID");
 <   ALTER TABLE ONLY public.magaza DROP CONSTRAINT magaza_pkey;
       public            postgres    false    223            ?           2606    25629    oyun oyun_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.oyun
    ADD CONSTRAINT oyun_pkey PRIMARY KEY (oyunid);
 8   ALTER TABLE ONLY public.oyun DROP CONSTRAINT oyun_pkey;
       public            postgres    false    224            ?           2606    25634    oyunhesap oyunhesap_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.oyunhesap
    ADD CONSTRAINT oyunhesap_pkey PRIMARY KEY ("oyunhesapID");
 B   ALTER TABLE ONLY public.oyunhesap DROP CONSTRAINT oyunhesap_pkey;
       public            postgres    false    225            ?           2606    25639 $   oyunkutuphanesi oyunkutuphanesi_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.oyunkutuphanesi
    ADD CONSTRAINT oyunkutuphanesi_pkey PRIMARY KEY (oyunkpid);
 N   ALTER TABLE ONLY public.oyunkutuphanesi DROP CONSTRAINT oyunkutuphanesi_pkey;
       public            postgres    false    226            ?           2606    25644    oyunsiparis oyunsiparis_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.oyunsiparis
    ADD CONSTRAINT oyunsiparis_pkey PRIMARY KEY ("OyunSiparisID");
 F   ALTER TABLE ONLY public.oyunsiparis DROP CONSTRAINT oyunsiparis_pkey;
       public            postgres    false    227            ?           2606    25649    pazar pazar_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.pazar
    ADD CONSTRAINT pazar_pkey PRIMARY KEY (pazarid);
 :   ALTER TABLE ONLY public.pazar DROP CONSTRAINT pazar_pkey;
       public            postgres    false    228            ?           2606    25654    profil profil_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.profil
    ADD CONSTRAINT profil_pkey PRIMARY KEY ("ProfilID");
 <   ALTER TABLE ONLY public.profil DROP CONSTRAINT profil_pkey;
       public            postgres    false    229            ?           2606    25659    siparis siparis_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT siparis_pkey PRIMARY KEY (siparisid);
 >   ALTER TABLE ONLY public.siparis DROP CONSTRAINT siparis_pkey;
       public            postgres    false    230            ?           2606    25664    sirket sirket_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sirket
    ADD CONSTRAINT sirket_pkey PRIMARY KEY ("SirketID");
 <   ALTER TABLE ONLY public.sirket DROP CONSTRAINT sirket_pkey;
       public            postgres    false    231            ?           2606    25769    ucretli ucretli_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ucretli
    ADD CONSTRAINT ucretli_pkey PRIMARY KEY (oyunid);
 >   ALTER TABLE ONLY public.ucretli DROP CONSTRAINT ucretli_pkey;
       public            postgres    false    232            ?           2606    25779    ucretsiz ucretsiz_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ucretsiz
    ADD CONSTRAINT ucretsiz_pkey PRIMARY KEY (oyunid);
 @   ALTER TABLE ONLY public.ucretsiz DROP CONSTRAINT ucretsiz_pkey;
       public            postgres    false    233            ?           1259    25790    fki_ucretli_fk    INDEX     D   CREATE INDEX fki_ucretli_fk ON public.ucretli USING btree (oyunid);
 "   DROP INDEX public.fki_ucretli_fk;
       public            postgres    false    232                       2620    40988    ucretli delete_ucretli_trig    TRIGGER     y   CREATE TRIGGER delete_ucretli_trig AFTER DELETE ON public.ucretli FOR EACH ROW EXECUTE FUNCTION public.delete_ucretli();
 4   DROP TRIGGER delete_ucretli_trig ON public.ucretli;
       public          postgres    false    256    232                       2620    40992    ucretsiz delete_ucretsiz_trig    TRIGGER     |   CREATE TRIGGER delete_ucretsiz_trig AFTER DELETE ON public.ucretsiz FOR EACH ROW EXECUTE FUNCTION public.delete_ucretsiz();
 6   DROP TRIGGER delete_ucretsiz_trig ON public.ucretsiz;
       public          postgres    false    233    257                       2620    32776    oyun trigfiyatarttir    TRIGGER     o   CREATE TRIGGER trigfiyatarttir AFTER INSERT ON public.oyun FOR EACH ROW EXECUTE FUNCTION public.fiyatarttir();
 -   DROP TRIGGER trigfiyatarttir ON public.oyun;
       public          postgres    false    238    224                       2620    32784    oyun triggbarttir    TRIGGER     i   CREATE TRIGGER triggbarttir AFTER INSERT ON public.oyun FOR EACH ROW EXECUTE FUNCTION public.gbarttir();
 *   DROP TRIGGER triggbarttir ON public.oyun;
       public          postgres    false    240    224                        2620    40980    hesap triggereklenen    TRIGGER     p   CREATE TRIGGER triggereklenen AFTER INSERT ON public.hesap FOR EACH ROW EXECUTE FUNCTION public.eklenenhesap();
 -   DROP TRIGGER triggereklenen ON public.hesap;
       public          postgres    false    255    220                       2620    32782    oyun trigoyunarttir    TRIGGER     s   CREATE TRIGGER trigoyunarttir AFTER INSERT ON public.oyun FOR EACH ROW EXECUTE FUNCTION public.oyunsayisiarttir();
 ,   DROP TRIGGER trigoyunarttir ON public.oyun;
       public          postgres    false    239    224            ?           2606    25665    arkadas FK_arkadas.GrupID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.arkadas
    ADD CONSTRAINT "FK_arkadas.GrupID" FOREIGN KEY ("GrupID") REFERENCES public.grup("GrupID");
 E   ALTER TABLE ONLY public.arkadas DROP CONSTRAINT "FK_arkadas.GrupID";
       public          postgres    false    3276    219    214            ?           2606    25670    arkadas FK_arkadas.HesapID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.arkadas
    ADD CONSTRAINT "FK_arkadas.HesapID" FOREIGN KEY ("HesapID") REFERENCES public.hesap(hesapid);
 F   ALTER TABLE ONLY public.arkadas DROP CONSTRAINT "FK_arkadas.HesapID";
       public          postgres    false    3278    220    214            ?           2606    25675 '   envanteresya FK_envanteresya.EnvanterID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.envanteresya
    ADD CONSTRAINT "FK_envanteresya.EnvanterID" FOREIGN KEY ("EnvanterID") REFERENCES public.envanter("EnvanterID");
 S   ALTER TABLE ONLY public.envanteresya DROP CONSTRAINT "FK_envanteresya.EnvanterID";
       public          postgres    false    216    3270    217            ?           2606    25680 #   envanteresya FK_envanteresya.EsyaID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.envanteresya
    ADD CONSTRAINT "FK_envanteresya.EsyaID" FOREIGN KEY ("EsyaID") REFERENCES public.esya("EsyaID");
 O   ALTER TABLE ONLY public.envanteresya DROP CONSTRAINT "FK_envanteresya.EsyaID";
       public          postgres    false    218    3274    217            ?           2606    25685    esya FK_esya.PazarID    FK CONSTRAINT     |   ALTER TABLE ONLY public.esya
    ADD CONSTRAINT "FK_esya.PazarID" FOREIGN KEY ("PazarID") REFERENCES public.pazar(pazarid);
 @   ALTER TABLE ONLY public.esya DROP CONSTRAINT "FK_esya.PazarID";
       public          postgres    false    218    3294    228            ?           2606    25690    hesap FK_hesap.DestekID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hesap
    ADD CONSTRAINT "FK_hesap.DestekID" FOREIGN KEY (destekid) REFERENCES public.destek("DestekID");
 C   ALTER TABLE ONLY public.hesap DROP CONSTRAINT "FK_hesap.DestekID";
       public          postgres    false    215    3268    220            ?           2606    25695    hesap FK_hesap.EnvanterID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hesap
    ADD CONSTRAINT "FK_hesap.EnvanterID" FOREIGN KEY (envanterid) REFERENCES public.envanter("EnvanterID");
 E   ALTER TABLE ONLY public.hesap DROP CONSTRAINT "FK_hesap.EnvanterID";
       public          postgres    false    220    216    3270            ?           2606    25700    hesap FK_hesap.KutuphaneID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hesap
    ADD CONSTRAINT "FK_hesap.KutuphaneID" FOREIGN KEY (kutuphaneid) REFERENCES public.kutuphane("KutuphaneID");
 F   ALTER TABLE ONLY public.hesap DROP CONSTRAINT "FK_hesap.KutuphaneID";
       public          postgres    false    222    3282    220            ?           2606    25705    hesap FK_hesap.MagazaID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hesap
    ADD CONSTRAINT "FK_hesap.MagazaID" FOREIGN KEY (magazaid) REFERENCES public.magaza("MagazaID");
 C   ALTER TABLE ONLY public.hesap DROP CONSTRAINT "FK_hesap.MagazaID";
       public          postgres    false    220    3284    223            ?           2606    25710    hesap FK_hesap.ProfilID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hesap
    ADD CONSTRAINT "FK_hesap.ProfilID" FOREIGN KEY (profilid) REFERENCES public.profil("ProfilID");
 C   ALTER TABLE ONLY public.hesap DROP CONSTRAINT "FK_hesap.ProfilID";
       public          postgres    false    220    3296    229            ?           2606    25715    oyun FK_oyun.MagazaID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oyun
    ADD CONSTRAINT "FK_oyun.MagazaID" FOREIGN KEY (magazaid) REFERENCES public.magaza("MagazaID");
 A   ALTER TABLE ONLY public.oyun DROP CONSTRAINT "FK_oyun.MagazaID";
       public          postgres    false    224    3284    223            ?           2606    25720    oyun FK_oyun.SirketID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oyun
    ADD CONSTRAINT "FK_oyun.SirketID" FOREIGN KEY (sirketid) REFERENCES public.sirket("SirketID");
 A   ALTER TABLE ONLY public.oyun DROP CONSTRAINT "FK_oyun.SirketID";
       public          postgres    false    224    3300    231            ?           2606    25725    oyunhesap FK_oyunhesap.HesapID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oyunhesap
    ADD CONSTRAINT "FK_oyunhesap.HesapID" FOREIGN KEY ("HesapID") REFERENCES public.hesap(hesapid);
 J   ALTER TABLE ONLY public.oyunhesap DROP CONSTRAINT "FK_oyunhesap.HesapID";
       public          postgres    false    225    3278    220            ?           2606    25730    oyunhesap FK_oyunhesap.OyunID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oyunhesap
    ADD CONSTRAINT "FK_oyunhesap.OyunID" FOREIGN KEY ("OyunID") REFERENCES public.oyun(oyunid);
 I   ALTER TABLE ONLY public.oyunhesap DROP CONSTRAINT "FK_oyunhesap.OyunID";
       public          postgres    false    3286    224    225            ?           2606    25735 .   oyunkutuphanesi FK_oyunkutuphanesi.KutuphaneID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oyunkutuphanesi
    ADD CONSTRAINT "FK_oyunkutuphanesi.KutuphaneID" FOREIGN KEY ("KutuphaneID") REFERENCES public.kutuphane("KutuphaneID");
 Z   ALTER TABLE ONLY public.oyunkutuphanesi DROP CONSTRAINT "FK_oyunkutuphanesi.KutuphaneID";
       public          postgres    false    3282    226    222            ?           2606    25740 )   oyunkutuphanesi FK_oyunkutuphanesi.OyunID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oyunkutuphanesi
    ADD CONSTRAINT "FK_oyunkutuphanesi.OyunID" FOREIGN KEY ("OyunID") REFERENCES public.oyun(oyunid);
 U   ALTER TABLE ONLY public.oyunkutuphanesi DROP CONSTRAINT "FK_oyunkutuphanesi.OyunID";
       public          postgres    false    3286    226    224            ?           2606    25745 !   oyunsiparis FK_oyunsiparis.OyunID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oyunsiparis
    ADD CONSTRAINT "FK_oyunsiparis.OyunID" FOREIGN KEY ("OyunID") REFERENCES public.oyun(oyunid);
 M   ALTER TABLE ONLY public.oyunsiparis DROP CONSTRAINT "FK_oyunsiparis.OyunID";
       public          postgres    false    227    3286    224            ?           2606    25750 $   oyunsiparis FK_oyunsiparis.SiparisID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.oyunsiparis
    ADD CONSTRAINT "FK_oyunsiparis.SiparisID" FOREIGN KEY ("SiparisID") REFERENCES public.siparis(siparisid);
 P   ALTER TABLE ONLY public.oyunsiparis DROP CONSTRAINT "FK_oyunsiparis.SiparisID";
       public          postgres    false    227    3298    230            ?           2606    25755    profil FK_profil.PazarID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profil
    ADD CONSTRAINT "FK_profil.PazarID" FOREIGN KEY ("PazarID") REFERENCES public.pazar(pazarid);
 D   ALTER TABLE ONLY public.profil DROP CONSTRAINT "FK_profil.PazarID";
       public          postgres    false    229    3294    228            ?           2606    25760    siparis FK_siparis.KuponID    FK CONSTRAINT     ?   ALTER TABLE ONLY public.siparis
    ADD CONSTRAINT "FK_siparis.KuponID" FOREIGN KEY (kuponid) REFERENCES public.kupon("KuponID");
 F   ALTER TABLE ONLY public.siparis DROP CONSTRAINT "FK_siparis.KuponID";
       public          postgres    false    221    230    3280            ?           2606    25770    ucretli ucretli_OyunID_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.ucretli
    ADD CONSTRAINT "ucretli_OyunID_fkey" FOREIGN KEY (oyunid) REFERENCES public.oyun(oyunid);
 G   ALTER TABLE ONLY public.ucretli DROP CONSTRAINT "ucretli_OyunID_fkey";
       public          postgres    false    224    3286    232            ?           2606    25780    ucretsiz ucretsiz_OyunID_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ucretsiz
    ADD CONSTRAINT "ucretsiz_OyunID_fkey" FOREIGN KEY (oyunid) REFERENCES public.oyun(oyunid);
 I   ALTER TABLE ONLY public.ucretsiz DROP CONSTRAINT "ucretsiz_OyunID_fkey";
       public          postgres    false    224    233    3286            ?     x?͒?j?0??~?ŗ$ 
?;??$nkh?R?9???",)F?
??w%????3???lv(???C?C?ޥ8ݡi?F?8T???[?a?'???z??ͼw??\??h??h\;???-z9?c?\?L?&;?ō?????`?M?'??0BN????}??3???
?ąArQ?cp??u ?]???C???????M-?S?~?ƣVJt~>)?.G??"????T?њ??䗫????Pw5?5!m?5t?{.?e??{??EBb`?@[G??k???OO?9      ?   ?   x???v
Q???W((M??L?KI-.I?V?Pr3<]?t?BRs?3s?3S2??.?E????"????řJ?
a?>???
?:
???Eىy?@?oiqbf	?e?i??Isˍ?V???eV???@+?J??&@++??O۝Z?^?C7?M?Vf䦖`x?? ???2      ?   
   x???          ?   ?   x???v
Q???W((M??L?K?+K?+I-R?Pr?2=]?t?B?rs]R?S?@\????????L?#5%?2UIS!??'?5XA?PG????@G??д????EF@?@Y?(???"c??L!>2??E ??>24???L????RG?h Ț      ?   i   x???v
Q???W((M??L?K?+K?+I-J-?LT?Pr?r]?\O%%$T??Ts?	uV?0?Q !Mk.O?n??`D?1h?	??p??@Ǜ?? j:pJ      ?   ?   x???v
Q???W((M??L?K-?LT?PrR?.J:
`?cJ&???Y?Xb$V%?5?}B]?4uԳ3???( 	Mk.O?o4>)391h?????UM7?^????4ݔ?n7?^?Y2?d?1?t.. ?h:      ?   ?   x???v
Q???W((M??L?K/*-P?PrR?.J:
Jޙř???@ċ??K-?L?T?Ts?	uV?0?Q0?QP/H???+.U״?򤆱F:
f@cS?R????f????d??Ҝ??\*?S?s?R?f$?<s????????% s?? U??      ?   <  x?͓?n?0D?|?o?d!H?꥕?!jE?z??xK,'vd?H???5??/?4??'9??(???}X??|?֟jY.*tвYRp?q??р?93??5???*?????=r?Z?+k?>??	t*r?/?;????|[?F)??????+?l??????`?=?#WZ?????3-?(M?t?Y???!?l=??i???,?8-?@W"ʝT4?-???~Ƕy?l?fC??nP_A?`???W??v???x閳$???%?C?/	$??e?ng͹??E??pk?.p%?]2???@???.B?0?~?-??F@K?l?t? 7??}X]I      ?   [   x???v
Q???W((M??L??.-??S?P?ў.J:
J??U)?J?
a?>???
?:
???\?d?6?Q0&_????)??Mt,@??? ?8F?      ?   ?   x?????0??~??K-?X?!8	:?[???II?b??i?????޻???.N??!?8?S(?E???n?-n(	????????V
ԍ=ۻ IR??6ּ?~?????`!ЄXS41z?+	???&Z?+/?3???+J?4??AJ?C?}??:^?e?ըo?̱???oƂ???v??y?	?h?Ɂi^?2e???.??? ??Д      ?   ?   x????
?0 ?????2"?{?$ꡠ???n?F?NqOo?]??B??????????,a???0?UPBl????)-??????k?+?ɯ??bO?l????t;?l2???$A?L?rA|,ȴ?ۀ??/<JQc?Z?xNb|z? ?kwP׹?Rx?I???
Y???z?VV??@?ݍ?lƷ??y??J(?????A;??      ?   U  x???Ak?0?{?Ż?B??j?i?
????=??>4*?ܧ?{K??????ID???????7/???к????fp5???? ???:?k??qP? ]??G????i?	?Ж??7?*ԧ?|o?O??=?A??U??: CqȻ?#GC;?$???l;&??Ƕ#?䊥e?;Z'$Z?[?A?h4V4????\/???&E$0??m?sb?>v=#?iNn}?J=??,??M???Q??2??@?l????UŕOqƣ?$??dʋdxW?|?????i??+???,?C??	-????E??4?Ir?*;??=??3?t?.tm?o??iz?Lnx)?}|f?F>???xqA?      ?   }   x???v
Q???W((M??L?˯,??H-N,P?P??=]?t?<L??RR?X?Y????????a?? E??\?4??HG?l????0?Q0?afI3;??0?aj@3;??0???
.. ?Z??      ?   d   x???v
Q???W((M??L?˯,??.-)-?H?K-?T? d??((y??=]??\?????????a?? B??\??5?HG??&?(A?? ??Sq      ?   ?   x???v
Q???W((M??L?˯,?+?,H,?,V?P???!<O%%H?kJ??,??Q(?/?I???eV&??ғ4?}B]?4u??XG????TG???DӚ?s`?c?_G?rи?
L?pq ?W??      ?   ?   x???=
?@??SL??4?AH??B?I???nT?M???,?g???W~?K?,?琤??o!?<?4? ?V\!?j$E#+F?]/????4?"?JS'?u?y?>??h"<??Jr[???J?E D?X?f??2??@?Q|/
WI???.Nh?m9?\R??b6?????x?~???ʧ?      ?     x???OK1???C/m????x[pQj?*x??N%$???FH??3+B??=??d??2y?f?~}?r??Ǵw??:?p0??m'??p
?U??Q???_????djU"???o?O??>????;S5?Ѵ#Q!'!{lЂ??2yG?:b㵄?%+???h1fT;???aϤ?>p????*X`??h?s?٭y?}r??e?눉???#?c???U??;?n???s?/??jr??ů_+p?PN?.?E\^ 2?TH?$??"?Ԩ?M9H????<??f)؃?̗      ?   ?   x??н
?0??ݫ8?
????Щ??P,T????Q?3ث?????!𽤪???BU?wоE??B?????@z?? ?kՂ+???g??c??C???z{?$9:???8M??䞏BX?h$??☥???2????,?!??}???Ώ????){ڕ8??? ?z????s?????      ?   ?   x????
?0 ?????.*?????<? ???ǜ????m?
?}????xU@??	??]Yi?? ?l?a???k]Е????YZ?3?/?w? ?	$Z?ZL	?cvF4Z?	??????:???{#???r??w>??(??>E???V??ׇP#?d,??      ?   ?   x??ν
?0??ݫ8[???N?b???i?????$?w_C/??[??kڮ~?д?l??$A,???Y??a??{>P???Uw??E???0s???˱??4{?3±?|6ZQ?&?? Te<?5)?Ij?%?,~w??^?1??Y?Jzҧ('?oH      ?   {   x???v
Q???W((M??L?+M.J-)άR?ȯ,??L?Q()-?QHL??Ts?	uV?0?QP???/*HW?R?K?5??<?3?Ű?Ԓ?<#
?34A1/9????F$fgV??!{?? ??`?     