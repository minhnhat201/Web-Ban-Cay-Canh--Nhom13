<style type="text/css">
    .item__content .active a {
        color: red;
    }
</style>
<div class="filter-sidebar">
    <div class="item">
        <div class="item__title">{{ __('product.search') }}</div>
        <div class="item__content search">
            <form action="{{ route('get.search') }}">
                <input type="text" class="form-control" name="k" value="{{ Request::get('k') }}">
                <button><i class="fa fa-search"></i></button>
            </form>
        </div>
    </div>
{{--    @if (config('layouts.pages.search.price.type') == 2)--}}
{{--        <div class="item">--}}
{{--            <div class="item__title">{{ __('product.price') }}</div>--}}
{{--            <div class="item__content prices">--}}
{{--                @include('frontend.pages.product.include._inc_filter_price')--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    @endif--}}

    @if (isset($attributes))
        @foreach($attributes as $key => $attribute)
            <div class="item">
                <div class="item__title">{{ $key }}</div>
                <div class="item__content">
                    <ul>
                        @foreach($attribute as $item)
                            <li class=" js-param-search {{ Request::get('attr_'.$item['atb_type']) == $item['id'] ? "active" : "" }}"
                            data-param="attr_{{ $item['atb_type'] }}={{ $item['id'] }}">
                                <a href="{{ request()->fullUrlWithQuery(['attr_'.$item['atb_type'] => $item['id']]) }}">
                                    <span>{{ $item['atb_name'] }}</span>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        @endforeach
    @endif
    <div class="item">
        <div class="item__title">{{ __('product.review') }}</div>
        <div class="item__content ratings">
            <ul>
                @for ($i = 5 ; $i >0 ; $i--)
                    <li class="{{ Request::get('rv') == $i ? "active" : "" }}">
                        <a href="{{ request()->fullUrlWithQuery(['rv'=> $i]) }}">
                            <span>
                                @for($j = 1 ; $j <= 5 ; $j ++)
                                    <i class="la la-star {{ $j <= $i ? 'active' : '' }}"></i>
                                @endfor
                            </span>
                        </a>
                    </li>
                @endfor
            </ul>
        </div>
    </div>
</div>
