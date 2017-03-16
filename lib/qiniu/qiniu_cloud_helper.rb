module QiniuCloudHelper
  def upload_return_url(local_path)
    bucket = 'productcenter'
    put_policy = Qiniu::Auth::PutPolicy.new(bucket, nil, 3600)
    uptoken = Qiniu::Auth.generate_uptoken(put_policy)

    code, result, response_headers = Qiniu::Storage.upload_with_token_2(uptoken, local_path, nil, nil, :bucket => bucket)
    'http://omj8i678x.bkt.clouddn.com/' + result['key']
  end
end