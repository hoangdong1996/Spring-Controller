package com.codegym.controller;

import com.codegym.model.Calculator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CalculatorController {

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("operator", "+");
        model.addAttribute("view", "calculatorForm");
        return "calculatorForm";
    }

    @PostMapping("/calculator")
    public String index(@RequestParam String leftOperand, @RequestParam String operator, @RequestParam String rightOperand, Model model) {
        double leftNumber;
        try {
            leftNumber = Double.parseDouble(leftOperand);
        } catch (NumberFormatException var13) {
            leftNumber = 0.0D;
        }

        double rightNumber;
        try {
            rightNumber = Double.parseDouble(rightOperand);
        } catch (NumberFormatException var12) {
            rightNumber = 0.0D;
        }

        Calculator calculator = new Calculator(leftNumber, rightNumber, operator);
        double result = calculator.calculateResult();
        model.addAttribute("leftOperand", leftNumber);
        model.addAttribute("operator", operator);
        model.addAttribute("rightOperand", rightNumber);
        model.addAttribute("result", result);
        model.addAttribute("view", "calculatorForm");
        return "calculatorForm";
    }


}
