import { Controller } from "stimulus";
import Rails from "@rails/ujs";

export  default class extends Controller {

  PreviewImage(){
    if (this.element.files) {
      let placeToInsertImagePreview = $(this.element).closest('.row').find('.preview-images')
      placeToInsertImagePreview.html('');
      var filesAmount = this.element.files.length;

      for (let i = 0; i < filesAmount; i++) {
        var reader = new FileReader();

        reader.onload = function(event) {
          $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(placeToInsertImagePreview);
        }

        reader.readAsDataURL(this.element.files[i]);
      }
    }
  }

  DeleteImage() {
    Rails.ajax({
      type: 'DELETE',
      url: `/images/${$(this.element).attr("image-id")}`,
      dataType: 'json',
      success: (data) => {
        $(`img#${data.id}`).closest('.preview-img-wrap').remove()
      }
    })
  }
}