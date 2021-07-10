 @extends('store.storeLayout')
@section('content')
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital@1&display=swap" rel="stylesheet">
<style>
    img.slider-img {
        height: 400px !important
    }

    .carousel-caption {
        background-color: #700F6A;
    }
</style>
<div class="container">
    <h2 class="text-center" style="font-family: 'Libre Baskerville', serif; font-size:50px;">Our Boutique</h2>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            @foreach($products as $product)
            <div class="item {{$product['id']==49?'active':''}}">
                <a href="{{route('user.view',['id'=>$product->id])}}"><img src="uploads/products/{{$product->id}}/{{$product->image_name}}" alt="header image products" style="width:100%;" class="slider-img"></a>
                <div class="carousel-caption">
                    <h3>{{$product->category->name}}</h3>
                    <p>&#8369 {{$product->price}}</p>
                </div>
            </div>
            @endforeach

        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<!-- NAVIGATION -->
<nav id="navigation">
    <!-- container -->
    <div class="container">
        <!-- responsive-nav -->
        <div id="responsive-nav">
            <!-- NAV -->
            <ul class="main-nav nav navbar-nav ">
                <li  class="{{Route::is('user.home') ? 'active' : ''}}"><a href="{{route('user.home')}}">Home</a></li>
                @if(Route::is('user.search'))
                @foreach($cat as $c)
                <li class="{{$c->id == $a ? 'active' : ''}}"><a href="{{route('user.search.cat',['id'=>$c->id])}}">{{$c->name}}</a></li>
                @endforeach
                <li class="{{$a == -1  ? 'active' : ''}}"><a href="search">Browse All</a></li>
                @else
                @foreach($cat as $c)
                <li><a href="{{route('user.search.cat',['id'=>$c->id])}}">{{$c->name}}</a></li>
                @endforeach
                <li><a href="{{route('user.search')}}">Browse All</a></li>
                @endif

            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
<!-- /NAVIGATION -->

<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">


            <!-- section title -->
            <div class="col-md-12">
                <div class="section-title">
                    <h3 class="title">New Products</h3>

                </div>
            </div>
            <!-- /section title -->

            <!-- Products tab & slick -->
            <div class="col-md-12">
                <div class="row">


                    @foreach($products as $product)
                    <!-- product -->
                    <div class="col-md-3">
                        <div class="product">
                            <div class="product-img">
                                <img src="uploads/products/{{$product->id}}/{{$product->image_name}}" alt="">
                                <div class="product-label">
                                    <span class="sale">Offer!!</span>
                                </div>
                            </div>
                            <div class="product-body">
                                <p class="product-category">{{$product->category->name}}</p>
                                <h3 class="product-name"><a href="{{route('user.view',['id'=>$product->id])}}">{{$product->name}}</a></h3>
                                <h4 class="product-price">&#8369 {{$product->discount}} <del class="product-old-price">&#8369 {{$product->price}}</del></h4>
                                <div class="product-rating">
                                </div>

                            </div>
                            <div class="add-to-cart">
                                <a class="add-to-cart-btn" href="{{route('user.view',['id'=>$product->id])}}"><i class="fa fa-shopping-cart"></i>Purchase</a>
                            </div>
                        </div>
                    </div>
                    <!-- /product -->
                    @endforeach
                </div>

            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
</div>
@endsection