use bank

select card_id, issued as year_issued from card
where type = 'gold';

select issued, convert(substring(issued, 1, 6), date) from bank.card;
ORDER BY convert(substring(issued, 1, 6), date) DESC
where type = gold




select type, card_id, date_format(convert(substring_index(issued, ' ', 1), date), '%Y') as year_issued from card
where type = 'gold';

select type, card_id, date_format(convert(substring_index(issued, ' ', 1), date), '%Y') as year_issued from card
where type = 'gold'
order by year_issued
limit 1;

select date_format(convert(substring_index(issued, ' ', 1),date), '%d of %M of %Y') as fecha_emision from card;



