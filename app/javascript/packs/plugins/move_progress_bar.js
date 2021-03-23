
const moveProgressBar = (e) => {
  let progressBar = document.querySelector('.progress-bar');
  progressBar.querySelectorAll('div').forEach(el => el.style.color = 'black');
  if (e.target.dataset.step == 'first') {
    progressBar.children[0].style.color = 'red'
  }
  if (e.target.dataset.step == 'billing') {
    progressBar.children[1].style.color = 'red'
  }
  if (e.target.dataset.step == 'complete') {
    progressBar.children[2].style.color = 'red'
  }
}

export { moveProgressBar }
