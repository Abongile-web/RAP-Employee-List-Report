@EndUserText.label : 'Employees - Basic information'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zdb_abo_empl {

  key client  : abap.clnt not null;
  key emplid  : zde_emplid_ab not null;
  fname       : zde_fname_ab;
  lname       : zde_lname_ab;
  gender      : zde_gender_ab;
  designation : zde_designation_ab;

}