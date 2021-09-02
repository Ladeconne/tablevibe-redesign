let colls = document.querySelectorAll(".collapsible");

const collapse = (e) => {
  const button = e.currentTarget;
  button.classList.toggle("active");
  let content = button.nextElementSibling;
  content.classList.toggle("active");
  let height = content.scrollHeight;
  content.style.setProperty('--max-height', height + 'px');
};
colls.forEach(collapsible => {
    collapsible.addEventListener("click", collapse);
});
