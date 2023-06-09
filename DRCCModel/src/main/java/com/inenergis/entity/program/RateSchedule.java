package com.inenergis.entity.program;


public enum RateSchedule {

    A__1("A  1"),
    A1("A1"),
    A10P("A10P"),
    A10PX("A10PX"),
    A10S("A10S"),
    A10SV("A10SV"),
    A10SX("A10SX"),
    A10T("A10T"),
    A10TX("A10TX"),
    A15("A15"),
    A1F("A1F"),
    A1X("A1X"),
    A6("A6"),
    ABS_TX4("ABS-TX4"),
    AG1A("AG1A"),
    AG1B("AG1B"),
    AG4A("AG4A"),
    AG4B("AG4B"),
    AG4C("AG4C"),
    AG4D("AG4D"),
    AG4E("AG4E"),
    AG4F("AG4F"),
    AG5A("AG5A"),
    AG5B("AG5B"),
    AG5C("AG5C"),
    AG5D("AG5D"),
    AG5E("AG5E"),
    AG5F("AG5F"),
    AGICE("AGICE"),
    AGRA("AGRA"),
    AGRB("AGRB"),
    AGRD("AGRD"),
    AGRE("AGRE"),
    AGVA("AGVA"),
    AGVB("AGVB"),
    AGVD("AGVD"),
    AGVE("AGVE"),
    E1("E1"),
    E19P("E19P"),
    E19S("E19S"),
    E19T("E19T"),
    E20P("E20P"),
    E20S("E20S"),
    E20T("E20T"),
    E36("E36"),
    E37P("E37P"),
    E37S("E37S"),
    E37T("E37T"),
    E3A("E3A"),
    E3B("E3B"),
    E6("E6"),
    E7("E7"),
    E8("E8"),
    EA9("EA9"),
    EB9("EB9"),
    ECLSD("ECLSD"),
    ECONV("ECONV"),
    EM("EM"),
    EML("EML"),
    EMTOU("EMTOU"),
    ENET("ENET"),
    ES("ES"),
    ESL("ESL"),
    ESR("ESR"),
    ESRL("ESRL"),
    ET("ET"),
    ETL("ETL"),
    ETOUA("ETOUA"),
    ETOUB("ETOUB"),
    EVA("EVA"),
    EVB("EVB"),
    GNGV1("GNGV1"),
    GNTD("GNTD"),
    HA1("HA1"),
    HA10P("HA10P"),
    HA10PX("HA10PX"),
    HA10S("HA10S"),
    HA10SX("HA10SX"),
    HA10T("HA10T"),
    HA10TX("HA10TX"),
    HA1X("HA1X"),
    HA6("HA6"),
    HAG1A("HAG1A"),
    HAG1B("HAG1B"),
    HAG4A("HAG4A"),
    HAG4B("HAG4B"),
    HAG4C("HAG4C"),
    HAG5A("HAG5A"),
    HAG5B("HAG5B"),
    HAG5C("HAG5C"),
    HAGICE("HAGICE"),
    HAGRA("HAGRA"),
    HAGRB("HAGRB"),
    HAGVA("HAGVA"),
    HAGVB("HAGVB"),
    HE1("HE1"),
    HE19P("HE19P"),
    HE19S("HE19S"),
    HE19T("HE19T"),
    HE1N("HE1N"),
    HE20P("HE20P"),
    HE20S("HE20S"),
    HE37P("HE37P"),
    HE37S("HE37S"),
    HE6("HE6"),
    HE6N("HE6N"),
    HE7("HE7"),
    HE7N("HE7N"),
    HE8("HE8"),
    HEA9("HEA9"),
    HEB9("HEB9"),
    HEM("HEM"),
    HEML("HEML"),
    HEMTOU("HEMTOU"),
    HESL("HESL"),
    HESR("HESR"),
    HET("HET"),
    HETL("HETL"),
    HETOUA("HETOUA"),
    HETOUAN("HETOUAN"),
    HETOUB("HETOUB"),
    HETOUBN("HETOUBN"),
    HETOUP1("HETOUP1"),
    HETOUP2("HETOUP2"),
    HETOUP3("HETOUP3"),
    HEVA("HEVA"),
    HEVAN("HEVAN"),
    HEVB("HEVB"),
    HLS3("HLS3"),
    HTC1("HTC1"),
    LS1_A("LS1-A"),
    LS2_A("LS2-A"),
    LS2_B("LS2-B"),
    LS3("LS3"),
    LS3F("LS3F"),
    NULL("NULL"),
    OL1("OL1"),
    RESBCTB("RESBCTB"),
    RESBCTG("RESBCTG"),
    SA1("SA1"),
    SA10PX("SA10PX"),
    SA10S("SA10S"),
    SA10SX("SA10SX"),
    SA10T("SA10T"),
    SA1X("SA1X"),
    SA6("SA6"),
    SAG4B("SAG4B"),
    SAG4E("SAG4E"),
    SE1("SE1"),
    SE19P("SE19P"),
    SE19S("SE19S"),
    SE20P("SE20P"),
    SE20S("SE20S"),
    SE20T("SE20T"),
    SE37P("SE37P"),
    SE37S("SE37S"),
    SE8("SE8"),
    SEM1("SEM1"),
    SPEC("SPEC"),
    STOUP("STOUP"),
    STOUS("STOUS"),
    STOUT("STOUT"),
    TC1("TC1"),
    TC1F("TC1F"),
    USAGE("USAGE");


    private String label;

    RateSchedule(String label){
       this.label = label;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }
}

