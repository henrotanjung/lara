{{--
 * LaraClassified - Geo Classified Ads CMS
 * Copyright (c) BedigitCom. All Rights Reserved
 *
 * Website: http://www.bedigit.com
 *
 * LICENSE
 * -------
 * This software is furnished under a license and may be used and copied
 * only in accordance with the terms of such license and with the inclusion
 * of the above copyright notice. If you Purchased from Codecanyon,
 * Please read the full License from here - http://codecanyon.net/licenses/standard
--}}
@extends('layouts.master')

@section('wizard')
    @include('post.inc.wizard')
@endsection

@section('content')
    <div class="main-container">
        <div class="container">
            <div class="row">
    
                @include('post.inc.notification')
                
                <div class="col-md-12 page-content">
                    <div class="inner-box category-content">
                        <h2 class="title-2"><strong> <i class="icon-camera-1"></i> {{ t('Photos') }}</strong></h2>
                        <div class="row">
                            <div class="col-sm-12">
                                <form class="form-horizontal" id="postForm" method="POST" action="{{ url()->current() }}" enctype="multipart/form-data">
                                    {!! csrf_field() !!}
                                    <input type="hidden" name="post_id" value="{{ $post->id }}">
                                    <fieldset>
                                        @if (isset($postsPicturesNumber) and is_numeric($postsPicturesNumber) and $postsPicturesNumber > 0)
                                            <!-- Pictures -->
                                            <div id="picturesBloc" class="form-group <?php echo (isset($errors) and $errors->has('pictures')) ? 'has-error' : ''; ?>">
                                                <label class="col-md-3 control-label" for="pictures" style="text-align: left;"> {{ t('Pictures') }} </label>
                                                <div class="col-md-8"> </div>
                                                <div class="col-md-12" style="position: relative; float: right; padding-top: 10px; text-align: center;">
                                                    <div class="mb10">
                                                        <input id="pictureField" name="pictures[]" type="file" multiple class="file picimg">
                                                    </div>
                                                    <p class="help-block">
                                                        {{ t('Add up to :pictures_number photos. Use a real image of your product, not catalogs.', [
                                                            'pictures_number' => $postsPicturesNumber
                                                        ]) }}
                                                    </p>
                                                </div>
                                            </div>
                                        @endif
                                        <div id="uploadError" style="margin-top:10px;display:none"></div>
                                        <div id="uploadSuccess" class="alert alert-success fade in" style="margin-top:10px;display:none"></div>
                                    
                                    
                                        <!-- Button -->
                                        <div class="form-group">
                                            <div class="col-md-12 mt20" style="text-align: center;">
                                                @if (getSegment(2) != 'create')
                                                    <a href="{{ lurl('posts/' . $post->id . '/edit') }}" class="btn btn-default btn-lg">{{ t('Previous') }}</a>
                                                @endif
                                                <a id="nextStepAction" href="{{ url($nextStepUrl) }}" class="btn btn-default btn-lg">{{ t('Skip') }}</a>
                                            </div>
                                        </div>
                                        
                                        <div style="margin-bottom: 30px;"></div>
                                    
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.page-content -->
            </div>
        </div>
    </div>
@endsection

@section('after_styles')
    <link href="{{ url('assets/plugins/bootstrap-fileinput/css/fileinput.min.css') }}" rel="stylesheet">
    <style>
        .krajee-default.file-preview-frame:hover:not(.file-preview-error) {
            box-shadow: 0 0 5px 0 #666666;
        }
    </style>
@endsection

@section('after_scripts')
    <script src="{{ url('assets/plugins/bootstrap-fileinput/js/plugins/sortable.min.js') }}" type="text/javascript"></script>
    <script src="{{ url('assets/plugins/bootstrap-fileinput/js/fileinput.min.js') }}" type="text/javascript"></script>
    @if (file_exists(public_path() . '/assets/plugins/bootstrap-fileinput/js/locales/'.config('app.locale').'.js'))
        <script src="{{ url('assets/plugins/bootstrap-fileinput/js/locales/'.config('app.locale').'.js') }}" type="text/javascript"></script>
    @endif
    <script>
        /* Initialize with defaults (pictures) */
        @if (isset($postsPicturesNumber) and is_numeric($postsPicturesNumber) and $postsPicturesNumber > 0)
        <?php
            // Get Upload Url
            if (getSegment(2) == 'create') {
                $uploadUrl = lurl('posts/create/' . $post->tmp_token . '/photos/');
            } else {
                $uploadUrl = lurl('posts/' . $post->id . '/photos/');
            }
        ?>
            $('#pictureField').fileinput(
            {
                language: '{{ config('app.locale') }}',
                overwriteInitial: false,
                showCaption: false,
                showPreview: true,
                allowedFileExtensions: {!! getUploadFileTypes('image', true) !!},
				uploadUrl: '{{ $uploadUrl }}',
                uploadAsync: false,
                showRemove: false,
                maxFileSize: {{ (int)config('settings.upload_max_file_size', 1000) }},
                showBrowse: true,
                browseOnZoneClick: true,
                minFileCount: 0,
                maxFileCount: {{ (int)$postsPicturesNumber }},
                validateInitialCount: true,
                uploadClass: 'btn btn-success',
                @if (isset($post) and isset($post->pictures))
                /* Retrieve current images */
                /* Setup initial preview with data keys */
                initialPreview: [
                @for($i = 0; $i <= $postsPicturesNumber-1; $i++)
                    @continue(!$post->pictures->has($i) or !isset($post->pictures->get($i)->filename))
                    '{{ resize($post->pictures->get($i)->filename) }}',
                @endfor
                ],
                initialPreviewAsData: true,
                initialPreviewFileType: 'image',
                /* Initial preview configuration */
                initialPreviewConfig: [
                @for($i = 0; $i <= $postsPicturesNumber-1; $i++)
                    @continue(!$post->pictures->has($i) or !isset($post->pictures->get($i)->filename))
                    <?php
                    // Get Deletion Url
                    if (getSegment(2) == 'create') {
                        $initialPreviewConfigUrl = lurl('posts/create/' . $post->tmp_token . '/photos/' . $post->pictures->get($i)->id . '/delete');
                    } else {
                        $initialPreviewConfigUrl = lurl('posts/' . $post->id . '/photos/' . $post->pictures->get($i)->id . '/delete');
                    }
                    ?>
                    {
                        caption: '{{ last(explode('/', $post->pictures->get($i)->filename)) }}',
                        size: {{ (int)File::size(filePath($post->pictures->get($i)->filename)) }},
                        key: {{ (int)$post->pictures->get($i)->id }},
                        url: '{{ $initialPreviewConfigUrl }}'
                    },
                @endfor
                ],
                @endif
                elErrorContainer: '#uploadError'
            });
        @endif
        
        $('#pictureField').on('filebatchpreupload', function(event, data, id, index) {
            $('#uploadSuccess').html('<h4>{{ t('Upload Status') }}</h4><ul></ul>').hide();
        });
        
        $('#pictureField').on('filebatchuploadsuccess', function(event, data, previewId, index) {
            /* Show uploads success messages */
            var out = '';
            $.each(data.files, function(key, file) {
                if (typeof file !== 'undefined') {
                    var fname = file.name;
                    out = out + {!! t('Uploaded file #key successfully') !!};
                }
            });
            $('#uploadSuccess ul').append(out);
            $('#uploadSuccess').fadeIn('slow');
            
            /* Change button label */
            $('#nextStepAction').html('{{ $nextStepLabel }}').removeClass('btn-default').addClass('btn-primary');
            
            /* Check redirect */
            var maxFiles = {{ (isset($postsPicturesNumber)) ? (int)$postsPicturesNumber : 1 }};
            var oldFiles = {{ (isset($post) and isset($post->pictures)) ? $post->pictures->count() : 0 }};
            var newFiles = Object.keys(data.files).length;
            var countFiles = oldFiles + newFiles;
            if (countFiles >= maxFiles) {
                var nextStepUrl = '{{ url($nextStepUrl) }}';
				redirect(nextStepUrl);
            }
        });

        $('#pictureField').on('filepredelete', function(jqXHR) {
            var abort = true;
            if (confirm("{{ t('Are you sure you want to delete this picture?') }}")) {
                abort = false;
            }
            return abort;
        });
    </script>
    
@endsection
