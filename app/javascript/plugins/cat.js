
const updateCategories = () => {
	const jobCategory = document.querySelector('#job_category');
	const jobCategories = JSON.parse(document.querySelector('#list').dataset.jobCategories);
	const jobSelect = document.querySelector('#job_skill_id');

	jobCategory.addEventListener('change', () => {
		const matchingSkills = jobCategories.filter((skill) => {
			return jobCategory.value === skill.category;
		});

		let html = "";
		matchingSkills.forEach((skill) => {
			html += `<option value="${skill.name}">${skill.name}</option>`;
		});
		jobSelect.innerHTML = html;

	});



};
export { updateCategories };


