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


export { avatarUpload }
