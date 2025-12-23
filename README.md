# programmu_uzturešana
Šis Bash skripts veic vairākas darbības ar lietotāja norādīto direktoriju un lejupielādēto attēlu.

Skripts pārbauda, vai lietotājs ir norādījis direktorijas nosaukumu kā parametru.
Ja direktorija neeksistē, tā tiek izveidota.
Skripts lejupielādē attēlu (bash.gif) no GitHub repozitorija norādītajā direktorijā.
Lejupielādētais attēls tiek samazināts līdz 300x300 pikseļiem.
Attēls tiek automātiski atvērts un pēc 5 sekundēm aizvērts.
Skripts piedāvā lietotājam izvēli (Y/N), vai dzēst izveidoto direktoriju un tās saturu.
Ja lietotājs apstiprina, direktorija tiek dzēsta pēc 5 sekundēm.

Lietošana:

1. Piešķir skriptam izpildes tiesības:
   chmod +x script.sh

2. Izsauc skriptu, norādot direktorijas nosaukumu:
   ./script.sh mans_mape

3. Piemērs:
   ./script.sh downloads
