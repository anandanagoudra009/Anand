import { LightningElement, wire,track } from 'lwc';
import getAccounts from '@salesforce/apex/getrecord.getAccounts';

export default class AccountListLWC extends LightningElement {
   @track columns = [
      { label: 'Name', fieldName: 'Name' },
      { label: 'Id', fieldName: 'Id'}
  ];
 @track accountList;
       @wire (getAccounts) wiredAccounts({data,error}){
            if (data) {
               this.accountList = data;
            console.log(data); 
            } else if (error) {
            console.log(error);
            }
       }
  
}