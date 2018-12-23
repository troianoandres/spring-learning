package com.andrestroiano.taco.repositories;

import com.andrestroiano.taco.models.Order;

public interface OrderRepository {

    Order save(Order order);
}
