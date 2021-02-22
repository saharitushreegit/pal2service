namespace com.test.pal2service;
using { managed, cuid  } from '@sap/cds/common';
 
entity Stores {
  Key StoreID       : String(4);
  StoreType     : String(5);
  StoreName     : String(30);
}
 
entity Departments {
  Key DepartmentID         : String(4);
  DepartmentDescription : String(30);
}
 
entity StoresToDepartments {
   Key StoreID : String(4);
   Key DepartmentID    : String(4);
   //Key Store : Association to Stores;
   //Key Department    : Association to Departments;
}

entity Batches : cuid, managed {
  Store            : Association to Stores; //String(4);
  Department       : Association to Departments; //String(4);
  BatchID          : Integer;
  Changed_Monday    : Boolean;
  Time_Monday      : Time;
  Changed_Tuesday   : Boolean;
  Time_Tuesday     : Time;
  Changed_Wednesday : Boolean;
  Time_Wednesday   : Time;
  Changed_Thursday  : Boolean;
  Time_Thursday    : Time;
  Changed_Friday    : Boolean;
  Time_Friday      : Time;
  Changed_Saturday  : Boolean;
  Time_Saturday    : Time;    
  Changed_Sunday    : Boolean;
  Time_Sunday      : Time;    
}
 
/*entity tempBatches : cuid, managed {
  Store            : Association to Stores; //String(4);
  Department       : Association to Departments; //String(4);
  BatchID          : Integer;
  Active_Monday    : Boolean;
  Time_Monday      : Time;
  Active_Tuesday   : Boolean;
  Time_Tuesday     : Time;
  Active_Wednesday : Boolean;
  Time_Wednesday   : Time;
  Active_Thursday  : Boolean;
  Time_Thursday    : Time;
  Active_Friday    : Boolean;
  Time_Friday      : Time;
  Active_Saturday  : Boolean;
  Time_Saturday    : Time;    
  Active_Sunday    : Boolean;
  Time_Sunday      : Time;    
}*/