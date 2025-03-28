@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>{{ __('admin_transaction.transaction.title_index') }}</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{  route('admin.transaction.index') }}"> Transaction</a></li>
            <li class="active"> List </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-title">
                    <form class="form-inline">
                        <input type="text" class="form-control" value="{{ Request::get('id') }}" name="id" placeholder="ID">
                        <input type="text" class="form-control" value="{{ Request::get('email') }}" name="email" placeholder="Email ...">
                        <select name="type" class="form-control">
                            <option value="0">{{ __('admin_transaction.transaction.title_customer_class') }}</option>
                            <option value="1" {{ Request::get('type') == 1 ? "selected='selected'" : "" }}>{{ __('admin_dashboard.order.member') }}</option>
                            <option value="2" {{ Request::get('type') == 2 ? "selected='selected'" : "" }}>{{ __('admin_dashboard.order.guest') }}</option>
                        </select>
                        <select name="status" class="form-control">
                            <option value="">{{ __('admin_transaction.transaction.title_status') }}</option>
                            @foreach($statusAction as $key => $atc)
                                <option value="{{ $key }}" {{ Request::get('status') == $key ? "selected='selected'" : "" }}>{{ __($atc['name']) }}</option>
                            @endforeach
                        </select>
                        <button type="submit" class="btn btn-success"><i class="fa fa-search"></i> Search</button>
{{--                        <button type="submit" name="export" value="true" class="btn btn-info">--}}
{{--                            <i class="fa fa-save"></i> Export--}}
{{--                        </button>--}}
                    </form>
                </div>
                <div class="box-body">
                   <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">STT</th>
                                    <th style="width: 10px">ID</th>
                                    <th style="width: 30%">Info</th>
                                    <th>Money</th>
                                    <th>Account</th>
                                    <th>Type</th>
                                    <th>Status</th>
                                    <th>Time</th>
                                    <th>Action</th>
                                </tr>
                                @if (isset($transactions))
                                    @foreach($transactions as $key => $transaction)
                                        <tr>
                                            <td>{{ (($transactions->currentPage() - 1) * $transactions->perPage()) + ( $key + 1)  }}</td>
                                            <td>{{ $transaction->id }}</td>
                                            <td>
                                                <ul>
                                                    <li>Name: {{ $transaction->tst_name }}</li>
                                                    <li>Email: {{ $transaction->tst_email }}</li>
                                                    <li>Phone: {{ $transaction->tst_phone }}</li>
                                                    <li>Addres: {{ $transaction->tst_address }}</li>
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
                                                <span class="label label-{{ $transaction->getType($transaction->tst_type)['class'] }}">
                                                    {{ __($transaction->getType($transaction->tst_type)['name']) }}</span>
                                            </td>
                                            <td>
                                                <span class="label label-{{ $transaction->getStatus($transaction->tst_status)['class'] }}">
                                                    {{ __($transaction->getStatus($transaction->tst_status)['name']) }}
                                                </span>
                                            </td>
                                            <td>{{  $transaction->created_at }}</td>
                                            <td>
                                                <a data-id="{{  $transaction->id }}" href="{{ route('ajax.admin.transaction.detail', $transaction->id) }}" class="btn btn-xs btn-info js-preview-transaction"><i class="fa fa-eye"></i> View</a>

                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-success btn-xs">Action</button>
                                                    <button type="button" class="btn btn-success btn-xs dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                        <span class="caret"></span>
                                                        <span class="sr-only">Toggle Dropdown</span>
                                                    </button>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li>
                                                            <a href="{{  route('admin.transaction.delete', $transaction->id) }}" class="js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
                                                        </li>
                                                        <li class="divider"></li>
                                                        <li>
                                                            <a href="{{ route('admin.action.transaction',['process', $transaction->id]) }}" ><i class="fa fa-ban"></i> Đang bàn giao</a>
                                                        </li>
                                                        <li>
                                                            <a href="{{ route('admin.action.transaction',['success', $transaction->id]) }}" ><i class="fa fa-ban"></i> Đã bàn giao</a>
                                                        </li>
                                                        <li>
                                                            <a href="{{ route('admin.action.transaction',['cancel', $transaction->id]) }}" ><i class="fa fa-ban"></i> Huỷ</a>
                                                        </li>

                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    {!! $transactions->appends($query)->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
        </div>
            <!-- /.box -->
    </section>

    <div class="modal fade fade" id="modal-preview-transaction">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
                    <h4 class="modal-title">  <b id="idTransaction">#1</b></h4>
                </div>
                <div class="modal-body">
                    <div class="content">

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.content -->
@stop
