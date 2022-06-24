gsap.registerPlugin(ScrollTrigger);
//Menu Animme-------------------------------------------------------------
function Menu() {
  let menu_btn = document.querySelector('.hamburger_btn');
  if (menu_btn) {
    let menu_x = document.querySelector('.menu_close');
    let menuAnim = gsap.timeline({ ease: 'elastic', duration: 0.5 });
    gsap.set('.menu_nav-item', { y: '20px', opacity: 0 });
    gsap.set('.menu_btn', { y: '20px', opacity: 0 });
    gsap.set('.menu', { right: '-110%' });
    gsap.set('.menu_bg', { right: '-110%' });

    menu_btn.addEventListener('click', () => {
      menuAnim
        .to('.menu_bg', { duration: 0.5, right: '0%' })
        .to('.menu', { duration: 0.6, right: '0%' }, '<.3')
        .to('.menu_nav-item', { duration: 0.5, y: 0, opacity: 1, stagger: 0.1 })
        .to('.menu_btn', { duration: 0.2, y: 0, opacity: 1, stagger: 0.1 });
    });

    menu_x.addEventListener('click', () => {
      menuAnim
        .to('.menu_nav-item', {
          duration: 0.2,
          y: '20px',
          opacity: 0,
          stagger: 0.05,
        })
        .to('.menu_btn', { duration: 0.2, y: '20px', opacity: 0, stagger: 0.1 })
        .to('.menu', { duration: 0.5, right: '-110%' })
        .to('.menu_bg', { duration: 0.6, right: '-110%' }, '<.3');
    });
  }
}
//購物車-------------------------------------------------------------
function Cart() {
  let cart_o = document.querySelector('.control_cartbtn');
  // if (cart_o) {
  let cartAnim = gsap.timeline({ ease: 'elastic', duration: 0.5 });
  gsap.set('.cart', { right: '-100%' });

  cart_o.addEventListener('click', () => {
    cartAnim.to('.cart', { duration: 0.6, right: '0%' });
  });
  let cart_x = document.querySelector('.menu_close_cart');
  cart_x.addEventListener('click', () => {
    cartAnim.to('.cart', { duration: 0.5, right: '-100%' });
  });
  // }
}
// ARTS-----------------------------------------------------------------------
function animeArt() {
  let sections = document.querySelector('.art_container');
  gsap.to(sections, {
    // 以百分比為單位水平位移 -100% x item的數量
    // xPercent: -100 * (sections.length + 1),
    // left: () => `${(sections.scrollWidth - document.documentElement.clientWidth).toFixed(0) * -1}px`,
    left: '-5400px',
    ease: 'none',
    scrollTrigger: {
      start: '0',
      trigger: 'body',
      invalidareOnRefresh: true,
      // 類似position:sticky
      // pin: true,
      scrub: 1,
      // 數值越大滾動到最後的時間會越久
      end: '+=5400',
    },
  });

  let panel = document.querySelector('.panel');
  let artimgs = document.querySelectorAll('.art-work');

  artimgs.forEach((artimg) => {
    artimg.addEventListener('mouseover', function () {
      for (let index = 0; index < artimgs.length; index++) {
        let element = artimgs[index];
        element.classList.add('-smaller');
        element.classList.remove('-bigger');
      }
      artimg.classList.remove('-smaller');
      artimg.classList.add('-bigger');
    });

    artimg.addEventListener('mouseleave', function () {
      for (let index = 0; index < artimgs.length; index++) {
        let element = artimgs[index];
        element.classList.remove('-small');
        element.classList.remove('-big');
      }
    });
  });
}
//Index-------------------------------------------------------------
//Loader-------------------------------------------------------------
function loader() {
  let loader = gsap.timeline({ ease: 'Expo.easeInOut' });
  if (loader) {
    loader.to('#box', { duration: 1, opacity: 0 }).to('.loaderwrap', { duration: 0.8, top: '-100%' }, '<+=.2');
    let headerAnim = gsap.timeline({ ease: 'power2.out', duration: 0.8 });
    gsap.set('.navbar_container', { opacity: 0 });
    headerAnim.to('.navbar_line', { duration: 0.8, width: '100%' }).to('.navbar_container', { duration: 0.8, opacity: 1 }, '<');
  }
}
function landingIndex() {
  let loader = gsap.timeline({ ease: 'Expo.easeInOut' });
  gsap.set('.slider-control-wrap', { x: '-50%' });
  gsap.set('.landing-logo', { y: '100%' });
  loader
    .to('#box', { duration: 1, opacity: 0 })
    .to('.loaderwrap', { duration: 0.8, top: '-100%' }, '<+=.2')
    .to('.box-1', { duration: 0.5, y: '-100%' })
    .to('.box-2', { duration: 0.5, y: '-100%' }, '<+=.2')
    .to('.slider-control-wrap', { duration: 0.6, x: '0%' }, '<+=.2')
    .to('.landing-logo', { duration: 0.4, y: '0%' }, '<+=.2');
  let headerAnim = gsap.timeline({ ease: 'power2.out', duration: 0.8 });
  gsap.set('.navbar_container', { opacity: 0 });
  headerAnim.to('.navbar_line', { duration: 0.8, width: '100%' }).to('.navbar_container', { duration: 0.8, opacity: 1 }, '<');
}
//Header-------------------------------------------------------------
function header() {
  let headerAnim = gsap.timeline({ ease: 'power2.out', duration: 0.8 });
  gsap.set('.navbar_container', { opacity: 0 });
  headerAnim.to('.navbar_line', { duration: 0.8, width: '100%' }).to('.navbar_container', { duration: 0.8, opacity: 1 }, '<');
}
//ScrollIndex-------------------------------------------------------------
function scrollIndex() {
  // about
  // works
  let indexWorkAnim = gsap.timeline({
    scrollTrigger: {
      trigger: '.indexWorks',
      scrub: 0.1,
      start: '-100px', // position of trigger meets the scroller position
      end: '280px',
    },
  });
  indexWorkAnim
    .from('.indexWorks_card-left', { x: '80%', y: '-40%', rotate: '-5deg' })
    .from('.indexWorks_card-center', { y: '-20%' }, '<')
    .from('.indexWorks_card-right', { x: '-80%', y: '-40%', rotate: '5deg' }, '<');
}
// LabelUP-----------------------------------------------------------------------
function animeLabelUP() {
  let inputs = document.querySelectorAll('.input,textarea');
  //inputs的for迴圈
  for (let i = 0; i < inputs.length; i++) {
    //把fn包在變數裡(for input)
    let labelTrans = function (e) {
      if (e.target.value) {
        e.target.parentNode.querySelector('.input_label').classList.add('transform_y');
      } else {
        e.target.parentNode.querySelector('.input_label').classList.remove('transform_y');
      }
    };
    //讓每個input建立事件監聽並且執行函數labelTrans
    inputs[i].addEventListener('focus', labelTrans);
    inputs[i].addEventListener('blur', labelTrans);
  }
}

function animeDefault() {
  Cart();
  Menu();
}

function animeIndex() {
  scrollIndex();
}
