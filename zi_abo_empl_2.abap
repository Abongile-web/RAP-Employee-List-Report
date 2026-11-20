@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for Employee Basic Info 2'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_ABO_EMPL_2 as select from zdb_abo_empl
{
    key emplid as Emplid,
    fname as Fname,
    lname as Lname,
    gender as Gender,
    designation as Designation
    
}