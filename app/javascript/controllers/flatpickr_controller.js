import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

export default class extends Controller{
    connect() {
        console.log("Hello World", this.element);
        flatpickr(".start_time", {
            enableTime: true,
            dateFormat: "F j, Y h:i K",
        });
        flatpickr(".end_time", {
          enableTime: true,
          dateFormat: "F j, Y h:i K",
        });
        flatpickr(".event_date");
    }
}