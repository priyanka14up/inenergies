
package com.itron.mdm.curtailment._2008._05;

import com.itron.mdm.common._2008._04.GasMdmServiceFault;

import javax.xml.ws.WebFault;


/**
 * This class was generated by Apache CXF 3.0.4
 * 2017-02-14T14:41:46.523Z
 * Generated source version: 3.0.4
 */

@WebFault(name = "MdmServiceFault", targetNamespace = "http://www.itron.com/mdm/common/2008/04")
public class GasICurtailmentEventSaveManageEventMdmServiceFaultFaultMessage extends Exception {
    
    private GasMdmServiceFault gasMdmServiceFault;

    public GasICurtailmentEventSaveManageEventMdmServiceFaultFaultMessage() {
        super();
    }
    
    public GasICurtailmentEventSaveManageEventMdmServiceFaultFaultMessage(String message) {
        super(message);
    }
    
    public GasICurtailmentEventSaveManageEventMdmServiceFaultFaultMessage(String message, Throwable cause) {
        super(message, cause);
    }

    public GasICurtailmentEventSaveManageEventMdmServiceFaultFaultMessage(String message, GasMdmServiceFault gasMdmServiceFault) {
        super(message);
        this.gasMdmServiceFault = gasMdmServiceFault;
    }

    public GasICurtailmentEventSaveManageEventMdmServiceFaultFaultMessage(String message, GasMdmServiceFault gasMdmServiceFault, Throwable cause) {
        super(message, cause);
        this.gasMdmServiceFault = gasMdmServiceFault;
    }

    public GasMdmServiceFault getFaultInfo() {
        return this.gasMdmServiceFault;
    }
}