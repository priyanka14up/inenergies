package com.inenergis.entity.program;

public enum CDWAttribute {
    SA_STATUS("SA STATUS"),
    SA_ID("SA_ID"),
    ACCOUNT_ID("ACCOUNT ID"),
    PREMISE_ID("PREMISE_ID"),
    METER_ID("METER_ID"),
    PERSON_ID("PERSON_ID"),
    LAST_NAME("LAST_NAME"),
    SERVICE_ADDRESS1("SERVICE ADDRESS1"),
    SERVICE_ADDRESS2("SERVICE ADDRESS2"),
    SERVICE_CITY_UPR("SERVICE CITY UPR"),
    SERVICE_STATE("SERVICE STATE"),
    SERVICE_POSTAL("SERVICE POSTAL"),
    PHONE("PHONE"),
    MAILING_ADDRESS1("MAILING ADDRESS1"),
    MAILING_ADDRESS2("MAILING ADDRESS2"),
    MAILING_CITY_UPR("MAILING CITY UPR"),
    MAILING_STATE("MAILING STATE"),
    MAILING_ZIP("MAILING ZIP"),
    RS_CD("RS_CD"),
    RES_YN_IND("RES_YN_IND"),
    SUBSTATION("SUBSTATION"),
    FEEDER("FEEDER"),
    SP_ID("SP_ID"),
    MEDICAL_BASELINE_IND("MEDICAL_BASELINE_IND"),
    LIFE_SUPPORT_IND("LIFE_SUPPORT_IND"),
    SMART_RATE_IND("SMART RATE_IND"),
    SA_SP_START_DATE("SA_SP_START_DATE"),
    SA_SP_END_DATE("SA_SP_END_DATE"),
    PREMISE_TYPE("PREMISE_TYPE"),
    SR_START_DATE("SR_START_DATE"),
    SR_END_DATE("SR_END_DATE"),
    PDP_ENROLLED("PDP_ENROLLED"),
    PDP_STATUS("PDP_STATUS"),
    PDP_START_DATE("PDP_START_DATE"),
    PDP_STOP_DATE("PDP_STOP_DATE"),
    PDP_PLAN_OPTIONS("PDP_PLAN_OPTIONS"),
    ELEC_USAGE_NONRES("ELEC_USAGE_NONRES"),
    PDP_RESERVATION_CAPACITY_APPLIED_VALUE("PDP_RESERVATION_CAPACITY_APPLIED_VALUE"),
    HAS_3RD_PARTY_DRP("HAS_3RD_PARTY_DRP"),
    PHONE_EXTENSION("PHONE_EXTENSION"),
    PGE_IS_DRP("PGE_IS_DRP"),
    UNIQ_SA_ID("UNIQ_SA_ID"),
    UNIQ_SA_ID_CREATE_DATE("UNIQ_SA_ID_CREATE_DATE"),
    UNIQ_SA_ID_WARN_FLAG("UNIQ_SA_ID_WARN_FLAG"),
    SA_UUID("SA_UUID"),
    DO_BUS_AS_NM("DO_BUS_AS_NM"),
    SA_START_DATE("SA_START_DATE"),
    SA_END_DATE("SA_END_DATE"),
    SA_NAICS("SA_NAICS"),
    BILL_CYCLE_CD("BILL_CYCLE_CD"),
    CUST_CLASS_CD("CUST_CLASS_CD"),
    REVENUE_CLASS_DESC("REVENUE_CLASS_DESC"),
    FERA_FLAG("FERA_FLAG"),
    BILL_SYSTEM("BILL_SYSTEM"),
    CUST_SIZE("CUST_SIZE"),
    MARKET_SEGMENT("MARKET_SEGMENT"),
    CARE_FLAG("CARE_FLAG"),
    OPERATION_AREA("OPERATION_AREA"),
    PREM_BASELINE_CHAR("PREM_BASELINE_CHAR"),
    MTR_BADGENBR("MTR_BADGENBR"),
    SM_STATUS("SM_STATUS"),
    MTR_INSTALL_DT("MTR_INSTALL_DT"),
    MTR_UNINSTALL_DT("MTR_UNINSTALL_DT"),
    SM_MODULE_MFR("SM_MODULE_MFR"),
    MTR_CONFIG_TYPE("MTR_CONFIG_TYPE"),
    MTR_READ_FREQ("MTR_READ_FREQ"),
    MTR_MFG("MTR_MFG"),
    PDP_BILL_PROTECTION("PDP_BILL_PROTECTION"),
    SR_BILL_PROTECTION("SR_BILL_PROTECTION"),
    SA_TYPE_CD("SA_TYPE_CD"),
    CUSTOMER_MDMA_COMPANY_NAME("CUSTOMER_MDMA_COMPANY_NAME"),
    CUSTOMER_MSP_COMPANY_NAME("CUSTOMER_MSP_COMPANY_NAME"),
    CUSTOMER_LSE_COMPANY_NAME("CUSTOMER_LSE_COMPANY_NAME"),
    CUST_METER_READ_CYCLE12("CUST_METER_READ_CYCLE12"),
    CUST_SERVICE_VOLTAGE_CLASS("CUST_SERVICE_VOLTAGE_CLASS"),
    SA_SP_ID("SA_SP_ID"),
    RATE_CODE_EFFECTIVE_DATE("RATE_CODE_EFFECTIVE_DATE"),
    SERVICE_TYPE("SERVICE_TYPE"),
    BUSINESS_ACTIVITY_DESC("BUSINESS_ACTIVITY_DESC"),
    BUS_OWNER("BUS_OWNER"),
    DIVISION_CODE_19("DIVISION_CODE_19"),
    CIRCUIT_NUMBER("CIRCUIT_NUMBER"),
    SUB_STATION_NUMBER("SUB_STATION_NUMBER"),
    COUNTY("COUNTY"),
    CLIMATE_ZONE("CLIMATE_ZONE"),
    ESS_DIVISION_CODE("ESS_DIVISION_CODE"),
    SOURCE_SIDE_DEVICE_NUMBER("SOURCE_SIDE_DEVICE_NUMBER"),
    LATITUDE("LATITUDE"),
    LONGITUDE("LONGITUDE"),
    TRFMR_NUMBER("TRFMR_NUMBER"),
    TRFMR_BDG_NUMBER("TRFMR_BDG_NUMBER"),
    ROB_CODE("ROB_CODE"),
    CUSTOMER_MDMA_CODE("CUSTOMER_MDMA_CODE"),
    CUSTOMER_MSP_CODE("CUSTOMER_MSP_CODE"),
    CUSTOMER_LSE_CODE("CUSTOMER_LSE_CODE");

    private String label;

    CDWAttribute(String label){
       this.label = label;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }
}