ynetNewsScroller=new sagscroller({
    id:'ynetNewsScroller',
    mode: 'auto',
    rssdata:{
            feeds: [
                    ['Ynet', 'http://www.ynet.co.il/Integration/StoryRss2.xml']
            ],
            linktarget: '_new',
            displayoptions: 'description',
            groupbylabel: false,
            entries: 100 //<--no comma following last option
    },
    refreshsecs: 360,
    pause: 25000,
    animatespeed: 3500 //<--no comma following last option
});
