@extends('layouts.app')

@section('page-header')
	<!-- PAGE HEADER-->
	<div class="page-header mt-5-7">
		<div class="page-leftheader">
			<h4 class="page-title mb-0">{{ __('Admin Dashboard') }}</h4>
			<ol class="breadcrumb mb-2">
				<li class="breadcrumb-item"><a href="{{url('/' . $page='#')}}"><i class="fa fa-th-large mr-2 fs-12"></i>{{ __('Admin') }}</a></li>
				<li class="breadcrumb-item active" aria-current="page"><a href="{{url('/' . $page='#')}}"> {{ __('Dashboard') }}</a></li>
			</ol>
		</div>
	</div>
	<!--END PAGE HEADER -->
@endsection

@section('content')						
	<!-- TOP BOX INFO -->
	<div class="row">
		<div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
			<div class="card overflow-hidden border-0">
				<div class="card-body">
					<div class="d-flex align-items-end justify-content-between">
						<div>
							<p class=" mb-3 fs-12 font-weight-bold">{{ __('Total New Users') }} <span class="text-muted">({{ __('Current Month') }})</span></p>
							<h2 class="mb-0"><span class="number-font fs-20">0</span><span class="ml-2 text-muted fs-11 data-percentage-change"><span id="users_change"></span> {{ __('this month') }}</span></h2>

						</div>
						<span class="fs-50 mt-m1"><i class="mdi mdi-account-switch"></i></span>
					</div>
					<div class="d-flex mt-2">
						<div>
							<span class="text-muted fs-12 mr-1">{{ __('Last Month') }}</span>
							<span class="number-font fs-12"><i class="fa fa-chain mr-1 text-success"></i>0</span>
						</div>
						<div class="ml-auto">
							<span class="text-muted fs-12 mr-1">{{ __('Current Year') }} ({{ __('Total') }})</span>
							<span class="number-font fs-12"><i class="fa fa-bookmark mr-1 text-success"></i>0</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
			<div class="card overflow-hidden border-0">
				<div class="card-body">
					<p class=" mb-3 fs-12">{{ __('Free Characters Used') }} <span class="text-muted">({{ __('Current Month') }})</span></p>
					<h2 class="mb-2 number-font fs-20">0</h2>
					<small class="fs-12 text-muted">{{ __('Compared to Last Month') }} (<span id="free_chars_past"></span>): </small>
					<span class="fs-12" id="free_chars"></span>
				</div>									
			</div>
		</div>
		<div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
			<div class="card overflow-hidden border-0">
				<div class="card-body">
					<p class=" mb-3 fs-12">{{ __('Paid Characters Used') }} <span class="text-muted">({{ __('Current Month') }})</span></p>
					<h2 class="mb-2 number-font fs-20">0</h2>
					<small class="fs-12 text-muted">{{ __('Compared to Last Month') }} (<span id="paid_chars_past"></span>): </small>
					<span class="fs-12" id="paid_chars"></span>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
			<div class="card overflow-hidden border-0">
				<div class="card-body">
					<p class=" mb-3 fs-12">{{ __('Purchased Characters') }} <span class="text-muted">({{ __('Current Month') }})</span></p>
					<h2 class="mb-2 number-font fs-20">0</h2>
					<small class="fs-12 text-muted">{{ __('Compared to Last Month') }} (<span id="purchased_chars_past"></span>): </small>
					<span class="fs-12" id="purchased_chars"></span>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
			<div class="card overflow-hidden border-0">
				<div class="card-body">
					<p class=" mb-3 fs-12">{{ __('Synthesized Audio Results') }} <span class="text-muted">({{ __('Current Month') }})</span></p>
					<h2 class="mb-2 number-font fs-20">0</h2>
					<small class="fs-12 text-muted">{{ __('Compared to Last Month') }} (<span id="audio_files_past"></span>): </small>
					<span class="fs-12" id="audio_files"></span>
				</div>
			</div>
		</div>
	</div>
	<!-- END TOP BOX INFO -->

	

@endsection

@section('js')
	<!-- Chart JS -->
	<script src="{{URL::asset('plugins/chart/chart.bundle.js')}}"></script>
	<script type="text/javascript">
		
		
	</script>
@endsection