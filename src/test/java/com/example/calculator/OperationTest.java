package com.example.calculator;

import org.junit.jupiter.api.*;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class OperationTest {

    @Test
    @DisplayName("Additionner 2 nombres")
    public void add() {
        assertEquals(2, Operation.add(1, 1));
    }

    @Test
    @DisplayName("Soustraire 2 nombres")
    public void sub() {
        assertEquals(0, Operation.sub(1, 1));
    }
}
