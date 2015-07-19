function Hours()
{
    var nowDate = new Date();
    var nowHours = nowDate.getHours();
    return nowHours;
}

function Minutes()
{
    var nowDate = new Date();
    var nowMinutes = nowDate.getMinutes();
    return nowMinutes;
}

function Seconds()
{
    var nowDate = new Date();
    var nowSeconds = nowDate.getSeconds();
    return nowSeconds;
}

function DayOfWeek()
{
    var nowDate = new Date();
    var nowDayOfWeek = nowDate.getDay();
    if(nowDayOfWeek==0)
        return "Sunday";
    if(nowDayOfWeek==1)
        return "Monday";
    if(nowDayOfWeek==2)
        return "Tuesday";
    if(nowDayOfWeek==3)
        return "Wednsday";
    if(nowDayOfWeek==4)
        return "Thursday";
    if(nowDayOfWeek==5)
        return "Friday";
    if(nowDayOfWeek==6)
        return "Saturday";
}
