package com.caiso.soa.submitdrregistrations_v1_wsdl;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.xml.bind.annotation.XmlSeeAlso;

/**
 * This class was generated by Apache CXF 3.0.4
 * 2017-01-13T13:33:53.293Z
 * Generated source version: 3.0.4
 * 
 */
@WebService(targetNamespace = "http://www.caiso.com/soa/submitDRRegistrations_v1.wsdl", name = "SubmitDRRegistrations_v1")
@XmlSeeAlso({com.caiso.soa._2006_06_13.standardattachmentinfor.ObjectFactory.class, com.caiso.soa.standardoutput_v1.ObjectFactory.class})
@SOAPBinding(style = SOAPBinding.Style.DOCUMENT, parameterStyle = SOAPBinding.ParameterStyle.BARE)
public interface SubmitDRRegistrationsV1 {

    /**
     * submit DRRegistrations
     */
    @WebMethod(operationName = "submitDRRegistrations_v1", action = "http://www.caiso.com/soa/submitDRRegistrations_v1")
    @WebResult(name = "StandardOutput", targetNamespace = "http://www.caiso.com/soa/StandardOutput_v1.xsd#", partName = "StandardOutput")
    public com.caiso.soa.standardoutput_v1.StandardOutput submitDRRegistrationsV1(
            @WebParam(partName = "DRRegistrations_attachment", name = "DRRegistrations_attachment")
                    byte[] drRegistrationsAttachment
    ) throws FaultReturnType;
}
