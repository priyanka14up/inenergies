
package com.itron.mdm.curtailment._2008._05;

import javax.xml.ws.WebFault;


/**
 * This class was generated by Apache CXF 3.0.4
 * 2017-02-14T14:41:46.548Z
 * Generated source version: 3.0.4
 */

@WebFault(name = "MdmServiceFault", targetNamespace = "http://www.itron.com/mdm/common/2008/04")
public class ICurtailmentEventSaveExecuteBatchSaveMdmServiceFaultFaultMessage extends Exception {
    
    private com.itron.mdm.common._2008._04.MdmServiceFault mdmServiceFault;

    public ICurtailmentEventSaveExecuteBatchSaveMdmServiceFaultFaultMessage() {
        super();
    }
    
    public ICurtailmentEventSaveExecuteBatchSaveMdmServiceFaultFaultMessage(String message) {
        super(message);
    }
    
    public ICurtailmentEventSaveExecuteBatchSaveMdmServiceFaultFaultMessage(String message, Throwable cause) {
        super(message, cause);
    }

    public ICurtailmentEventSaveExecuteBatchSaveMdmServiceFaultFaultMessage(String message, com.itron.mdm.common._2008._04.MdmServiceFault mdmServiceFault) {
        super(message);
        this.mdmServiceFault = mdmServiceFault;
    }

    public ICurtailmentEventSaveExecuteBatchSaveMdmServiceFaultFaultMessage(String message, com.itron.mdm.common._2008._04.MdmServiceFault mdmServiceFault, Throwable cause) {
        super(message, cause);
        this.mdmServiceFault = mdmServiceFault;
    }

    public com.itron.mdm.common._2008._04.MdmServiceFault getFaultInfo() {
        return this.mdmServiceFault;
    }
}
