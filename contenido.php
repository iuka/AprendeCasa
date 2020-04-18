<?php 
include 'conslt/q2.php';
?>
<div class="row" style="padding-top: 35px;">
  <div class="col-lg-6" style="background: #c5cae9;">
      <nav aria-label="breadcrumb">
          <ol class="breadcrumb indigo lighten-4 ruta">
              <li class="breadcrumb-item"><a class="black-text" href="index.php"><i class="fas fa-home"></i></a></li>
              <li class="breadcrumb-item"><a class="black-text" href="#"><?php if(isset($_POST['nivel'])) echo $_POST['nivel'];?></a></li>
              <li class="breadcrumb-item"><a class="black-text" href="#"><?php if(isset($_POST['grado'])) echo $_POST['grado'];?></a></li>
              <li class="breadcrumb-item active"><?php if(isset($_POST['asignatura'])) echo $_POST['asignatura'];?></li>
          </ol>
      </nav>
  </div>
  <div class="col-lg-6" style="background: #c5cae9;text-align: end;">
      <a data-activates="slide-out" class="btn btn-primary btn-md button-collapse2">Seleccione un Nivel</a>
  </div>
</div>
<div id="carousel-example-multi" class="carousel slide carousel-multi-item v-2" data-ride="carousel">
  <!--Controls-->
  <div class="controls-top">
      <a class="btn-floating" href="#carousel-example-multi" data-slide="prev"><i
        class="fas fa-chevron-left"></i></a>
      <a class="btn-floating" href="#carousel-example-multi" data-slide="next"><i
        class="fas fa-chevron-right"></i></a>
  </div>

    <div class="carousel-inner v-2" role="listbox" id="vidio">
    </div>
</div>

<script>
    var divc = document.getElementById("vidio");
    datos = "";
    var data = <?php echo $data ?>;
    data.forEach(function(valor, indice, array){
        datos +="<div class='carousel-item";
        if(indice == 0){
            datos += " active";
        }
        datos +="'>";
        datos +="<div class='col-12 col-md-4'><div class='card mb-2'>";
        datos +="<img class='card-img-top' src='https://mdbootstrap.com/img/Photos/Others/img (36).jpg' alt='Card image cap'><div class='card-body'>";
        datos += "<h4 class='card-title font-weight-bold'>"+array[indice]['nombre']+"</h4><p class='card-text'>Some quick example text to build on the card title and make up the bulk of the card's content.</p><a class='btn btn-primary btn-md btn-rounded'>Button</a></div></div></div></div>";
    });
    divc.insertAdjacentHTML("beforeend",datos);
    console.log(data);
  //colapso de menu lateral
  $(".button-collapse2").click(function() {
    $(this).sideNav({
        breakpoint: 1200
    });
  });

  $('.carousel.carousel-multi-item.v-2 .carousel-item').each(function() {

        var next = $(this).next();
        if (!next.length) {
            next = $(this).siblings(':first');
        }
        next.children(':first-child').clone().appendTo($(this));

        for (var i = 0; i < 4; i++) {
            next = next.next();
            if (!next.length) {
                next = $(this).siblings(':first');
            }
            next.children(':first-child').clone().appendTo($(this));
        }
    });
    
</script>
