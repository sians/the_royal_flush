const tabs = document.querySelectorAll(".nav-item")
const tabPanes = document.querySelectorAll(".tab-pane")

const tabsEventListener = () => {
  tabs.forEach((tab) => {
    // add event listener to tab button
    tab.addEventListener("click", event => {
      // get the corresponding tab pane id
      const tabTarget = document.querySelector(`#tabs-${event.currentTarget.id[4]}`)
      // remove all active classes from existing tabPanes
      tabPanes.forEach((tabPane) => {
        tabPane.classList.remove("active");
      });
      // add active to current tabTarget
      tabTarget.classList.add("active");
    });
  });
}

export { tabsEventListener };
