const avatarUpload = () => {
  const uploadButton = document.querySelector("#avatar-upload")
  if (uploadButton) {
    const hiddenPicButton = document.querySelector("#avatar-input")
    uploadButton.addEventListener("click", () => {
      hiddenPicButton.click()

    })
    hiddenPicButton.addEventListener("change",() => {
      const userForm = document.querySelector(".edit_user")
      userForm.submit()
    })
  }

}


$(function() {
  $("#avatar-upload")
    .mouseover(function() {
       var src = $(this).attr("src").replace(@user.photo.key, "over.jpg");
       $(this).attr("src", src);
    })
    .mouseout(function() {
        var src = $(this).attr("src").replace("over.jpg", "image.jpg");
       $(this).attr("src", src);

    });
 });

export { avatarUpload }
