DROP PROCEDURE NAT_01_STAGING_INSERTS;

CREATE OR REPLACE PROCEDURE            "NAT_01_STAGING_INSERTS" 
AS
BEGIN

    INSERT INTO KITT_NISC3.NAT_INVOICE_HEADER
    SELECT * FROM niscinvoice.v_NISCFAA_INVOICES@kitt_kittinvoice;

    INSERT INTO KITT_NISC3.NAT_INVOICE_LINE_ITEM
    SELECT * FROM niscinvoice.V_NISCFAA_INVOICE_LINEITEMS@kitt_kittinvoice;

    COMMIT;
    
END NAT_01_STAGING_INSERTS;
/