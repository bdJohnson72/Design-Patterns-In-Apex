/**
 * Created by Brooks Johnson on 3/12/2022.
 */

import {LightningElement, wire} from 'lwc';
import subscribeUser from '@salesforce/apex/ObserverPatternController.subscribeUser'
import getProducts from '@salesforce/apex/ObserverPatternController.getProducts'
import {ShowToastEvent} from 'lightning/platformShowToastEvent';


export default class ProductSubscribe extends LightningElement {
    product;

    @wire(getProducts)
    wiredProduct({error, data}) {
        if (data) {
            this.product = data[0];
            console.log(JSON.stringify(this.product));
        }
        if (error) {
            console.error(error.message);
        }
    }

    async subscribeUser() {
        try {
            const input = this.template.querySelector('lightning-input');
            console.log(input)
            await subscribeUser({productId: this.product.Id, email: input.value})
            input.value = '';
            this.showToast();
        } catch (e) {
            console.error(e.message)
        }
    }

    showToast() {
        const event = new ShowToastEvent({
            message: 'Cool!! We will let you know when it is available'
        });
        this.dispatchEvent(event);
    }
}