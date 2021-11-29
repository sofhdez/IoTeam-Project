
function generarHora(){
    var now = new Date()
    var h = now.getHours()
    var m = now.getMinutes()
    var s = now.getSeconds()
    m = agregarCeros(m)
    s = agregarCeros(s)
    //Buscar nuestro reloj en nuestro html
    document.getElementById("reloj").innerText = h + ":" + m + ":" + s
    var t = setTimeout(generarHora, 500);
}

function agregarCeros(tiempo){
    if(tiempo < 10){
        tiempo = "0"+tiempo
    }
    return tiempo
}


generarHora()


function renderTime(){
    var mydate = new Date();
    var year = mydate.getYear();
    if(year<1000){
        year +=1900;
    }
    var day = mydate.getDay();
    var month = mydate.getMonth();
    var daym = mydate.getDate();
    var dayarray = new Array("Domingo", "Lunes","Martes", "Miercoles", "Jueves","Viernes", "Sábado", "Domingo");
    var montharray = new Array("Enero", "Febrero", "Marzo", "Abril","Mayo","Junio","Julio","Agosto","Sepriembre","Octubre","Noviembre", "Diciembre");

    var disdate = document.getElementById("date");
    disdate.textContent = "" + dayarray[day]+" "+ daym + " "+montharray[month]+" "+year;
    disdate.innerText =  "" + dayarray[day]+" "+ daym + " "+montharray[month]+" "+year;

    setTimeout("renderTime()", 1000);

}

renderTime();











     