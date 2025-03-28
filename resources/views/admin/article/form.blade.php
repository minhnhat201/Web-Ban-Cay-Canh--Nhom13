
<form role="form" action="" method="POST" enctype="multipart/form-data" autocomplete="off">
    @csrf
    <div class="col-sm-8">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">{{  __('admin_article.article.title_info')}}</h3>
            </div>
            <div class="box-body">
                <div class="form-group "> 
                    <label for="exampleInputEmail1">{{  __('admin_article.article.label_name')}}</label>
                    <input type="text" class="form-control" name="a_name" placeholder="" autocomplete="off" value="{{  $article->a_name ?? old('a_name') }}">
                    @if ($errors->first('a_name'))
                        <span class="text-danger">{{ $errors->first('a_name') }}</span>
                    @endif
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="a_position_1" {{ $article->a_position_1 ?? 0 == 1 ? "checked" : "" }} value="1">  {{  __('admin_article.article.label_position1')}}
                            </label>
                         </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="a_position_2" {{ $article->a_position_2 ?? 0 == 1 ? "checked" : "" }} value="1">  {{  __('admin_article.article.label_position2')}}
                            </label>
                         </div>
                    </div>
                </div>
                <div class="form-group "> 
                    <label for="exampleInputEmail1">{{  __('admin_article.article.label_description')}}</label>
                    <textarea name="a_description" class="form-control" cols="5" rows="2" autocomplete="off">{{  $article->a_description ?? old('a_description') }}</textarea> 
                    @if ($errors->first('a_description'))
                        <span class="text-danger">{{ $errors->first('a_description') }}</span>
                    @endif
                </div>
                <div class="form-group ">
                    <label class="control-label">{{  __('admin_article.article.label_category')}} <b class="col-red">(*)</b></label>
                    <select name="a_menu_id" class="form-control ">
                        <option value="">__Click__</option>
                        @foreach($menus as $menu)
                            <option value="{{ $menu->id }}" {{ ($article->a_menu_id ?? 0 == $menu->id) ? "selected='selected'" : "" }}>
                                {{  $menu->mn_name }}
                            </option>
                        @endforeach
                    </select>
                    @if ($errors->first('a_menu_id'))
                        <span class="text-danger">{{ $errors->first('a_menu_id') }}</span>
                    @endif
                </div>

            </div>
        </div>
        
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">{{  __('admin_article.article.label_content_title')}}</h3>
            </div>
            <div class="box-body">
                <div class="form-group ">
                    <label for="exampleInputEmail1">Content</label> 
                    <textarea name="a_content" id="content" class="form-control textarea" cols="5" rows="2" >{{ $article->a_content ?? '' }}</textarea>
                    @if ($errors->first('a_content'))
                        <span class="text-danger">{{ $errors->first('a_content') }}</span>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">{{  __('admin_article.article.label_avatar')}}</h3>
            </div>
            <div class="box-body block-images">
                <div style="margin-bottom: 10px"> 
                    <img src="{{ pare_url_file($article->a_avatar ?? '') }}" onerror="this.onerror=null;this.src='{{ image_default()  }}';" alt="" class="img-thumbnail" style="width: 200px;height: 200px;">
                </div>
                <div style="position:relative;"> <a class="btn btn-primary" href="javascript:;"> Choose File... <input type="file" style="position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:&quot;progid:DXImageTransform.Microsoft.Alpha(Opacity=0)&quot;;opacity:0;background-color:transparent;color:transparent;" name="a_avatar" size="40" class="js-upload"> </a> &nbsp; <span class="label label-info" id="upload-file-info"></span> </div>
            </div>
        </div>
    </div>
    <div class="col-sm-12 clearfix">
        <div class="box-footer text-center"> 
            <a href="{{ route('admin.article.index') }}" class="btn btn-default"><i class="fa fa-arrow-left"></i> {{  __('admin_article.btn_save')}}</a>
            <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> {{  __('admin_article.btn_save')}} </button> </div>
    </div>
</form>
<script src="{{  asset('static_admin/bower_components/jquery/dist/jquery.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('static_admin/ckeditor/ckeditor.js') }}"></script>
<script type="text/javascript">

    var options = {
        filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
        filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
        filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
        filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
   };

    CKEDITOR.replace( 'content' ,options);
</script>




