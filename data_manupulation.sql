-- insert statements
-- insert into consumer (id, name, phone) values (4, "retoo", "+143939334");
-- insert into product (id, name, quantity) values (4, "springs", 78);

-- update statements
-- update product set quantity = 7 where id = 4;
-- update consumer set phone = "+1436429867" where id = 4;

-- delete statemtnts
-- delete from consumer where id = 4;

-- select statements
-- select name, code from store;

-- join statemtents
-- select * from store join (owner) on store.owner_id = owner.id;
-- select * from sale join (consumer) on sale.consumer_id = consumer.id;

-- summary statements
-- select count(*) from sale;
-- select distinct count(store_id) from sale;

-- multi-tables statement
-- select sale.*, product.* from sale, product where sale.product_id = product.id AND sale.store_id = 1;

-- choice statement
-- select sale.*, product.name, consumer.name, consumer.phone from sale, product, consumer where sale.product_id = product.id and sale.consumer_id = consumer.id;
