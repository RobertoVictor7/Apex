import { LightningElement, wire } from 'lwc';
import getOpportunitiesAmountTotal from '@salesforce/apex/OpportunitiesAmount.getOpportunitiesAmountTotal';

export default class OpportunitiesSumShow extends LightningElement {
    totalAmount;
    @wire(getOpportunitiesAmountTotal) 
    wiredOpportunities({ error, data }) {
        if (data) {
            const formatter = new Intl.NumberFormat('en-US', {
                style: 'currency',
                currency: 'USD'
            });

            this.totalAmount = formatter.format(data);
        } else if (error) {
            console.error('Error fetching total opportunities amount', error);
        }
    }
}