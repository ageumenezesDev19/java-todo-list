package br.com.ageudev.todolist.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@RestController
@RequestMapping("/firstRoute")

public class FirstController {

  @GetMapping("/firstMethod")
  public String firstMessage() {
    return "It works!";
  }
}
