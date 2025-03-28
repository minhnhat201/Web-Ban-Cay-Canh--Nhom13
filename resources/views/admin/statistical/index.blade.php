@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>{{ __('admin_dashboard.title_h1') }}</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        </ol>
    </section>
    <section class="content">
        <!-- Info boxes -->
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-aqua"><i class="ion ion-ios-cart-outline"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{{ __('admin_dashboard.session_1.box1.name') }}</span>
                        <span class="info-box-number">{{  $totalTransactions }}<small><a href="{{  route('admin.transaction.index') }}">({{ __('admin_dashboard.session_1.desc') }})</a></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-red"><i class="ion ion-ios-people-outline"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{{ __('admin_dashboard.session_1.box2.name') }}</span>
                        <span class="info-box-number">{{ $totalUsers }} <small><a href="{{ route('admin.user.index') }}">({{ __('admin_dashboard.session_1.desc') }})</a></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- fix for small devices only -->
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-green"><i class="ion ion-ios-gear-outline"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{{ __('admin_dashboard.session_1.box3.name') }}</span>
                        <span class="info-box-number">{{  $totalProducts }} <small><a href="{{ route('admin.product.index') }}">({{ __('admin_dashboard.session_1.desc') }})</a></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-yellow"><i class="fa fa-google-plus"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{{ __('admin_dashboard.session_1.box4.name') }}</span>
                        <span class="info-box-number">{{ $totalRatings }} <small><a href="{{ route('admin.rating.index') }}">({{ __('admin_dashboard.session_1.desc') }})</a></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
        </div>
        <div class="row">
			<!-- /.col -->
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="info-box">
					<span class="info-box-icon bg-yellow"><i class="fa fa-dollar"></i></span>
					<div class="info-box-content">
						<span class="info-box-text">{{ __('admin_dashboard.session_1.box5.name') }}</span>
						<span class="info-box-number">{{ number_format($totalMoneyDay,0,',','.') }} <small></small></span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-aqua"><i class="fa fa-dollar"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{{ __('admin_dashboard.session_1.box6.name') }}</span>
                        <span class="info-box-number">{{ number_format($totalMoneyWeed ,0,',','.') }}<small></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-red"><i class="fa fa-dollar"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{{ __('admin_dashboard.session_1.box7.name') }}</span>
                        <span class="info-box-number">{{number_format($totalMoneyMonth,0,',','.')  }} <small></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- fix for small devices only -->
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-green"><i class="fa fa-dollar"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">{{ __('admin_dashboard.session_1.box8.name') }}</span>
                        <span class="info-box-number">{{ number_format($totalMoneyYear ,0,',','.') }} <small></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>

        </div>

    <!-- /.row -->
    <div class="row" style="margin-bottom: 15px;">
        <div class="col-sm-8">
            <figure class="highcharts-figure">
                <div id="container2" data-list-day="{{ $listDay }}" data-money-default={{ $arrRevenueTransactionMonthDefault }} data-money={{ $arrRevenueTransactionMonth }}>

                    
                </div>
            </figure>
        </div>
        <div class="col-sm-4">
            <figure class="highcharts-figure">
                <div id="container" data-json="{{ $statusTransaction }}"></div>
            </figure>
        </div>
    </div>
    <!-- Main row -->
    <div class="row">
        <!-- Left col -->
        <div class="col-md-8">
            <!-- TABLE: LATEST ORDERS -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">{{ __('admin_dashboard.order.title') }}</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table no-margin">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Info</th>
                                    <th>Money</th>
                                    <th>Account</th>
                                    <th>Status</th>
                                    <th>Time</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($transactions as $transaction)
                                    <tr>
                                        <td>{{ $transaction->id }}</td>
                                        <td>
                                            <ul>
                                                <li>Name: {{ $transaction->tst_name }}</li>
                                                <li>Email: {{ $transaction->tst_email }}</li>
                                                <li>Phone: {{ $transaction->tst_phone }}</li>
                                            </ul>
                                        </td>
                                        <td>{{ number_format($transaction->tst_total_money,0,',','.') }} đ</td>
                                        <td>
                                            @if ($transaction->tst_user_id)
                                                <span class="label label-success">{{ __('admin_dashboard.order.member') }}</span>
                                            @else
                                                <span class="label label-default">{{ __('admin_dashboard.order.guest') }}</span>
                                            @endif
                                        </td>
                                        <td>
                                            <span class="label label-{{ $transaction->getStatus($transaction->tst_status)['class'] }}">
                                                {{ __($transaction->getStatus($transaction->tst_status)['name']) }}
                                            </span>
                                        </td>
                                        <td>{{  $transaction->created_at }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->
                </div>
                <!-- /.box-body -->
                <div class="box-footer clearfix">
                    <a href="javascript:void(0)" class="btn btn-sm btn-info btn-flat pull-right">{{ __('admin_dashboard.order.btn') }}</a>
                </div>
                <!-- /.box-footer -->
            </div>
            <!-- /.box -->
            <!-- TABLE: LATEST ORDERS -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">{{ __('admin_dashboard.order.title_2') }}</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table no-margin">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Qty</th>
                                <th>Price</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach($topProductBuyMonth as $product)
                                <tr>
                                    <td>{{ $product->od_product_id }}</td>
                                    <td>{{ $product->product->pro_name ?? "[N\A]" }}</td>
                                    <td>
                                        <img src="{{ pare_url_file($product->product->pro_avatar ?? "[N\A]") }}" alt="" style="width: 80px;height: 80px;">
                                    </td>
                                    <td>{{ $product->quantity }}</td>
                                    <td>{{ number_format($product->od_price,0,',','.') }} VNĐ</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->
                </div>
                <!-- /.box-body -->
                <div class="box-footer clearfix">
                    <a href="{{ route('admin.product.index') }}" class="btn btn-sm btn-info btn-flat pull-right">{{ __('admin_dashboard.order.btn_product') }}</a>
                </div>
                <!-- /.box-footer -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-4">
            <!-- PRODUCT LIST -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">{{ __('admin_dashboard.title_3') }}</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <ul class="products-list product-list-in-box">
                        @foreach($topPayProducts as $item)
                        <li class="item">
                            <div class="product-img">
                                <img src="{{ pare_url_file($item->pro_avatar) }}" alt="Product Image">
                            </div>
                            <div class="product-info">
                                <a href="javascript:void(0)" class="product-title">
                                    {{  $item->pro_pay }} {{ __('admin_dashboard.buy_time') }}
                                <span class="label label-warning pull-right">{{ number_format($item->pro_price,0,',','.') }} đ</span>
                                </a>
                                <span class="product-description">{{ $item->pro_name }}</span>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
                <!-- /.box-body -->
                <div class="box-footer text-center">
                    <a href="javascript:void(0)" class="uppercase">View All Products</a>
                </div>
                <!-- /.box-footer -->
            </div>
            <!-- /.box -->
            <!-- PRODUCT LIST -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">{{ __('admin_dashboard.title_4') }}</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <ul class="products-list product-list-in-box">
                        @foreach($topViewProducts as $item)
                        <li class="item">
                            <div class="product-img">
                                <img src="{{ pare_url_file($item->pro_avatar) }}" alt="Product Image">
                            </div>
                            <div class="product-info">
                                <a href="javascript:void(0)" class="product-title">
                                    {{  $item->pro_view }} <i class="fa fa-eye"></i>
                                <span class="label label-warning pull-right">{{ number_format($item->pro_price,0,',','.') }} đ</span>
                                </a>
                                <span class="product-description">{{ $item->pro_name }}</span>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
                <!-- /.box-body -->
                <div class="box-footer text-center">
                    <a href="javascript:void(0)" class="uppercase">View All Products</a>
                </div>
                <!-- /.box-footer -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
@stop

@section('script')

<link rel="stylesheet" href="https://code.highcharts.com/css/highcharts.css">
    <script src="https://code.highcharts.com/highcharts.js"></script>
    {{-- <script src="https://code.highcharts.com/modules/exporting.js"></script> --}}
    {{-- <script src="https://code.highcharts.com/modules/export-data.js"></script> --}}
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <script type="text/javascript">
        let dataTransaction = $("#container").attr('data-json');
        dataTransaction  =  JSON.parse(dataTransaction);

        let listday = $("#container2").attr("data-list-day");
        listday = JSON.parse(listday);

        let listMoneyMonth = $("#container2").attr('data-money');
        listMoneyMonth = JSON.parse(listMoneyMonth);
        
        let listMoneyMonthDefault = $("#container2").attr('data-money-default');
        listMoneyMonthDefault = JSON.parse(listMoneyMonthDefault);

        Highcharts.chart('container', {

            chart: {
                styledMode: true
            },

            title: {
                text: 'Order status statistics'
            },

            xAxis: {
                categories: ['Jan', 'Feb', 'Mar', 'Apr']
            },

            series: [{
                type: 'pie',
                allowPointSelect: true,
                keys: ['name', 'y', 'selected', 'sliced'],
                data: dataTransaction,
                showInLegend: true
            }]
        });

        Highcharts.chart('container2', {
            chart: {
                type: 'spline'
            },
            title: {
                text: 'Sales chart of days of the month'
            },
            subtitle: {
                text: 'Source: WorldClimate.com'
            },
            xAxis: {
                categories: listday
            },
            yAxis: {
                title: {
                    text: 'Temperature'
                },
                labels: {
                    formatter: function () {
                        return this.value + '°';
                    }
                }
            },
            tooltip: {
                crosshairs: true,
                shared: true
            },
            plotOptions: {
                spline: {
                    marker: {
                        radius: 4,
                        lineColor: '#666666',
                        lineWidth: 1
                    }
                }
            },
            series: [
            	{
                    name: 'Complete the transaction',
                    marker: {
                        symbol: 'square'
                    },
                    data: listMoneyMonth
                },
                {
                    name: 'Receive',
                    marker: {
                        symbol: 'square'
                    },
                    data: listMoneyMonthDefault
                }
            ]
        });
    </script>
@stop
