dong_vat_an_co(de).
hungdu(cho_soi).
dong_vat_an_thit(X):- hungdu(X).
an(X,thit):- dong_vat_an_thit(X).
an(X,co):- dong_vat_an_co(X).
an(X,Y):- dong_vat_an_thit(X),dong_vat_an_co(Y).
uong(X,nuoc):- dong_vat_an_co(X),dong_vat_an_thit(X).
tieuthu(X,Y):- an(X,Y);uong(X,Y).
main:-
   hungdu(_) ->
   write('co dong vat an thit'),
   hungdu(X),
   nl,
   write(X),
   write('tieu thu'),
   write(Y),
   fail;
   write('khong co dong vat hung du').
