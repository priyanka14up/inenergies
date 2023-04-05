//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.8-b130911.1802 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2017.01.12 at 05:49:26 PM GMT 
//


package com.caiso.soa.drregistrationdata_v1;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;


/**
 * An activity on a DistributedAssetContainer.
 * 
 * <p>Java class for DistributedActivity complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="DistributedActivity">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="action" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="submittedActiveEndDateTime" type="{http://www.w3.org/2001/XMLSchema}dateTime" minOccurs="0"/>
 *         &lt;element name="submittedActiveStartDateTime" type="{http://www.w3.org/2001/XMLSchema}dateTime" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "DistributedActivity", propOrder = {
    "action",
    "submittedActiveEndDateTime",
    "submittedActiveStartDateTime"
})
public class DistributedActivity {

    @XmlElement(required = true)
    protected String action;
    @XmlSchemaType(name = "dateTime")
    protected XMLGregorianCalendar submittedActiveEndDateTime;
    @XmlSchemaType(name = "dateTime")
    protected XMLGregorianCalendar submittedActiveStartDateTime;

    /**
     * Gets the value of the action property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAction() {
        return action;
    }

    /**
     * Sets the value of the action property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAction(String value) {
        this.action = value;
    }

    /**
     * Gets the value of the submittedActiveEndDateTime property.
     *
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *
     */
    public XMLGregorianCalendar getSubmittedActiveEndDateTime() {
        return submittedActiveEndDateTime;
    }

    /**
     * Sets the value of the submittedActiveEndDateTime property.
     *
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *
     */
    public void setSubmittedActiveEndDateTime(XMLGregorianCalendar value) {
        this.submittedActiveEndDateTime = value;
    }

    /**
     * Gets the value of the submittedActiveStartDateTime property.
     *
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *
     */
    public XMLGregorianCalendar getSubmittedActiveStartDateTime() {
        return submittedActiveStartDateTime;
    }

    /**
     * Sets the value of the submittedActiveStartDateTime property.
     *
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *
     */
    public void setSubmittedActiveStartDateTime(XMLGregorianCalendar value) {
        this.submittedActiveStartDateTime = value;
    }

}