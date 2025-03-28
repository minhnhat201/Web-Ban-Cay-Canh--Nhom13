@extends('layouts.app_master_frontend')
@section('css')
    <?php $style = file_get_contents('css/product_detail_insights.min.css');echo $style;?>
@stop
<style>
    .number-empty, .number-empty:hover {
        cursor: not-allowed;
    }
</style>
@section('content')
    <div class="container">
        <div class="breadcrumb">
            <ul>
                <li>
                    <a itemprop="url" href="/" title="Home"><span itemprop="title">Home</span></a>
                </li>
                <li>
                    <a itemprop="url" href="{{ route('get.product.list') }}" title="Sản phẩm"><span
                            itemprop="title">{{ __('product.bre') }}</span></a>
                </li>

                <li>
                    <a itemprop="url" href="" title="Đồng hồ Diamond D"><span itemprop="title">{{ $product->pro_name }}</span></a>
                </li>

            </ul>
        </div>
        <div class="card">
            <div class="card-body info-detail">
                <div class="left">
{{--                    @include('frontend.pages.product_detail.include._inc_album')--}}
                    <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" title=""
                       class="">
                        <img alt="" style="max-width: 100%;width: 100%;height: auto" src="{{ pare_url_file($product->pro_avatar) }}"
                             class="lazyload">
                    </a>
                </div>
                <div class="right" id="product-detail" data-id="{{ $product->id }}">
                    <h1>{{  $product->pro_name }}</h1>
                    @if ( $product->pro_number <= 0 )
                        <p class="text-danger" style="font-size: 14px;margin-bottom: 5px;background: #dedede;padding: 5px;">{{ __('product.price_number') }}</p>
                    @endif
                    <div class="right__content">
                        <div class="info">

                            <div class="prices">
                                @if ($product->pro_sale)
                                    <p>{{ __('product.listed_price') }}:
                                        <span class="value">{{ number_format($product->pro_price,0,',','.') }} đ</span>
                                    </p>
                                    @php
                                        $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                                    @endphp
                                    <p>
                                        {{ __('product.price') }}: <span
                                            class="value price-new">{{  number_format($price,0,',','.') }} đ</span>
                                        <span class="sale">-{{  $product->pro_sale }}%</span>
                                    </p>
                                @else
                                    <p>
                                        {{ __('product.price') }}: <span class="value price-new">{{  number_format($product->pro_price,0,',','.') }} đ</span>
                                    </p>
                                @endif
                                <p>
                                    <span>{{ __('product.view') }} :&nbsp</span>
                                    <span>{{ $product->pro_view }}</span>
                                </p>
                            </div>
                            <div class="btn-cart">
                                <a  style="background-color: #00b33c" href="{{ route('get.shopping.add', $product->id) }}" title=""
                                   onclick="add_cart_detail('17617',0);" class="{{  get_data_user('web') ? '' : 'js-show-login' }} muangay {{ $product->pro_number <= 0 ? 'number-empty' : '' }}">
                                    <span><i class="fa fa-shopping-bag"></i> {{ __('product.buy_now') }}</span>
{{--                                    <span>{{ __('product.hotline') }}: 1800.6005</span>--}}
                                </a>
                            </div>
                            <div class="infomation">
                                <h2 class="infomation__title">{{ __('product.info') }}</h2>
                                <div class="infomation__group">

                                    <div class="item">
                                        <p class="text1">{{ __('product.info_category') }}:</p>
                                        <h3 class="text2">
                                            @if (isset($product->category->c_name))
                                                <a href="{{  route('get.category.list', $product->category->c_slug).'-'.$product->pro_category_id }}">{{ $product->category->c_name }}</a>
                                            @else
                                                "[N\A]"
                                            @endif
                                        </h3>
                                    </div>
                                    @if(isset($product->keywords) && !$product->keywords->isEmpty())
                                    <div class="item">
                                        <p class="text1">Từ khoá</p>
                                        <h3 class="text2">
                                            @foreach($product->keywords as $item)
                                                <a href="#">{{ $item->k_name }}</a> ,
                                            @endforeach
                                        </h3>
                                    </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-content" style="margin-bottom: 10px;">
                <ul class="nav" style="margin-bottom: 15px;padding-top: 10px;">
                    <li><a href="" class="tab-item active" data-id="#tab-content">{{ __('product.tab_content') }}</a></li>
                </ul>
                <div class="tab-item-content active" id="tab-content">
                    <div class="" style="margin-bottom: 10px">
                        {!! $product->pro_content !!}
                    </div>
                </div>
            </div>
            {{-- @include('frontend.pages.product_detail.include._inc_ratings') --}}
            <div class="comments">
                <div class="form-comment">
                    <form action="" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="productId" value="{{ $product->id }}">
                        <div class="form-group">
                            <textarea placeholder="..." name="comment" class="form-control" id="" cols="30" rows="5"></textarea>
                        </div>
                        <div class="footer">
                            <p>
                                <a href="" title="Gửi ảnh"  class="js-update-image"><i class="la la-camera"></i> {{ __('product.send_photos') }}</a>
                                <input type="file" class="js-input-image" id="document" name="images[]" multiple style="opacity: 0;display: none" >
                                <a href="">{{ __('product.posting_regulations') }}</a>
                            </p>
                            <button class=" {{ \Auth::id() ? 'js-save-comment' : 'js-show-login' }}">{{ __('product.submit_comment') }}</button>
                        </div>
                        <div class="gallery"></div>
                    </form>
                </div>
                @include('frontend.pages.product_detail.include._inc_list_comments')
            </div>
            @if (isset($event1))
            <div>
                <a href="{{ $event1->e_link }}">
                    <img src="{{ pare_url_file($event1->e_banner) }}" alt="" style="width: 100%;height:auto;margin-top:20px;">
                </a>
            </div>
        @endif

        </div>
        <div class="card-body product-des">
            <div class="left" style="width: 100% !important;">
                <div class="tabs">
                    <div class="tabs__content">
                        <div class="product-five">
                            <div class="bot js-product-5 owl-carousel owl-theme owl-custom">
                                @foreach($productsSuggests as $product)
                                    <div class="item">
                                        @include('frontend.components.product_item',['product' => $product])
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
{{--            <div class="right">--}}
{{--                @if (isset($event3))--}}
{{--                <a href="#" title="Giam giá" target="_blank"><img alt="Hoan tien" style="width: 100%"--}}
{{--                                                                  src="{{ pare_url_file($event3->e_banner) }}"></a>--}}
{{--                @endif--}}
{{--            </div>--}}
        </div>
    </div>
    {{-- @if ($isPopupCaptcha >= 2)
        @include('frontend.pages.product_detail.include._inc_popup_captcha')
    @endif --}}
@stop
@section('script')
    <script>
		var ROUTE_COMMENT = '{{ route('ajax_post.comment') }}';
		var URL_CAPTCHA = '{{ route('ajax_post.captcha.resume') }}'
    </script>
    <script src="{{ asset('js/product_detail.js') }}" type="text/javascript"></script>

@stop
