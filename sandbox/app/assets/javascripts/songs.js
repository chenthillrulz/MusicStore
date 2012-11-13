//This should read from a url, return json data, and get converted into a format exactly the same as the sample variable

$(document).ready(function(){
	var sample = [
		{
			title:"Cro Magnon Man",
			mp3:"http://www.jplayer.org/audio/mp3/TSP-01-Cro_magnon_man.mp3",
			oga:"http://www.jplayer.org/audio/ogg/TSP-01-Cro_magnon_man.ogg"
		},
		{
			title:"Your Face",
			mp3:"http://www.jplayer.org/audio/mp3/TSP-05-Your_face.mp3",
			oga:"http://www.jplayer.org/audio/ogg/TSP-05-Your_face.ogg"
		},
		{
			title:"Cyber Sonnet",
			mp3:"http://www.jplayer.org/audio/mp3/TSP-07-Cybersonnet.mp3",
			oga:"http://www.jplayer.org/audio/ogg/TSP-07-Cybersonnet.ogg"
		},
		{
			title:"Tempered Song",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-01-Tempered-song.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-01-Tempered-song.ogg"
		},
		{
			title:"Hidden",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-02-Hidden.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-02-Hidden.ogg"
		},
		{
			title:"Lentement",
			free:true,
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-03-Lentement.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-03-Lentement.ogg"
		},
		{
			title:"Lismore",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-04-Lismore.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-04-Lismore.ogg"
		},
		{
			title:"The Separation",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-05-The-separation.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-05-The-separation.ogg"
		},
		{
			title:"Beside Me",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-06-Beside-me.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-06-Beside-me.ogg"
		},
		{
			title:"Bubble",
			free:true,
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-07-Bubble.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
		},
		{
			title:"Stirring of a Fool",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-08-Stirring-of-a-fool.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-08-Stirring-of-a-fool.ogg"
		},
		{
			title:"Partir",
			free: true,
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-09-Partir.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-09-Partir.ogg"
		},
		{
			title:"Thin Ice",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-10-Thin-ice.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-10-Thin-ice.ogg"
		}
	];

    var url = $('#songs').data('url') + '.json';
    var song_list = [];

    //The data appears in the browser in the format shown below
    //var songs = jQuery.parseJSON('[{"song":{"created_at":"2012-10-30T17:52:12Z","id":1,"mp3":{"url":null},"name":"Becky The Beader","ogg":{"url":null},"product_id":5,"updated_at":"2012-10-30T17:52:12Z"}},{"song":{"created_at":"2012-10-30T18:23:26Z","id":2,"mp3":{"url":null},"name":"Gunslinger","ogg":{"url":null},"product_id":5,"updated_at":"2012-10-30T18:23:26Z"}}]');

    //sample is not the same as song_list and fails to generate audio links
    //song_list does generate the song title, but not the link

    function createPlayer(){
        new jPlayerPlaylist({
            jPlayer: "#jquery_jplayer_1",
            cssSelectorAncestor: "#jp_container_1"
            }, song_list , {
            swfPath: "../js",
            supplied: "oga, mp3",
            wmode: "window"
        });
    }

	$.getJSON(url, function(songs) {
	  _.each(songs, function(num) {
	    return song_list.push({
	      title: num.song.name,
	      mp3: num.song.mp3.url,
	      oga: num.song.ogg.url,
	      id: num.song.id
	    });
	  });
        _.each(song_list, function(song){
           console.log('mapped_title: ' + song.title);
        });
        _.each(sample, function(song){
            console.log('sample_title: ' + sample.title);
        });
        createPlayer();
	});


});

(function() {
    var s = document.createElement('script'), t = document.getElementsByTagName('script')[0];
    s.type = 'text/javascript';
    s.async = true;
    s.src = 'http://api.flattr.com/js/0.6/load.js?mode=auto';
    t.parentNode.insertBefore(s, t);
})();