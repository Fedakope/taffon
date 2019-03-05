const initSkills = () => {

  const skills = document.querySelectorAll('.skill');
  const profileContent = document.querySelector('#profile-content');

  if (profileContent) {
    const form = profileContent.querySelector('.simple_form, .profile');
    form.classList.toggle('hidden'); // masque le formulaire
  }

  const toggleHaveSkillOnClick = (event) => {
    const skillInput = document.querySelector('#_profile_skill')
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
