/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function date_time(id)
{
        date = new Date;
        year = date.getFullYear();
        month = date.getMonth();
        months = new Array('ינואר', 'פברואר', 'מרס', 'אפריל', 'מאי', 'יוני', 'יולי', 'אוגוסט', 'ספטמבר', 'אוקטובר', 'נובמבר', 'דצמבר');
        d = date.getDate();
        day = date.getDay();
        days = new Array('ראשון', 'שני', 'שלישי', 'רביעי', 'חמישי', 'שישי', 'שבת');
        h = date.getHours();
        if(h<10)
        {
                h = "0"+h;
        }
        m = date.getMinutes();
        if(m<10)
        {
                m = "0"+m;
        }
        s = date.getSeconds();
        if(s<10)
        {
                s = "0"+s;
        }
        result = 'יום '+days[day]+' '+d+' ב'+months[month]+' '+year+'<br><br><span>'+h+':'+m+':'+s+'</span>';
        document.getElementById(id).innerHTML = result;
        css1 = $(".aw-widget-content").css("background");
        $("#date_time").css("background", css1);
        height1 = $(".aw-current-weather-inner").css("height");
        $("#date_time").css("height", height1);
        color1 = $(".aw-current-weather-inner").css("color");
        $("#date_time").css("color", color1);
        border1 = $(".aw-widget-content").css("border");
        $("#date_time").css("border", border1);

        
        setTimeout('date_time("'+id+'");','1000');
        return true;
}