const initSkills = () => {

  const skills = document.querySelectorAll('.skill');
  let form = document.querySelector('.simple_form, .profile');
  form.classList.toggle('hidden'); // masque le formulaire

  const toggleHaveSkillOnClick = (event) => {
    let skillInput = document.querySelector('#_profile_skill')
    skillInput.value = event.currentTarget.id
    if (event.currentTarget.checked === true) {
      form.method = 'POST';
      form.submit();
    // } else {
    //   form.method = 'DELETE'; // It doesn't work... don't know why yet
    //   form.submit();
    };
  };

  skills.forEach((skill) => {
    skill.addEventListener('click', toggleHaveSkillOnClick);
  });
};

export { initSkills };
