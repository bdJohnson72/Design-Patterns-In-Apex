/**
 * Created by bjohnson on 1/26/2022.
 */

import { LightningElement } from "lwc";
import updateInventory from '@salesforce/apex/FacadeControllor.updateInventory'
export default class ClientBefore extends LightningElement {
  productId;
  productCount;

  submit(){
    updateInventory({productId: this.productId, count: this.productCount})
  }

}