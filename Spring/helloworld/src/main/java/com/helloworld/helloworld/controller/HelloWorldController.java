package com.helloworld.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;									//GET,PUT,POST,DELETE
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController //Indica para o spring que esse arquivo vai conter uma classe controladora
@RequestMapping("/hello-world") //define o nome do endpoint

public class HelloWorldController {
	
	@GetMapping
	public String helloWorld()
	{
		return "Hello World!";
	}
	
	@GetMapping("/bsm")
	public String bsm()
	{
		return "Mentalidades: Orientação ao futuro, Responsabilidade pessoal, Mentalidade de crescimento e Persistência."
				+ " Habilidades: Trabalho em equipe, Orientação  ao detalhe, Proatividade e Comunicação";
	}
	@GetMapping("/objetivo")
	public String objetivo()
	{
		return "Meu principal objetivo nessa semana, é terminar de estudar POO (sim, to um pouco atrasada nessa matéria, "
				+ "mas agora sim to começando a entender melhor) e realmente aprender sobre, além de dicar fera no Springboot";
	}

}
