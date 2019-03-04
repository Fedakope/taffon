const initTabs = () => {

  const tabs = document.querySelectorAll('.tab-underlined');


  const toggleActiveOnClick = (event) => {
    const activeTab = document.querySelector('.active');
    const activeContent = document.querySelector(`#${activeTab.id}-content`);
    const contentToShow = document.querySelector(`#${event.currentTarget.id}-content`);

    activeContent.classList.toggle('hidden'); // cache current content
    activeTab.classList.toggle('active'); // desactive current tab
    contentToShow.classList.toggle('hidden'); // affiche content cliqué
    event.currentTarget.classList.toggle('active'); // affiche tab cliquée
  };

  tabs.forEach((tab) => {
    tab.addEventListener('click', toggleActiveOnClick);
  });
};

export { initTabs };
