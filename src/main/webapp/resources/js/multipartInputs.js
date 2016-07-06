/**
 * Created by Yulian Bulbuk on 04.07.2016.
 */

var inputIterator = 0;
$("#addPhoto").click(function () {
    $("#add-new-dress").append("<div><input type='file'/></div>")
    inputIterator++;
  })

$("#deletePhoto").click(function () {
  if(inputIterator!=0){
    $("#add-new-dress div:last-child").remove();
    inputIterator--;
  }
})