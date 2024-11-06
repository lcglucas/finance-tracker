import { Controller } from "@hotwired/stimulus";
import { toggle, leave } from "el-transition";

export default class extends Controller {
  static targets = ["notification", "button"];

  connect() {
    this.closeAfterTimeout();
  }

  toggle() {
    toggle(this.notificationTarget);
  }

  closeAfterTimeout() {
    setTimeout(() => {
      leave(this.notificationTarget);
    }, 3000);
  }
}
