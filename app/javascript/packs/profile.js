const tabs = document.querySelectorAll(".nav-item")

const tabsEventListener = (tabs) => {
  tabs.forEach((tab) => {
    tab.addEventListener("click", {
      tab.classList.add("active")
    })
  })
}

