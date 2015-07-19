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
        return "SUNDAY";
    if(nowDayOfWeek==1)
        return "MONDAY";
    if(nowDayOfWeek==2)
        return "TUESDAY";
    if(nowDayOfWeek==3)
        return "WEDNSDAY";
    if(nowDayOfWeek==4)
        return "THURSDAY";
    if(nowDayOfWeek==5)
        return "FRIDAY";
    if(nowDayOfWeek==6)
        return "SATURDAY";
}

function Year()
{
    var nowDate = new Date();
    var nowYear = nowDate.getFullYear();
    return nowYear;
}

function Month()
{
    var nowDate = new Date();
    var nowMonth = nowDate.getMonth();
    if (nowMonth==0)
    {
        return "January";
    }
    if (nowMonth==1)
    {
        return "February";
    }
    if (nowMonth==2)
    {
        return "March";
    }
    if (nowMonth==3)
    {
        return "April";
    }
    if (nowMonth==4)
    {
        return "May";
    }
    if (nowMonth==5)
    {
        return "June";
    }
    if (nowMonth==6)
    {
        return "July";
    }
    if (nowMonth==7)
    {
        return "August";
    }
    if (nowMonth==8)
    {
        return "September";
    }
    if (nowMonth==9)
    {
        return "October";
    }
    if (nowMonth==10)
    {
        return "November";
    }
    if (nowMonth==11)
    {
        return "December";
    }
}

function Day()
{
    var nowDate = new Date();
    var nowDay = nowDate.getDate();
    return nowDay;
}
