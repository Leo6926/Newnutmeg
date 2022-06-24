//跟隨的球
let R = document.querySelector.bind(document);
let Ron = document.addEventListener.bind(document);

let xmouse, ymouse;
Ron('mousemove', function (e) {
  xmouse = e.clientX || e.pageX;
  ymouse = e.clientY || e.pageY;
});

let ball = R('#ball');
let x = void 0,
  y = void 0,
  dx = void 0,
  dy = void 0,
  tx = 0,
  ty = 0,
  key = -1;

let followMouse = function followMouse() {
  key = requestAnimationFrame(followMouse);

  if (!x || !y) {
    x = xmouse;
    y = ymouse;
  } else {
    dx = (xmouse - x) * 0.125;
    dy = (ymouse - y) * 0.125;
    if (Math.abs(dx) + Math.abs(dy) < 0.1) {
      x = xmouse;
      y = ymouse;
    } else {
      x += dx;
      y += dy;
    }
  }
  ball.style.left = x + 'px';
  ball.style.top = y + 'px';
};

//游標本身
let mouseCursor = document.querySelector('.cursor');
window.addEventListener('mousemove', cursor);

function cursor(event) {
  mouseCursor.style.top = event.y + 'px';
  mouseCursor.style.left = event.x + 'px';
}

window.addEventListener('mousedown', () => {
  ball.classList.add('--small');
});
window.addEventListener('mouseup', () => {
  ball.classList.remove('--small');
});

//獲取所有links
let links = document.querySelectorAll('.works_item, .art_work');

links.forEach((link) => {
  link.addEventListener('mouseenter', () => {
    ball.classList.add('--c_active');
    mouseCursor.classList.add('--c_disappear');
  });
  link.addEventListener('mouseleave', () => {
    ball.classList.remove('--c_active');
    mouseCursor.classList.remove('--c_disappear');
  });
});
