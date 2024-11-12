package com.example.spring.api;

import com.example.spring.dto.a6.BoardGame;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
public class BoardGameService {
    private final BoardGameMapper mapper;

    public BoardGame getBoardGame(Integer rank) {
        return mapper.selectByRank(rank);
    }
}
