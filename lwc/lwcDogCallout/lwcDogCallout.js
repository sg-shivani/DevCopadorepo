import { LightningElement } from 'lwc';
import getDogs from '@salesforce/apex/lwcDogApi.getDogs';

export default class LwcDogCallout extends LightningElement {

    imageReady = false;
    loadingSpinner = false;
    pictureUrl;

    handleClick(){
        this.imageReady = false;
        this.loadingSpinner = true;

        getDogs({})
        .then(result =>{
            this.loadingSpinner = false;
            this.imageReady = true;
            this.pictureUrl = JSON.parse(result).message;
        })
    }
}