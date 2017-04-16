package com.company.bicycleshop.web.order;

import com.company.bicycleshop.entity.Order;
import com.company.bicycleshop.entity.OrderStatus;
import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.components.Component;
import com.haulmont.cuba.gui.data.CollectionDatasource;

import javax.inject.Inject;
import java.util.UUID;


public class OrderBrowse extends AbstractLookup {

    @Inject
    private CollectionDatasource<Order, UUID> ordersDs;

    public void onBtnNewStatusClick(Component source) {
        Order selectedItem = ordersDs.getItem();
        if (selectedItem != null) {
            selectedItem.setStatus(OrderStatus.NEW);
            ordersDs.commit();
        }
    }
}