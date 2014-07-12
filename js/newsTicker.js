// Process the RSS feed through the Google API to return as JSON for jQuery
function parseRSS(url, callback) {
  $.ajax({
    url: document.location.protocol + '//ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=10&callback=?&q=' + encodeURIComponent(url),
    dataType: 'json',
    success: function(data) {
      callback(data.responseData.feed);
    }
  });
}

function displayNewsTicker (feedResponse) {

  var html = '';
  var limit = 20;
  
  $.each(feedResponse.entries, function(key, val) {
    if (key < limit) {
//      var newscontent = val.content;
//      var newsimgsrc = $(newscontent).find('img:first').attr('src');
//      var newslink = val.link;
//      var newstitle = encodeURIComponent(val.title);
//      var newsdate = encodeURIComponent(val.publishDate);
      var newssummary = val.contentSnippet;
    
      // Build the list item for the news ticker
      html += '<li><p>' + newssummary +'</p></li>';
      
    }
  });
  
  // add the news items to the news ticker
  $('#news-ticker').append(html).live();    

}

function tick(){
    $('#news-ticker li:first').slideUp( 1600, function () { 
            $(this).appendTo($('#news-ticker')).slideDown();
        });
  
} 

