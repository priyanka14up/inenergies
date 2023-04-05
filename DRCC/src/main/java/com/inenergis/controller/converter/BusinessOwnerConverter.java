package com.inenergis.controller.converter;

import com.inenergis.entity.IdentifiableEntity;
import com.inenergis.service.BusinessOwnerService;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import javax.inject.Inject;

@FacesConverter(value = "businessOwnerConverter")
public class BusinessOwnerConverter implements Converter {

    @Inject
    BusinessOwnerService businessOwnerService;

    @Override
    public Object getAsObject(FacesContext context, UIComponent component, String value) {
        try {
            return businessOwnerService.getById(Long.valueOf(value));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    @Override
    public String getAsString(FacesContext context, UIComponent component, Object value) {
        String str = "";
        if (value != null && IdentifiableEntity.class.isAssignableFrom(value.getClass())) {
            str = ((IdentifiableEntity) value).getId().toString();
        }
        return str;
    }
}