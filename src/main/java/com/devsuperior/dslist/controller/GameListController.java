package com.devsuperior.dslist.controller;

import org.springframework.web.bind.annotation.RestController;

import com.devsuperior.dslist.dto.GameListDTO;
import com.devsuperior.dslist.service.GameListService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;

@RestController
@RequestMapping(value = "/lists")
public class GameListController {

    @Autowired
    private GameListService gls;

    @GetMapping
    public List<GameListDTO> findAll() {
        List<GameListDTO> result = gls.findAll();
        return result;
    }
}
