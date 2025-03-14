<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Comments;
use Illuminate\Support\Facades\Cache;

class UserCommentController extends Controller
{
    public function index()
    {
        $comments = Comments::with('product:id,pro_name,pro_slug')
            ->where('cmt_user_id', get_data_user('web'))
            ->paginate(10);


        $viewData = [
            'comments' => $comments
        ];

        return view('user.comment', $viewData);
    }

    public function delete($id)
    {
        Comments::find($id)->delete($id);
        Cache::forget('COMMENT_PRODUCT_'.$id.'_PAGE_1');
        Cache::forget('COMMENT_PRODUCT_'.$id.'_PAGE_2');
        Cache::forget('COMMENT_PRODUCT_'.$id.'_PAGE_3');
        Cache::forget('COMMENT_PRODUCT_'.$id.'_PAGE_4');
        return redirect()->back();
    }
}
