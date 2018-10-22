<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html lang="es">
    <head>
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
        <title>Honor Preservation:: Guild PVE - Quel'Thalas</title>
        <style>
            .menu-custom{
                position: fixed;
                background-color: #ffbb6f;
                width: 100%;
                top: 0;
                z-index: 999;
            }

            .main{
                margin-top:70px;
            }

            .seccion{
                padding-top:50px;
                padding-left:35px;
                padding-right:20px;
                display:block;
            }
            .content-inside-section{
                display: block;
            }

            .marginr-10px{
                margin-right: 10px;
            }

            #seccion-3{
                margin: 0 !important;
                padding-top:50px;
                padding-left:35px;
                padding-right:20px;
            }

            .sticky-footer{
                left: 0;
                bottom: 0;
                background-color: red;
                color: white;
                width: 100%;
                padding: 10px;
                margin-top: 30px;
            }

            .member{
                border: solid 1px red;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <!--MENU-->
            <div class="row menu-custom">
               <ul class="nav nav-tabs">
                   <li class="nav-item">
                       <a class="nav-link" href="#seccion-1">Seccion 1</a>
                   </li>
                   <li class="nav-item">
                       <a class="nav-link" href="#seccion-2">Seccion 2</a>
                   </li>
                   <li class="nav-item">
                       <a class="nav-link" href="#seccion-3">Seccion 3</a>
                   </li>
                   <li class="nav-item">
                       <a class="nav-link" href="#seccion-4">Seccion 4</a>
                   </li>
                   <li class="nav-item">
                       <a class="nav-link" href="#seccion-5">Seccion 5</a>
                   </li>
               </ul>
            </div>
            <!--FIN MENU-->

            <div class="main">
                <!--SECCION 1-->
                <div id="seccion-1" class="row seccion text-left">
                    <h1>Honor Preservation</h1>
                    <div class="row content-inside-section">
                        <p>
                            Coloquen aquí su texto de mierda vendiendo a esta guild de mancos asquerosos  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur ultrices magna, quis laoreet metus dignissim in. Etiam molestie ligula ac ex luctus, eu cursus est tempus. Nulla tempus vulputate lectus, id iaculis nibh gravida et. Sed vitae tristique dui, vitae aliquet ex. Morbi dui purus, vestibulum in lorem nec, sollicitudin interdum lectus. Maecenas sit amet sodales sapien. Nunc a metus elit. Ut ante mi, malesuada vel laoreet id, mattis at libero. Praesent pellentesque ex in ante condimentum ullamcorper. Aenean vel tempor turpis, eget varius est. Vestibulum ultrices libero et efficitur facilisis. Donec in sagittis velit, ut scelerisque magna.

                            Maecenas ullamcorper ipsum nec arcu gravida consequat. Nam ut risus eget dolor aliquam pharetra. Etiam auctor facilisis fermentum. Sed at bibendum ipsum. Fusce feugiat, diam eget convallis volutpat, quam mauris lobortis sem, ut consequat sapien massa nec ex. Donec metus arcu, porta at nisl vitae, fringilla viverra quam. Aliquam fringilla dictum urna vitae placerat. Suspendisse a lectus ac metus convallis interdum. Sed lobortis vestibulum lacinia. Cras bibendum neque vestibulum scelerisque scelerisque. Duis nec dictum mi. Duis ipsum eros, dignissim at blandit ullamcorper, tristique non lacus.

                            Praesent ut lacus et magna feugiat maximus. Praesent maximus bibendum libero nec auctor. Fusce quis iaculis augue. Aliquam erat volutpat. Nulla facilisi. Aliquam lectus enim, vestibulum et ligula ut, aliquet sagittis arcu. Praesent suscipit congue tincidunt. Pellentesque erat augue, congue ut diam sit amet, volutpat condimentum ipsum. Duis consectetur, neque sed maximus efficitur, massa eros accumsan purus, ut luctus justo velit sit amet massa. Mauris lobortis metus dolor, id cursus augue malesuada eu. Mauris id nulla in ipsum molestie volutpat at vel magna. Ut dapibus ante condimentum quam convallis, vel pellentesque ante auctor. Donec rhoncus, est vitae blandit ornare, nunc dui suscipit dolor, in aliquet lectus libero eget tellus.

                            Integer nisi purus, tempus
                        </p>
                    </div>
                </div>
                <div id="seccion-2" class="row seccion text-right">
                    <h1>Logros de la hermandad</h1>
                    <div id="contenido-logros" class="row content-inside-section">
                        <p>
                            PURO MANCO DE MIERDA  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur ultrices magna, quis laoreet metus dignissim in. Etiam molestie ligula ac ex luctus, eu cursus est tempus. Nulla tempus vulputate lectus, id iaculis nibh gravida et. Sed vitae tristique dui, vitae aliquet ex. Morbi dui purus, vestibulum in lorem nec, sollicitudin interdum lectus. Maecenas sit amet sodales sapien. Nunc a metus elit. Ut ante mi, malesuada vel laoreet id, mattis at libero. Praesent pellentesque ex in ante condimentum ullamcorper. Aenean vel tempor turpis, eget varius est. Vestibulum ultrices libero et efficitur facilisis. Donec in sagittis velit, ut scelerisque magna.

                            Maecenas ullamcorper ipsum nec arcu gravida consequat. Nam ut risus eget dolor aliquam pharetra. Etiam auctor facilisis fermentum. Sed at bibendum ipsum. Fusce feugiat, diam eget convallis volutpat, quam mauris lobortis sem, ut consequat sapien massa nec ex. Donec metus arcu, porta at nisl vitae, fringilla viverra quam. Aliquam fringilla dictum urna vitae placerat. Suspendisse a lectus ac metus convallis interdum. Sed lobortis vestibulum lacinia. Cras bibendum neque vestibulum scelerisque scelerisque. Duis nec dictum mi. Duis ipsum eros, dignissim at blandit ullamcorper, tristique non lacus.

                            Praesent ut lacus et magna
                        </p>
                    </div>
                </div>

                <div id="seccion-3" class="row text-left">
                    <h1>Miembros</h1>
                    <div id="guildCore" class="row">

                    </div>
                </div>

                <div id="seccion-4" class="row seccion text-right">
                    <h1>Horarios</h1>
                    <div class="row content-inside-section">
                        <p>
                            COLOCAR AQUI LA MIERDA, OJALA UNA INFOGRAFIA CON VARIAS HORAS DE REFERENCIA
                        </p>
                    </div>
                </div>

                <div id="seccion-5" class="row seccion text-center">
                    <h1>Únete</h1>
                    <div class="row content-inside-section">
                        <div class="offset-md-4 col-md-5">
                            <form id="postular" class="form-inline">
                                <div class="form-group mb-2">
                                    <label for="nombrePj" class="marginr-10px">Nombre de personaje</label>
                                    <input type="text" class="form-control marginr-10px" id="nombrePj" placeholder="Nombre de tu personaje" required/>
                                    <button type="submit" class="btn btn-primary">Postular</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center sticky-footer">
            Footer loco
        </div>
    </body>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
            var guildInfo = ${guildInfo};
            var guildProgress = ${guildProgression};
            var guildMembers = ${guildMemmbers};
            var races = ${races};
            var classes = ${classes};
            var coreInfoComplete = [];
            var htmlCore = "";
            var htmlProgress = "";
            var core = guildMembers.members.filter(function(e){
                return e.rank <= 2;
            });
            var actualTier = guildProgress.raid_progression.uldir;
            core.forEach(function(e){
                var raceDetail = races.races.filter(function(f){
                    return f.id === e.character.race;
                });
                var classDetial = classes.classes.filter(function(f){
                    return f.id === e.character.class;
                });
                var ele = {
                    name: e.character.name,
                    class: classDetial[0].name,
                    race: raceDetail[0].name
                }
                coreInfoComplete.push(ele);
            });

            coreInfoComplete.forEach(function(e){
                var htmlAux =   '<div class="col-md-4 member"><div class="row">' +
                                    '<div class="col-md-4">' + e.name + '</div>' +
                                    '<div class="col-md-4">' + e.class + '</div>' +
                                    '<div class="col-md-4">' + e.race + '</div></div></div>';

                htmlCore += htmlAux;
            });
            $("#guildCore").append(htmlCore);
            console.log(actualTier);

            var normalProgress =  actualTier.normal_bosses_killed === actualTier.total_bosses ? "¡Completo!" :  actualTier.normal_bosses_killed + '/' + actualTier.total_bosses ;
            var heroicProgress = actualTier.heroic_bosses_killed === actualTier.total_bosses ? "¡Completo!" : (actualTier.heroic_bosses_killed + '/' + actualTier.total_bosses );

            htmlProgress =  '<div class="col-md-4"><div class="row">' +
                                 '<div class="col-md-4">Uldir</div>' +
                                '<div class="col-md-4">Normal: '+ normalProgress +'</div>' +
                                 '<div class="col-md-4">Heróico: '+  heroicProgress  +'</div></div></div>';

            $("#contenido-logros").append(htmlProgress);


        });

        $('a[href^="#"]').on('click', function (e) {
            e.preventDefault();

            var target = this.hash;
            var $target = $(target);

            $('html, body').animate({
                'scrollTop': $target.offset().top
            }, 1000, 'swing');
        });

        $(function(){
            $("#postular").on('submit',function(e){
                e.preventDefault();
                var pjName = e.target.elements[0].value;

                $.ajax({
                    type: 'POST',
                    url: '/sendApply',
                    data: {name: pjName},
                    dataType: 'json',
                    success: function (data){
                        console.log("oie zii");
                        console.log(data);
                    },
                    error: function (data){
                        console.log("oie no");
                        console.log(data);
                    }
                });
            });


        });
    </script>

</html>