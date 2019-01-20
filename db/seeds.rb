ActiveRecord::Base.transaction do
  artists = [
    huong_tram = Artist.new(name: "Huong Tram", avatar_url: "https://www.dropbox.com/s/eq0xk342kpsi5gk/HuongTram.jpg?dl=1"),
    dam_vinh_hung = Artist.new(name: "Dam Vinh Hung", avatar_url: "https://www.dropbox.com/s/8ztqlthrqeh2tfx/DamVinhHung.jpg?dl=1"),
    vu_cat_tuong = Artist.new(name: "Vu Cat Tuong", avatar_url: "https://www.dropbox.com/s/97tw95t2i7lf1pl/VuCatTuong.jpg?dl=1"),
    truc_nhan = Artist.new(name: "Truc Nhan", avatar_url: "https://www.dropbox.com/s/b492n4x6f79gsob/TrucNhan.jpg?dl=1"),
    huong_lan = Artist.new(name: "Huong Lan", avatar_url: "https://www.dropbox.com/s/24gcau6kmiwpbo0/HuongLan.jpg?dl=1"),
    miu_le = Artist.new(name: "Miu Le", avatar_url: "https://www.dropbox.com/s/pa9d3y9tut5rc8o/MiuLe.jpg?dl=1"),
    quang_dung = Artist.new(name: "Quang Dung", avatar_url: "https://www.dropbox.com/s/vcb2rfo9ohzzd62/QuangDung.jpg?dl=1"),
    khanh_ly = Artist.new(name: "Khanh Ly", avatar_url: "https://www.dropbox.com/s/rpty88axftjv1em/KhanhLy.jpg?dl=1"),
    hong_nhung = Artist.new(name: "Hong Nhung", avatar_url: "https://www.dropbox.com/s/qjb61jqltqu19jd/HongNhung.jpg?dl=1"),
    le_quyen = Artist.new(name: "Le Quyen", avatar_url: "https://www.dropbox.com/s/ulm44agspcb0sil/LeQuyen.jpg?dl=1"),
    kicm = Artist.new(name: "K-ICM", avatar_url: "https://www.dropbox.com/s/nf1i7ekbg2tx99z/K-ICM.jpg?dl=1"),
    nguyen_khoa = Artist.new(name: "Nguyen Khoa", avatar_url: "https://www.dropbox.com/s/o4o6s55zmzg90ii/NguyenKhoa.jpg?dl=1"),
    duy_zuno = Artist.new(name: "Duy Zuno", avatar_url: "https://www.dropbox.com/s/239urccuwvke063/DuyZuno.jpg?dl=1")
  ]

  albums = [
    em_gai_mua = Album.new(name: "Em Gai Mua", cover_image_url: "https://www.dropbox.com/s/mgkjo0l10no7223/EmGaiMua.jpg?dl=1"),
    voi_em_la_mai_mai = Album.new(name: "Voi Em La Mai Mai", cover_image_url: "https://www.dropbox.com/s/n190ew5ocx9v9rv/VoiEmLaMaiMai.jpg?dl=1"),
    mot_minh_co_sao_dau = Album.new(name: "Mot Minh Co Sao Dau", cover_image_url: "https://www.dropbox.com/s/zp72ofkub44osqk/MotMinhCoSaoDau.jpg?dl=1"),
    tinh_bo_vo = Album.new(name: "Tinh Bo Vo", cover_image_url: "https://www.dropbox.com/s/t81xc2h2ohy4ogx/TinhBoVo.jpg?dl=1"),
    vet_mua = Album.new(name: "Vet Mua (single)", cover_image_url: "https://www.dropbox.com/s/t030h6tbt9dnp6a/VetMua.jpg?dl=1"),
    giai_ma = Album.new(name: "Giai Ma", cover_image_url: "https://www.dropbox.com/s/ekbbmcjs0dlz0r1/GiaiMa.jpg?dl=1"),
    muon_khoc_that_to = Album.new(name: "Muon Khoc That To", cover_image_url: "https://www.dropbox.com/s/bgbm0hv16etf7p6/MuonKhocThatTo.jpg?dl=1"),
    ve = Album.new(name: "Ve", cover_image_url: "https://www.dropbox.com/s/377g5a4yfm0bmpu/Ve.jpg?dl=1"),
    em_la_ba_noi_cua_anh = Album.new(name: "Em La Ba Noi Cua Anh", cover_image_url: "https://www.dropbox.com/s/b3pmjuccxn6wyse/EmLaBaNoiCuaAnhOST.jpg?dl=1"),
    nguoi_xa_nguoi = Album.new(name: "Nguoi Xa Nguoi", cover_image_url: "https://www.dropbox.com/s/b1k0bc8gr2p2wj0/NguoiXaNguoi.jpg?dl=1"),
    ca_dao_me = Album.new(name: "Ca Dao Me", cover_image_url: "https://www.dropbox.com/s/0l4ker0mctp6fv2/CaDaoMe.jpg?dl=1"),
    goi_giac_mo_xua = Album.new(name: "Goi Giac Mo Xua", cover_image_url: "https://www.dropbox.com/s/8qz1syuymksj5kt/GoiGiacMoXua.jpg?dl=1"),
    mot_coi_di_ve = Album.new(name: "Mot Coi Di Ve", cover_image_url: "https://www.dropbox.com/s/16zaj5mt95xhzfd/MotCoiDiVe.jpg?dl=1"),
    nhu_canh_vac_bay = Album.new(name: "Nhu Canh Vac Bay", cover_image_url: "https://www.dropbox.com/s/ay3c2jzrbfg2c9p/NhuCanhVacBay.jpg?dl=1"),
    tinh_khuc_yeu_thuong = Album.new(name: "Tinh Khuc Yeu Thuong", cover_image_url: "https://www.dropbox.com/s/4tc8paz0rlbpyxp/TinhKhucYeuThuong.jpg?dl=1"),
    con_trai_cung = Album.new(name: "Con Trai Cung", cover_image_url: "https://www.dropbox.com/s/8oq6zfj3ngcz2hk/ConTraiCung.jpg?dl=1"),
    chuyen_tinh_toi = Album.new(name: "Chuyen Tinh Toi", cover_image_url: "https://www.dropbox.com/s/59ddgsgirti4xr4/ChuyenTinhToi.jpg?dl=1"),
    roi_xa_de_truong_thanh = Album.new(name: "Roi Xa De Truong Thanh", cover_image_url: "https://www.dropbox.com/s/kjd0m5db5al73wx/RoiXaDeTruongThanh.jpg?dl=1")
  ]

  artists.each do |artist|
    artist.save!
  end

  albums.each do |album|
    album.save!
  end

  songs = [
    s1 = Song.new(title: "Chia Tay Trong Mua", album_id: em_gai_mua.id, artist_id: huong_tram.id, url: "https://www.dropbox.com/s/bkrzijomsyko9fw/ChiaTayTrongMua.mp3?dl=1"),
    s2 = Song.new(title: "Em Gai Mua", album_id: em_gai_mua.id, artist_id: huong_tram.id, url: "https://www.dropbox.com/s/myagkffyuoqfdik/EmGaiMua.mp3?dl=1"),
    s3 = Song.new(title: "Hom Qua Mua", album_id: em_gai_mua.id, artist_id: huong_tram.id, url: "https://www.dropbox.com/s/4hibmshoeiq9pbw/HomQuaMua.mp3?dl=1"),
    s4 = Song.new(title: "Voi Em La Mai Mai", album_id: voi_em_la_mai_mai.id, artist_id: huong_tram.id, url: "https://www.dropbox.com/s/kutg62honnm19vu/VoiEmLaMaiMai.mp3?dl=1"),
    s5 = Song.new(title: "Trang Duoi Chan Minh", album_id: voi_em_la_mai_mai.id, artist_id: huong_tram.id, url: "https://www.dropbox.com/s/z3aqyi2vyrt17yt/TrangDuoiChanMinh.mp3?dl=1"),
    s6 = Song.new(title: "Ngai Ngung", album_id: voi_em_la_mai_mai.id, artist_id: huong_tram.id, url: "https://www.dropbox.com/s/xydn3eb27a2hl79/NgaiNgung.mp3?dl=1"),
    s7 = Song.new(title: "Loi Yeu Thuong", album_id: mot_minh_co_sao_dau.id, artist_id: dam_vinh_hung.id, url: "https://www.dropbox.com/s/6sl64nc3prgydqu/LoiYeuThuong.mp3?dl=1"),
    s8 = Song.new(title: "Toc May", album_id: mot_minh_co_sao_dau.id, artist_id: dam_vinh_hung.id, url: "https://www.dropbox.com/s/0i4sgu4h9z4o107/TocMay.mp3?dl=1"),
    s9 = Song.new(title: "Toi Di Giua Hoang Hon", album_id: mot_minh_co_sao_dau.id, artist_id: dam_vinh_hung.id, url: "https://www.dropbox.com/s/ezrbr9w8u12jfey/ToiDiGiuaHoangHon.mp3?dl=1"),
    s10 = Song.new(title: "Chieu Mua Bien Gioi", album_id: tinh_bo_vo.id, artist_id: dam_vinh_hung.id, url: "https://www.dropbox.com/s/k0xgpu3x2lh194h/ChieuMuaBienGioi.mp3?dl=1"),
    s11 = Song.new(title: "Thuong Tinh Nhan", album_id: tinh_bo_vo.id, artist_id: dam_vinh_hung.id, url: "https://www.dropbox.com/s/4c7jqncplb3xr0z/ThuongTinhNhan.mp3?dl=1"),
    s12 = Song.new(title: "Tinh Bo Vo", album_id: tinh_bo_vo.id, artist_id: dam_vinh_hung.id, url: "https://www.dropbox.com/s/hfwdh57burklzn1/TinhBoVo.mp3?dl=1"),
    s13 = Song.new(title: "Vet Mua", album_id: vet_mua.id, artist_id: vu_cat_tuong.id, url: "https://www.dropbox.com/s/aqapeo15708gwx4/VetMua.mp3?dl=1"),
    s14 = Song.new(title: "Dong", album_id: giai_ma.id, artist_id: vu_cat_tuong.id, url: "https://www.dropbox.com/s/1z7veltr20okk2d/Dong.mp3?dl=1"),
    s15 = Song.new(title: "Muon Khoc That To", album_id: muon_khoc_that_to.id, artist_id: truc_nhan.id, url: "https://www.dropbox.com/s/yz2v824m9udtrpr/MuonKhocThatTo.mp3?dl=1"),
    s16 = Song.new(title: "Gio Mua Ve", album_id: muon_khoc_that_to.id, artist_id: truc_nhan.id, url: "https://www.dropbox.com/s/lu5ashynih75414/GioMuaVe.mp3?dl=1"),
    s17 = Song.new(title: "That bat Ngo", album_id: muon_khoc_that_to.id, artist_id: truc_nhan.id, url: "https://www.dropbox.com/s/z216dkeacor9pdm/ThatBatNgo.mp3?dl=1"),
    s18 = Song.new(title: "Bon Chu Lam", album_id: ve.id, artist_id: truc_nhan.id, url: "https://www.dropbox.com/s/h9ghq2yxzu37epo/BonChuLam.mp3?dl=1"),
    s19 = Song.new(title: "Ve", album_id: ve.id, artist_id: truc_nhan.id, url: "https://www.dropbox.com/s/miqoz5hkbmby3cl/Ve.mp3?dl=1"),
    s20 = Song.new(title: "Tu Do Em Buon", album_id: nguoi_xa_nguoi.id, artist_id: huong_lan.id, url: "https://www.dropbox.com/s/l4wnlgrl81ebdze/TuDoEmBuon.mp3?dl=1"),
    s21 = Song.new(title: "Diem Xua", album_id: em_la_ba_noi_cua_anh.id, artist_id: miu_le.id, url: "https://www.dropbox.com/s/1lwclvgv1wviscf/DiemXua.mp3?dl=1"),
    s22 = Song.new(title: "Con Tuoi Nao Cho Em", album_id: em_la_ba_noi_cua_anh.id, artist_id: miu_le.id, url: "https://www.dropbox.com/s/l6apv5ttka7v1as/ConTuoiNaoChoEm.mp3?dl=1"),
    s23 = Song.new(title: "Cat Bui", album_id: ca_dao_me.id, artist_id: dam_vinh_hung.id, "https://www.dropbox.com/s/elbd1bnpuatzvhn/CatBui.mp3?dl=1"),
    s24 = Song.new(title: "Diem Xua", album_id: ca_dao_me.id, artist_id: dam_vinh_hung.id, "https://www.dropbox.com/s/ka7mq3huk7878mu/DiemXuaDVH.mp3?dl=1"),
    s25 = Song.new(title: "Ha Trang", album_id: goi_giac_mo_xua.id, artist_id: quang_dung.id, url: "https://www.dropbox.com/s/ezijh6nzgutwah9/HaTrang.mp3?dl=1"),
    s26 = Song.new(title: "Bien Nho", album_id: goi_giac_mo_xua.id, artist_id: quang_dung.id, url: "https://www.dropbox.com/s/bnkhmynkkj509x2/BienNho.mp3?dl=1"),
    s27 = Song.new(title: "Mot Coi Di Ve", album_id: mot_coi_di_ve.id, artist_id: khanh_ly.id, url: "https://www.dropbox.com/s/sripp06jf262uge/MotCoiDiVe.mp3?dl=1"),
    s28 = Song.new(title: "Tuoi Da Buon", album_id: nhu_canh_vac_bay.id, artist_id: hong_nhung.id, url: "https://www.dropbox.com/s/zppdqs2e33aq7p7/TuoiDaBuon.mp3?dl=1"),
    s29 = Song.new(title: "De Gio Cuon Di", album_id: nhu_canh_vac_bay.id, artist_id: hong_nhung.id, url: "https://www.dropbox.com/s/c5fq62gj61pqzm5/DeGioCuonDi.mp3?dl=1"),
    s30 = Song.new(title: "Da Khuc", album_id: tinh_khuc_yeu_thuong.id, artist_id: le_quyen.id, url: "https://www.dropbox.com/s/xtu146dajrpi5h2/DaKhuc.mp3?dl=1"),
    s31 = Song.new(title: "Con Trai Cung", album_id: con_trai_cung.id, artist_id: kicm.id, url: "https://www.dropbox.com/s/x157dqgiqjy8ceu/ConTraiCung.mp3?dl=1"),
    s32 = Song.new(title: "Chuyen Tinh Toi", album_id: con_trai_cung.id, artist_id: kicm.id, url: "https://www.dropbox.com/s/j51e137vv8c4bwa/ChuyenTinhToi.mp3?dl=1"),
    s33 = Song.new(title: "Roi Xa De Truong Thanh", album_id: roi_xa_de_truong_thanh.id, artist_id: duy_zuno.id, url: "https://www.dropbox.com/s/h1cthpxik696m43/RoiXaDeTruongThanh.mp3?dl=1")
  ]

  songs.shuffle.each do |song|
    song.save!
  end
end