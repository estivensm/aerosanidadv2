(function() {

  (function($) {
    var box, close, defaults, html, init, overlay,
      _this = this;
    defaults = {
      overlay: true,
      esc: true,
      close: true,
      modal: true,
      opacity: 0.3,
      onTop: false,
      speed: 300,
      fixed: false,
      cancelText: 'Cancel',
      cancelClass: 'button',
      submitText: 'Ok',
      submitClass: 'button'
    };
    html = "<div id='lazybox'><div id='lazybox_body'></div></div>";
    box = $('#lazybox');
    overlay = $('#lazybox_overlay');
    close = $('#lazybox_close');
    $.lazybox = function(html, options) {
      return $.lazybox.show(html, options);
    };
    $.extend($.lazybox, {
      settings: $.extend({}, defaults),
      show: function(content, options) {
        var effect;
        options = init(options);
        $('#lazybox_body').html(content);
        $.lazybox.center(options.onTop, options.fixed);
        effect = options.onTop ? 'slideDown' : 'fadeIn';
        box[effect](options.speed);
        return options;
      },
      close: function(speed) {
        var effect;
        speed = speed || defaults.speed;
        effect = box.position().top === 0 ? 'slideUp' : 'fadeOut';
        box[effect](speed);
        return overlay.fadeOut(speed + 200);
      },
      center: function(onTop, fixed) {
        var y;
        if (fixed) {
          y = onTop ? 0 : (box.outerHeight()) / 2;
          if (y < 20 && !onTop) y = 20;
          return box.css({
            'margin-left': -box.outerWidth() / 2,
            'margin-top': -y,
            top: (onTop ? 0 : '49%'),
            position: 'fixed',
            left: '49%'
          });
        } else {
          y = onTop ? 0 : (($(window).height() - $('#lazybox').outerHeight()) / 2) + $(window).scrollTop();
          if (y < 20 && !onTop) y = 20;
          return box.css({
            top: y,
            left: (($(window).width() - box.outerWidth()) / 2) + $(window).scrollLeft(),
            position: 'absolute',
            margin: 0
          });
        }
      },
      confirm: function(element) {
        var message, options;
        options = $.extend(defaults, $.lazybox.settings);
        message = element.data('confirm');
        if (!message) return true;
        $.lazybox.show('<p>' + message + '</p><div class="lazy_buttons"></div>', {
          klass: 'confirm'
        });
        element.clone().attr('class', options.submitClass).removeAttr('data-confirm').text(options.submitText).appendTo('.lazy_buttons');
        $('.lazy_buttons').append(' ');
        $('<a>', {
          href: '',
          text: options.cancelText,
          'class': options.cancelClass
        }).appendTo('.lazy_buttons');
        return false;
      }
    });
    $.fn.lazybox = function(options) {
      var _this = this;
      return $(document).on('click', this.selector, function(e) {
        var a, href, imagesRegexp, img;
        a = $(e.currentTarget);
        href = a.attr('href');
        imagesRegexp = new RegExp('\\.(png|jpg|jpeg|gif)(\\?.*)?$', 'i');
        e.preventDefault();
        if (href.match(imagesRegexp)) {
          img = new Image();
          img.onload = function(element) {
            var nextLink,
              _this = this;
            options = $.lazybox.show(img, options);
            nextLink = a.is(':last-child') ? a.siblings('a[rel*=lazybox]:first') : a.next('a[rel*=lazybox]:first');
            if (nextLink.length !== 0) {
              return $('#lazybox img').bind('click', function() {
                return box.fadeOut(options.speed, function() {
                  return nextLink.click();
                });
              });
            }
          };
          return $(img).attr({
            'class': 'lazy_img',
            src: href
          });
        } else {
          return $.ajax({
            url: href,
            success: function(data) {
              return $.lazybox.show(data, options);
            },
            error: function() {
              return $.lazybox.close(options.speed);
            }
          });
        }
      });
    };
    return init = function(options) {
      var _this = this;
      options = $.extend($.extend({}, defaults), $.lazybox.settings, options);
      if (options.overlay) {
        $('body:not(:has(#lazybox_overlay))').append("<div id='lazybox_overlay'></div>");
        overlay = $('#lazybox_overlay');
        overlay.css({
          filter: 'alpha(opacity=' + options.opacity * 100 + ')',
          opacity: options.opacity
        }).fadeIn(options.speed + 200);
      }
      $('body:not(:has(#lazybox))').append(html);
      box = $('#lazybox');
      if (options.klass) {
        box.attr('class', options.klass);
      } else {
        box.removeClass();
      }
      if (options.close) {
        box.not(':has(#lazybox_close)').prepend($("<a id='lazybox_close' title='close'></a>"));
        close = $('#lazybox_close');
        if (options.closeImg) {
          close.attr('class', 'img').text('');
        } else {
          close.removeClass().text('×');
        }
      } else {
        close.remove();
      }
      if (!options.modal && options.overlay) {
        overlay.bind('click', function() {
          return $.lazybox.close(options.speed);
        });
      } else {
        overlay.unbind();
      }
      $(document).keyup(function(e) {
        if (e.keyCode === 27 && options.esc) return $.lazybox.close(options.speed);
      });
      box.on('click', '#lazybox_close, .lazy_buttons a', function(e) {
        $.lazybox.close(options.speed);
        return e.preventDefault();
      });
      return options;
    };
  })(jQuery);

}).call(this);
