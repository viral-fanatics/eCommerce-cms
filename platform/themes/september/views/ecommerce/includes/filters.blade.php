@php
    $brands = get_all_brands(['status' => \Botble\Base\Enums\BaseStatusEnum::PUBLISHED], ['slugable'], ['products']);
    $categories = get_product_categories(['status' => \Botble\Base\Enums\BaseStatusEnum::PUBLISHED], ['slugable', 'children:id,name,parent_id', 'children.slugable'], [], true);
    $tags = app(\Botble\Ecommerce\Repositories\Interfaces\ProductTagInterface::class)->advancedGet([
        'condition' => ['status' => \Botble\Base\Enums\BaseStatusEnum::PUBLISHED],
        'with'      => ['slugable'],
        'withCount' => ['products'],
        'order_by'  => ['products_count' => 'desc'],
        'take'      => 20,
    ]);
    $categoriesRequest = request()->input('categories', []);
    $urlCurrent = URL::current();
@endphp

<aside class="widget widget--shop">
    <h4 class="widget__title">{{ __('Product Categories') }}</h4>
    <div class="widget__content">
        <ul class="ps-list--categories">
            @foreach($categories as $category)
                <li class="@if ($urlCurrent == $category->url || (!empty($categoriesRequest && in_array($category->id, $categoriesRequest)))) current-menu-item @endif @if ($category->children->count()) menu-item-has-children @endif">
                    <a href="{{ $category->url }}">{{ $category->name }}</a>
                    @if ($category->children->count())
                        @include(Theme::getThemeNamespace() . '::views.ecommerce.includes.sub-categories', ['children' => $category->children])
                    @endif
                </li>
            @endforeach
        </ul>
    </div>
</aside>
@if (count($brands) > 0)
    <aside class="widget widget--shop">
        <h4 class="widget__title">{{ __('Brands') }}</h4>
        <div class="widget__content">
            <ul class="widget__links list--plus">
                @foreach($brands as $brand)
                    <li @if (URL::current() == $brand->url) class="active" @endif><a href="{{ $brand->url }}">{{ $brand->name }} <span class="d-inline-block">({{ $brand->products_count }})</span></a></li>
                @endforeach
            </ul>
        </div>
    </aside>
@endif
<aside class="widget widget--shop widget--tags">
    <h4 class="widget__title">{{ __('Product Tags') }}</h4>
    <div class="widget__content">
        <ul class="list--tags">
            @foreach($tags as $tag)
                <li @if (URL::current() == $tag->url) class="active" @endif><a href="{{ $tag->url }}">{{ $tag->name }} ({{ $tag->products_count }})</a></li>
            @endforeach
        </ul>
    </div>
</aside>
<aside class="widget widget--shop">
    <h4 class="widget__title">{{ __('By Price') }}</h4>
    <div class="widget__content nonlinear-wrapper">
        <div class="nonlinear" data-min="0" data-max="{{ theme_option('max_filter_price', 100000) }}"></div>
        <div class="ps-slider__meta">
        <div data-current-exchange-rate="{{ get_current_exchange_rate() }}"></div>
            <input class="product-filter-item product-filter-item-price-0" name="min_price" value="{{ request()->input('min_price', 0) }}" type="hidden">
            <input class="product-filter-item product-filter-item-price-1" name="max_price" value="{{ request()->input('max_price', theme_option('max_filter_price', 100000)) }}" type="hidden">
            <span class="ps-slider__value">
                <span class="ps-slider__min"></span> {{ get_application_currency()->title }}</span> - <span class="ps-slider__value"><span class="ps-slider__max"></span> {{ get_application_currency()->title }}
            </span>
        </div>
    </div>

    {!! render_product_swatches_filter([
        'view' => Theme::getThemeNamespace() . '::views.ecommerce.attributes.attributes-filter-renderer'
    ]) !!}
</aside>
