@extends('layouts.app_master_frontend')
@section('css')
    <?php $style = file_get_contents('css/home_insights.min.css');echo $style;?>
@stop
@section('content')
    @include('frontend.pages.home.include._inc_slide')
    <div class="container" id="before-slide">
        @include('frontend.pages.home.include._inc_service')
        <div class="categories-hot">
            <div class="heading">
                <span class="title">Danh mục nổi bật</span>
                <span class="line">----■■■■----</span>
            </div>
            <div class="cate">
                @foreach($categoriesHot as $item)
                    <div class="item">
                        <a href="{{ route('get.category.list', $item->c_slug.'-'.$item->id) }}" title="{{ $item->c_name }}">
                            <img data-src="{{ pare_url_file($item->c_avatar) }}" style="height: 200px;object-fit: cover;"
                                 src="{{ image_default() }}" alt="{{ $item->c_name }}" class="lazy">
                            <p>{{ $item->c_name }}</p>
                        </a>
                    </div>
                @endforeach
                <div style="clear: both"></div>
            </div>
        </div>
        @if (isset($event1))
        <div></div>
        @if(!$productsPay->isEmpty())
        @include('frontend.pages.home.include._inc_product',[
                'title' => 'Sản phẩm được mua nhiều nhất',
                'pay' => true,
                'products' => $productsPay
            ])
        @endif
        @include('frontend.pages.home.include._inc_product',[
                'title' => 'Sản phẩm nổi bật',
                'products' => $productsHot
            ])
        @include('frontend.pages.home.include._inc_article')
    </div>
    @include('frontend.pages.home.include._inc_email')
@stop

@section('script')
    <script type="text/javascript">
		<?php $js = file_get_contents('js/home.js');echo $js;?>
    </script>
@stop
