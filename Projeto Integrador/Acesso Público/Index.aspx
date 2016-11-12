<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Projeto_Integrador.Acesso_Público.Index" Theme="css" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Improve</title>
</head>
<body>
    <form id="form1" runat="server">
        <header id="header">
            <div class="navbar navbar-inverse" role="banner">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <a class="navbar-brand" href="Index.aspx">
                            <h1>
                                <img src="../Imagens/logo.png" alt="logo" /></h1>
                        </a>

                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Cadastro.aspx">Cadastrar</a></li>
                            <li class="active"><a href="Entrar.aspx">Entrar</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>

        <section id="home-slider">
            <div class="container">
                <div class="row">
                    <div class="main-slider">
                        <div class="slide-text">
                            <h1>Desenvolvido especialmente para o estudante!</h1>
                            <p>Neste site, você poderá se organizar da melhor forma possível. Tem muita funcionalidade disponível por aqui. Vem conferir!</p>
                            <a href="Cadastro.aspx" class="btn btn-common">CRIAR CONTA</a>
                        </div>
                        <img src="../Imagens/home/slider/hill.png" class="slider-hill" alt="slider image" />
                        <img src="../Imagens/home/slider/house.png" class="slider-house" alt="slider image" />
                    </div>
                </div>
            </div>
            <div class="preloader"><i class="fa fa-sun-o fa-spin"></i></div>
        </section>

        <section id="services">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="300ms">
                        <div class="single-service">
                            <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="300ms">
                                <img src="../Imagens/home/icon1.png" alt="" />
                            </div>
                            <h2>Organize</h2>
                            <p>O improve disponibiliza 3 ótimas opções para armazenar seus compromissos do cotidiano: a agenda, as tarefas e as anotações. Vem conferir!</p>
                        </div>
                    </div>
                    <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="single-service">
                            <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="600ms">
                                <img src="../Imagens/home/icon2.png" alt="" />
                            </div>
                            <h2>Estude</h2>
                            <p>Na sala de estudos, você pode conversar com seus amigos ou colegas de classe para tirar suas dúvidas. Tá esperando o quê para convidá-los a participar da família Improve?</p>
                        </div>
                    </div>
                    <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="900ms">
                        <div class="single-service">
                            <div class="wow scaleIn" data-wow-duration="500ms" data-wow-delay="900ms">
                                <img src="../Imagens/home/icon3.png" alt="" />
                            </div>
                            <h2>Desfrute</h2>
                            <p>Além de você poder colocar suas anotações em dia e estudar bastante, também existem outras funcionalidades disponíveis. Crie já sua conta!</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="features">
            <div class="container">
                <div class="row">
                    <div class="single-features">
                        <div class="col-sm-5 wow fadeInLeft" data-wow-duration="500ms" data-wow-delay="300ms">
                            <img src="../Imagens/home/image1.png" class="img-responsive" alt="" />
                        </div>
                        <div class="col-sm-6 wow fadeInRight" data-wow-duration="500ms" data-wow-delay="300ms">
                            <h2>Quem somos?</h2>
                            <p>
                                Este site foi desenvolvido pelos discentes Amanda Alves, Carlos Romero, Isabelly Araújo e Lara Belarmino. Todos estudam no Instituto Federal de Educação, Ciência e Tecnologia do Rio Grande do Norte (Campus Natal Central) e cursam o ensino técnico de Informática Para Internet, 3º ano. 
						Juntos, desenvolveram este projeto através da disciplina "Projeto Integrador", que faz parte da grade curricular do curso.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="clients">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="clients text-center wow fadeInUp" data-wow-duration="500ms" data-wow-delay="300ms">
                            <p>
                                <img src="../Imagens/home/clients.png" class="img-responsive" alt="" />
                            </p>
                            <h1 class="title">Obrigado!</h1>
                            <p>
                                Nós, fundadores do Improve, ficamos muito felizes com sua visita!<br />
                                Volte sempre!
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <footer id="footer">
            <div class="container">
                <div class="row">
                </div>
                <div class="col-sm-12">
                    <div class="copyright-text text-center">
                    </div>
                </div>
            </div>
        </footer>

        <script type="text/javascript" src="../js/jquery.js"></script>
        <script type="text/javascript" src="../js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../js/lightbox.min.js"></script>
        <script type="text/javascript" src="../js/wow.min.js"></script>
        <script type="text/javascript" src="../js/main.js"></script>
    </form>
</body>
</html>
