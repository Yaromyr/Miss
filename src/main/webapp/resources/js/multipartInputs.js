/**
 * Created by Yulian Bulbuk on 04.07.2016.
 */

var inputIterator = 0;
$("#addPhoto").click(function () {
    $("#photos").append("<div><input name='picture' type='file'/></div>")
    inputIterator++;
  })

$("#deletePhoto").click(function () {
  if(inputIterator!=0){
    $("#photos div:last-child").remove();
    inputIterator--;
  }
})