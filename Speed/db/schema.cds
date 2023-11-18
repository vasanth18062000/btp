namespace com.Speed.db;

entity Products : cuid, managed{

    title    : localized String(111);
    descr    : localized String(1111);
    stock    : Integer;
    price    : Decimal(9,2);
    currency : Currency;
}