package com.andrestroiano.taco.repositories;

import com.andrestroiano.taco.models.Ingredient;

public interface IngredientRepository {

    Iterable<Ingredient> findAll();

    Ingredient findOne(String id);

    Ingredient save(Ingredient ingredient);
}
