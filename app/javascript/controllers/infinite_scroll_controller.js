import { Controller } from "stimulus";
import Rails from "@rails/ujs";


export  default class extends Controller {
  static targets = ['entries', 'pagination']

  scroll(){
    let nextPage = this.paginationTarget.querySelector("a[rel='next']");
    if (!nextPage) { return };
    let url = nextPage.href;

    let body = document.body,
        html = document.documentElement;
    let height = Math.max(body.scrollHeight, body.offsetHeight, html.clientHeight, html.scrollHeight, html.offsetHeight);

    if(window.pageYOffset >= height - window.innerHeight) {
      this.loadMore(url);
    }


    console.log(window.pageYOffset);
  }

  loadMore(url) {
    Rails.ajax({
      type: 'GET',
      url: url,
      dataType: 'json',
      success: (data) => {
        this.entriesTarget.insertAdjacentHTML('beforeend', data.entries);
        this.paginationTarget.innerHTML = data.pagination;
      }
    })
  }
}