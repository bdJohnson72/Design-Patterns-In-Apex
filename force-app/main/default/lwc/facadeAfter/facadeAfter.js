/**
 * Created by bjohnson on 1/26/2022.
 */

import { LightningElement, track } from "lwc";
import processOrder from '@salesforce/apex/FacadeControllor.processOrder';

export default class FacadeAfter extends LightningElement {
@track orderDetails = {};

  updateProductName(event){
    this.updateOrder({productName: event.target.value});
  }

  updateProductCount(event){
    this.updateOrder({productCount: event.target.value});
  }

  updateAddress(event){
    this.updateOrder({address:event.target.value});
  }

  updateDiscount(event){
    this.updateOrder({discount:event.target.value});
  }

  updatePayment(event){
    this.updateOrder({cardNumber:event.target.value});
  }

  updateOrder(orderUpdate){
    this.orderDetails = {...this.orderDetails, ...orderUpdate };
    console.log(`orderDetails after update: ${JSON.stringify(this.orderDetails)}`);
  }


  async submit(){
    console.log(this.orderDetails);
    console.log(`value in order details = ${JSON.stringify(this.orderDetails)}`);
    processOrder({details:this.orderDetails})
      .then((result) =>{
        console.log(`result ${result}`);
      }).catch((error) => {
        console.log(error)
    })
  }
}