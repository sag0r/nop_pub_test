async function sleep(z) {
  await new Promise(r => setTimeout(r, z));
}

// the greenish overlay on the background
const BG_OVERLAY = `linear-gradient(282deg, rgba(174,213,121,0),
            rgba(99,144,56,0.8))`;

// typed.js options
const typeWriterOptions = {
  stringsElement: '#typed-strings',
  backDelay: 5000,
  typeSpeed: 60,
  loop: true,
  loopCount: 2,
  onLastStringBackspaced: changeSlide
};

// active slide, slider items, tped.js instance
let index = 0, sliders = [], typed;

async function setSlideContent(slideObj) {
  const imgContent = `${BG_OVERLAY},url(${slideObj.imgUrl})`;
  $('.nivo-banner').removeClass('fade-effect');
  await sleep(150);
  $('.nivo-banner')
    .css('background-image', imgContent)
    .addClass('fade-effect');
  await sleep(1500);
  $('.typed-caption').text(slideObj.caption);
  $('.typed-text').text(slideObj.text);
  typed = new Typed('#typed', typeWriterOptions);
  index = index >= sliders.length - 1 ? 0 : ++index;
}

function changeSlide() {
  typed.stop();
  $('#typed, .typed-caption, .typed-text').html('');
  $('.typed-cursor').remove();
  setSlideContent(sliders[index]);
}

document.onreadystatechange = function () {
  if (document.readyState == "complete") {
    sliders = $('.slider').toArray()
      .map(slider => {
        return {
          imgUrl: $(slider).attr('src'),
          caption: $(slider).data('caption'),
          text: $(slider).data('text')
        };
      });

    setSlideContent(sliders[index]);
  }
}