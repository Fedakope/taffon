const formPicture = document.querySelector('.update_picture')

const  event_picture_uploader = () => {
     if (formPicture) {
        const inputHtml = formPicture.querySelector(".event_picture input")
        inputHtml.addEventListener('input', (e) => {
          console.log("j'envoie le form")
          formPicture.submit()
        });
}
}


export { event_picture_uploader };