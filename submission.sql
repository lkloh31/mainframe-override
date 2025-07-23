--new terminal
psql -f init.sql
psql
\l
\c mainframe_override
select * from forum_posts where content ilike '%intel%';
        id   |     title     |                                                                                              content                                                                                               |        date         |     author     
        -------+---------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+----------------
        nbZY_ | Get rich fast | You should all invest in EmptyStack Solutions soon or you'll regret it. My dad works there and he's got some serious inside intel. Their self-driving taxis are the future and the future is here. | 2048-04-08 00:00:00 | smart-money-44
        (1 row)
select * from forum_accounts where username = 'smart-money-44';
            username    | first_name | last_name 
        ----------------+------------+-----------
        smart-money-44 | Brad       | Steele
        (1 row)
select * from forum_accounts where last_name = 'Steele';
            username     | first_name | last_name 
        -----------------+------------+-----------
        sharp-engine-57 | Andrew     | Steele
        stinky-tofu-98  | Kevin      | Steele
        smart-money-44  | Brad       | Steele
        (3 rows)
select * from emptystack_accounts where last_name = 'Steele';
            username    |  password   | first_name | last_name 
        ----------------+-------------+------------+-----------
        triple-cart-38 | password456 | Andrew     | Steele
        lance-main-11  | password789 | Lance      | Steele
        (2 rows)

--new terminal
node mainframe
psql -f emptystack.sql
psql
\c mainframe_override
\d
\d emptystack_messages
        Column  | Type | Collation | Nullable | Default 
        ---------+------+-----------+----------+---------
        id      | text |           | not null | 
        from    | text |           | not null | 
        to      | text |           | not null | 
        subject | text |           | not null | 
        body    | text |           | not null | 
select * from emptystack_messages where body ilike '%taxi%';
        id   |     from     |       to       |   subject    |                            body                            
        -------+--------------+----------------+--------------+------------------------------------------------------------
        LidWj | your-boss-99 | triple-cart-38 | Project TAXI | Deploy Project TAXI by end of week. We need this out ASAP.
        (1 row)
select * from emptystack_accounts where username = 'your-boss-99';
        username   |    password    | first_name | last_name 
        --------------+----------------+------------+-----------
        your-boss-99 | notagaincarter | Skylar     | Singer
        (1 row)
select * from emptystack_projects where code ilike '%taxi%';
            id    | code 
        ----------+------
        DczE0v2b | TAXI
        (1 row)

--new terminal
node mainframe -stop
        Username: your-boss-99
        Password: notagaincarter
        Welcome, your-boss-99.
        Project ID: DczE0v2b
        Initiating project shutdown sequence...
        5...
        4...
        3...
        2...
        1...
        Project shutdown complete.