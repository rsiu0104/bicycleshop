package com.company.bicycleshop.web.order;

import com.company.bicycleshop.entity.OrderStatus;
import com.company.bicycleshop.service.OrderService;
import com.haulmont.cuba.gui.components.AbstractEditor;
import com.company.bicycleshop.entity.Order;

import javax.inject.Inject;

public class OrderEdit extends AbstractEditor<Order> {
    @Inject
    private OrderService orderService;

    @Override
    protected boolean preCommit() {
        Order order = getItem();
        order.setAmount(orderService.calculateAmount(order));
        return super.preCommit();
    }

    @java.lang.Override
    protected void initNewItem(Order item) {
        super.initNewItem(item);
        item.setStatus(OrderStatus.NEW);
    }
}