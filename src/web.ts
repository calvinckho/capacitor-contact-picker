import { WebPlugin } from '@capacitor/core';
import { ContactPickerPlugin } from './definitions';

export class ContactPickerWeb extends WebPlugin implements ContactPickerPlugin {
    constructor() {
        super();
    }

    async close() {

    }
}

const ContactPicker = new ContactPickerWeb();

export { ContactPicker };
