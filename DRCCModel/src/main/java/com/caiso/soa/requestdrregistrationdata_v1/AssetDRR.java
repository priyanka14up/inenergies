
package com.caiso.soa.requestdrregistrationdata_v1;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for Asset_DRR complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Asset_DRR"&gt;
 *   &lt;complexContent&gt;
 *     &lt;extension base="{http://www.caiso.com/soa/RequestDRRegistrationData_v1.xsd#}IdentifiedObjectmrid_DRR"&gt;
 *     &lt;/extension&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Asset_DRR")
@XmlSeeAlso({
    AssetContainerDRR.class
})
public class AssetDRR
    extends IdentifiedObjectmridDRR
{


}
