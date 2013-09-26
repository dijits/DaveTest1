insert into person (PERSON_NO,COMPANY_NO,SALUTATION,SURNAME,GIVEN_NAMES,JOB_TITLE,COST_CENTRE,USER_ID,ACTIVE,PHONE,FAX,MOBILE,EMAIL,EMPLOYEE_NR,RETIRE_DATE,ADDR_NO,UPDATE_USER_ID,UPDATE_DESC,UPDATE_DATE,REPORT_DIVISION,REPORT_REGION,PASSWORD_RESET,PASS_VIOLATION_COUNT,PASS_VIOLATION_DATE,CREATE_DATE,PASSWORD_CHANGED_DATE,DETAILS_UPDATED_DATE,AUTHORITY_AMOUNT,AUTH_CODE,AUTH_CODE_CREATED_DATE,EMPLOYEE_TYPE,USER_TYPE,IVR_USER_ID,IVR_PIN,SYSTEM_ACCOUNT,USER_PWD,IVR_LOGIN_ATTEMPT,PREF_LOGIN_VIEW,PERSON_LEVEL_NO,PERSON_LEVEL_VALUE,MOBILE_ENABLED) 
            values (person_seq.nextval,(select company_no from customer where customer_id=':customerId'),null,'RoseDavidA','SteveDavidA','Yarris Business Development Manager',null,':userId','1','03 9856 2667','03 9856 2667','0419 780 737','stevedavid.rosedavid@yarris.com',null,null,null,'SSROSE','MOD',to_date('13/SEP/13','DD/MON/RR'),null,null,'0',0,null,to_date('03/MAY/12','DD/MON/RR'),to_date('02/AUG/13','DD/MON/RR'),to_date('13/SEP/13','DD/MON/RR'),null,null,null,'A','CUSTOMER',null,null,'0','EnG3YiIN73SDOesOOjMyFEG0gNo=',0,null,null,null,null);


insert into MULAN_GROUP_MEMBER (PRINCIPAL, GROUP_NAME) values (':userId', 'CustSysAdmin');

insert into USER_HIERARCHY (USER_HIERARCHY_NO,COMPANY_NO,PERSON_NO,USER_HIERARCHY_PARENT_NO) 
       values (USER_HIERARCHY_seq.nextval,(select company_no from customer where customer_id=':customerId'),person_seq.currval,
       (select user_hierarchy_no from customer c, user_hierarchy uh  where customer_id=':customerId' and c.company_no=uh.company_no and user_hierarchy_parent_no IS NULL));
