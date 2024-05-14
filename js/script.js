window.addEventListener('load', ()=>{
    var table = new DataTable('#example', {
        language:{
            url: 'https://cdn.datatables.net/plug-ins/2.0.4/i18n/es-ES.json',
        }
    });
})
function ocultarMenu(id1, id2) {
    let bxMenu = document.getElementById(id1);
    let btnMenu = document.querySelector(id2);
    let bandera = false;
    btnMenu.addEventListener('click', () => {
        if (bandera == false) {
            bxMenu.style.display = 'flex';
            bandera = true;
        } else {
            bxMenu.style.display = 'none';
            bandera = false;
        }
    });
}
window.addEventListener('load', ()=>{
    ocultarMenu('bx-menu', '#btnMenu');
    ocultarMenu('bx-notf', '#btnNotf');
    $(document).ready(function() {
        $('#viewNotificationBtn').click(function() {
            $('#notificationModal').modal('show');
        });
    });

    document.getElementById('btnSrh').addEventListener('click', ()=>{
        document.getElementById('bx-search').style.display = 'flex';
    });
    document.getElementById('btnExSrh').addEventListener('click', ()=>{
        document.getElementById('bx-search').style.display = 'none';
    });
});

window.addEventListener('load', ()=>{
    document.getElementById('btnSrh').addEventListener('click', ()=>{
        document.getElementById('bx-search').style.display = 'flex';
    });
    document.getElementById('btnExSrh').addEventListener('click', ()=>{
        document.getElementById('bx-search').style.display = 'none';
    });
});