package com.company.bicycleshop.service;


import com.company.bicycleshop.entity.Order;

import java.math.BigDecimal;

public interface OrderService {
    String NAME = "bicycleshop_OrderService";

    BigDecimal calculateAmount(Order order);
}