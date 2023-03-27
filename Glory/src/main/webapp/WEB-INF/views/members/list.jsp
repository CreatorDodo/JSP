<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

<link rel="stylesheet" href="/resources/admin/plugins/fontawesome-free/css/all.min.css">

<link rel="stylesheet" href="/resources/admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="/resources/admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" href="/resources/admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">

<link rel="stylesheet" href="/resources/admin/dist/css/adminlte.min.css?v=3.2.0">
<script nonce="ee5d093f-ace6-44b5-bf0b-1e27a02cb5bb">(function(w,d){!function(a,b,c,d){a[c]=a[c]||{};a[c].executed=[];a.zaraz={deferred:[],listeners:[]};a.zaraz.q=[];a.zaraz._f=function(e){return function(){var f=Array.prototype.slice.call(arguments);a.zaraz.q.push({m:e,a:f})}};for(const g of["track","set","debug"])a.zaraz[g]=a.zaraz._f(g);a.zaraz.init=()=>{var h=b.getElementsByTagName(d)[0],i=b.createElement(d),j=b.getElementsByTagName("title")[0];j&&(a[c].t=b.getElementsByTagName("title")[0].text);a[c].x=Math.random();a[c].w=a.screen.width;a[c].h=a.screen.height;a[c].j=a.innerHeight;a[c].e=a.innerWidth;a[c].l=a.location.href;a[c].r=b.referrer;a[c].k=a.screen.colorDepth;a[c].n=b.characterSet;a[c].o=(new Date).getTimezoneOffset();if(a.dataLayer)for(const n of Object.entries(Object.entries(dataLayer).reduce(((o,p)=>({...o[1],...p[1]})))))zaraz.set(n[0],n[1],{scope:"page"});a[c].q=[];for(;a.zaraz.q.length;){const q=a.zaraz.q.shift();a[c].q.push(q)}i.defer=!0;for(const r of[localStorage,sessionStorage])Object.keys(r||{}).filter((t=>t.startsWith("_zaraz_"))).forEach((s=>{try{a[c]["z_"+s.slice(7)]=JSON.parse(r.getItem(s))}catch{a[c]["z_"+s.slice(7)]=r.getItem(s)}}));i.referrerPolicy="origin";i.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a[c])));h.parentNode.insertBefore(i,h)};["complete","interactive"].includes(b.readyState)?zaraz.init():a.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script></head>

</head>
<body>


<div class="card">
<div class="card-header">
<h3 class="card-title">DataTable with default features</h3>
</div>

<div class="card-body">
<table id="example1" class="table table-bordered table-striped">
<thead>
<tr>
<th>Rendering engine</th>
<th>Browser</th>
<th>Platform(s)</th>
<th>Engine version</th>
<th>CSS grade</th>
</tr>
</thead>
<tbody>
<tr>
<td>Trident</td>
<td>Internet
Explorer 4.0
</td>
<td>Win 95+</td>
<td> 4</td>
<td>X</td>
</tr>
<tr>
<td>Trident</td>
<td>Internet
Explorer 5.0
</td>
<td>Win 95+</td>
<td>5</td>
<td>C</td>
</tr>
<tr>
<td>Trident</td>
<td>Internet
Explorer 5.5
</td>
<td>Win 95+</td>
<td>5.5</td>
<td>A</td>
</tr>
<tr>
<td>Trident</td>
<td>Internet
Explorer 6
</td>
<td>Win 98+</td>
<td>6</td>
<td>A</td>
</tr>
<tr>
<td>Trident</td>
<td>Internet Explorer 7</td>
<td>Win XP SP2+</td>
<td>7</td>
<td>A</td>
</tr>
<tr>
<td>Trident</td>
<td>AOL browser (AOL desktop)</td>
<td>Win XP</td>
<td>6</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Firefox 1.0</td>
<td>Win 98+ / OSX.2+</td>
<td>1.7</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Firefox 1.5</td>
<td>Win 98+ / OSX.2+</td>
<td>1.8</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Firefox 2.0</td>
<td>Win 98+ / OSX.2+</td>
<td>1.8</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Firefox 3.0</td>
<td>Win 2k+ / OSX.3+</td>
<td>1.9</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Camino 1.0</td>
<td>OSX.2+</td>
<td>1.8</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Camino 1.5</td>
<td>OSX.3+</td>
<td>1.8</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Netscape 7.2</td>
<td>Win 95+ / Mac OS 8.6-9.2</td>
<td>1.7</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Netscape Browser 8</td>
<td>Win 98SE+</td>
<td>1.7</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Netscape Navigator 9</td>
<td>Win 98+ / OSX.2+</td>
<td>1.8</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Mozilla 1.0</td>
<td>Win 95+ / OSX.1+</td>
<td>1</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Mozilla 1.1</td>
<td>Win 95+ / OSX.1+</td>
<td>1.1</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Mozilla 1.2</td>
<td>Win 95+ / OSX.1+</td>
<td>1.2</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Mozilla 1.3</td>
<td>Win 95+ / OSX.1+</td>
<td>1.3</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Mozilla 1.4</td>
<td>Win 95+ / OSX.1+</td>
<td>1.4</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Mozilla 1.5</td>
<td>Win 95+ / OSX.1+</td>
<td>1.5</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Mozilla 1.6</td>
<td>Win 95+ / OSX.1+</td>
<td>1.6</td>
 <td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Mozilla 1.7</td>
<td>Win 98+ / OSX.1+</td>
<td>1.7</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Mozilla 1.8</td>
<td>Win 98+ / OSX.1+</td>
<td>1.8</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Seamonkey 1.1</td>
<td>Win 98+ / OSX.2+</td>
<td>1.8</td>
<td>A</td>
</tr>
<tr>
<td>Gecko</td>
<td>Epiphany 2.20</td>
<td>Gnome</td>
<td>1.8</td>
<td>A</td>
</tr>
<tr>
<td>Webkit</td>
<td>Safari 1.2</td>
<td>OSX.3</td>
<td>125.5</td>
<td>A</td>
</tr>
<tr>
<td>Webkit</td>
<td>Safari 1.3</td>
<td>OSX.3</td>
<td>312.8</td>
<td>A</td>
</tr>
<tr>
<td>Webkit</td>
<td>Safari 2.0</td>
<td>OSX.4+</td>
<td>419.3</td>
<td>A</td>
</tr>
<tr>
<td>Webkit</td>
<td>Safari 3.0</td>
<td>OSX.4+</td>
<td>522.1</td>
<td>A</td>
</tr>
<tr>
<td>Webkit</td>
<td>OmniWeb 5.5</td>
<td>OSX.4+</td>
<td>420</td>
<td>A</td>
</tr>
<tr>
<td>Webkit</td>
<td>iPod Touch / iPhone</td>
<td>iPod</td>
<td>420.1</td>
<td>A</td>
</tr>
<tr>
<td>Webkit</td>
<td>S60</td>
<td>S60</td>
<td>413</td>
<td>A</td>
</tr>
<tr>
<td>Presto</td>
<td>Opera 7.0</td>
<td>Win 95+ / OSX.1+</td>
<td>-</td>
<td>A</td>
</tr>
<tr>
<td>Presto</td>
<td>Opera 7.5</td>
<td>Win 95+ / OSX.2+</td>
<td>-</td>
<td>A</td>
</tr>
<tr>
<td>Presto</td>
<td>Opera 8.0</td>
<td>Win 95+ / OSX.2+</td>
<td>-</td>
<td>A</td>
</tr>
<tr>
<td>Presto</td>
<td>Opera 8.5</td>
<td>Win 95+ / OSX.2+</td>
<td>-</td>
<td>A</td>
</tr>
<tr>
<td>Presto</td>
<td>Opera 9.0</td>
<td>Win 95+ / OSX.3+</td>
<td>-</td>
<td>A</td>
</tr>
<tr>
<td>Presto</td>
<td>Opera 9.2</td>
<td>Win 88+ / OSX.3+</td>
<td>-</td>
<td>A</td>
</tr>
<tr>
<td>Presto</td>
<td>Opera 9.5</td>
<td>Win 88+ / OSX.3+</td>
<td>-</td>
<td>A</td>
</tr>
<tr>
<td>Presto</td>
<td>Opera for Wii</td>
<td>Wii</td>
<td>-</td>
<td>A</td>
</tr>
<tr>
<td>Presto</td>
<td>Nokia N800</td>
<td>N800</td>
<td>-</td>
<td>A</td>
</tr>
<tr>
<td>Presto</td>
<td>Nintendo DS browser</td>
<td>Nintendo DS</td>
<td>8.5</td>
<td>C/A<sup>1</sup></td>
</tr>
<tr>
<td>KHTML</td>
<td>Konqureror 3.1</td>
<td>KDE 3.1</td>
<td>3.1</td>
<td>C</td>
</tr>
<tr>
<td>KHTML</td>
<td>Konqureror 3.3</td>
<td>KDE 3.3</td>
<td>3.3</td>
<td>A</td>
</tr>
<tr>
<td>KHTML</td>
<td>Konqureror 3.5</td>
<td>KDE 3.5</td>
<td>3.5</td>
<td>A</td>
</tr>
<tr>
<td>Tasman</td>
<td>Internet Explorer 4.5</td>
<td>Mac OS 8-9</td>
 <td>-</td>
<td>X</td>
</tr>
<tr>
<td>Tasman</td>
<td>Internet Explorer 5.1</td>
<td>Mac OS 7.6-9</td>
<td>1</td>
<td>C</td>
</tr>
<tr>
<td>Tasman</td>
<td>Internet Explorer 5.2</td>
<td>Mac OS 8-X</td>
<td>1</td>
<td>C</td>
</tr>
<tr>
<td>Misc</td>
<td>NetFront 3.1</td>
<td>Embedded devices</td>
<td>-</td>
<td>C</td>
</tr>
<tr>
<td>Misc</td>
<td>NetFront 3.4</td>
<td>Embedded devices</td>
<td>-</td>
<td>A</td>
</tr>
<tr>
<td>Misc</td>
<td>Dillo 0.8</td>
<td>Embedded devices</td>
<td>-</td>
<td>X</td>
</tr>
<tr>
<td>Misc</td>
<td>Links</td>
<td>Text only</td>
<td>-</td>
<td>X</td>
</tr>
<tr>
<td>Misc</td>
<td>Lynx</td>
<td>Text only</td>
<td>-</td>
<td>X</td>
</tr>
<tr>
<td>Misc</td>
<td>IE Mobile</td>
<td>Windows Mobile 6</td>
<td>-</td>
<td>C</td>
</tr>
<tr>
<td>Misc</td>
<td>PSP browser</td>
<td>PSP</td>
<td>-</td>
<td>C</td>
</tr>
<tr>
<td>Other browsers</td>
<td>All others</td>
<td>-</td>
<td>-</td>
<td>U</td>
</tr>
</tbody>
<tfoot>
<tr>
<th>Rendering engine</th>
<th>Browser</th>
<th>Platform(s)</th>
<th>Engine version</th>
<th>CSS grade</th>
</tr>
</tfoot>
</table>
</div>

</div>


<footer class="main-footer">
<div class="float-right d-none d-sm-block">
<b>Version</b> 3.2.0
</div>
<strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
</footer>

<aside class="control-sidebar control-sidebar-dark">

</aside>


</body>

<script src="/resources/admin/plugins/jquery/jquery.min.js"></script>

<script src="/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/resources/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/resources/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="/resources/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="/resources/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="/resources/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="/resources/admin/plugins/jszip/jszip.min.js"></script>
<script src="/resources/admin/plugins/pdfmake/pdfmake.min.js"></script>
<script src="/resources/admin/plugins/pdfmake/vfs_fonts.js"></script>
<script src="/resources/admin/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="/resources/admin/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="/resources/admin/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

<script src="/resources/admin/dist/js/adminlte.min.js?v=3.2.0"></script>

<!-- <script src="/resources/admin/dist/js/demo.js"></script> -->

<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>



</html>