USE board3game;

DROP TABLE IF EXISTS wish_list;

CREATE TABLE wish_list
(
    Priority   INT UNIQUE,
    Name       VARCHAR(255) NOT NULL UNIQUE,
    Designer   VARCHAR(255),
    AVGRaiting DEC(4, 2)    NOT NULL,
    CHECK (AVGRaiting >= 0),
    GeekWeight DEC(4, 2)    NOT NULL,
    CHECK (GeekWeight >= 1)
);

SELECT *
FROM wish_list;