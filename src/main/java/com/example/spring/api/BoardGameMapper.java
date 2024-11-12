package com.example.spring.api;

import com.example.spring.dto.a6.BoardGame;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface BoardGameMapper {

    @Select("""
                        SELECT GeekRank rank,
            GameName name,
                        AvgRaiting score,
                        Collectionlist collection
                        FROM BoardGameGeekTopAllRank
                        WHERE GeekRank = #{rank}
            """)
    BoardGame selectByRank(Integer rank);
}
