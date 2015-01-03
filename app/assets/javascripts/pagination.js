var days, today;
jQuery(function() {
  if ($('#infinite-scrolling').size() > 0) {
    console.log("I'm here")
    $(window).on('scroll', function() {
      console.log("I'm also here")
      var more_posts_url;
      more_posts_url = $('.pagination .next_page').attr('href');
      console.log(more_posts_url)
      if (more_posts_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60) {
        console.log("this is where i want to be")
        $('.pagination').html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />');
        $.getScript(more_posts_url);
      }
    });
  }
});

