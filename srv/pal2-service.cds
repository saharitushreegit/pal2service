using com.test.pal2service as my from '../db/data-model';

service PAL2Service {
    entity Stores as projection on my.Stores;  
    entity Departments as projection on my.Departments;  
    entity StoresToDepartments as projection on my.StoresToDepartments;  
    entity Batches as projection on my.Batches;  

}