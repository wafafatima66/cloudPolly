@extends('layouts.app')

@section('page-header')
	<!-- PAGE HEADER -->
	<div class="page-header mt-5-7">
		<div class="page-leftheader">
			<h4 class="page-title mb-0">{{ __('View Notification') }}</h4>
			<ol class="breadcrumb mb-2">
				<li class="breadcrumb-item"><a href="{{url('/' . $page='#')}}"><i class="mdi mdi-upload-network mr-2 fs-12"></i>{{ __('User') }}</a></li>
				<li class="breadcrumb-item" aria-current="page"><a href="{{url('/' . $page='#')}}"> {{ __('Notifications') }}</a></li>
				<li class="breadcrumb-item active" aria-current="page"><a href="{{url('/' . $page='#')}}"> {{ __('View Notification') }}</a></li>
			</ol>
		</div>
	</div>
	<!-- END PAGE HEADER -->
@endsection

@section('content')						
	<!-- SUPPORT REQUEST -->
	<div class="row">
		<div class="col-lg-6 col-md-6 col-xm-12">
			<div class="card overflow-hidden border-0">
				<div class="card-header">
					<h3 class="card-title">{{ __('Notification') ID}}: <span class="text-muted">{{ $notification->id }}</span></h3>
				</div>
				<div class="card-body pt-5">		

					<div class="row">
						<div class="col-lg-4 col-md-4 col-12">
							<h6 class="font-weight-bold mb-1">{{ __('Type') }}: </h6>
							<span class="fs-14">{{ $notification->data['type'] }}</span>
						</div>
						<div class="col-lg-4 col-md-4 col-12">
							<h6 class="font-weight-bold mb-1">{{ __('User Action') }}: </h6>
							<span class="fs-14">{{ $notification->data['action'] }}</span>
						</div>
						<div class="col-lg-4 col-md-4 col-12">
							<h6 class="font-weight-bold mb-1">{{ __('Created On') }}: </h6>
							<span class="fs-14">{{ $notification->created_at }}</span>
						</div>
					</div>

					<div class="row pt-5">
						<div class="col-lg-4 col-md-4 col-12">
							<h6 class="font-weight-bold mb-1">{{ __('Sender') }}: </h6>
							<span class="fs-14">{{ ucfirst($notification->data['sender']) }}</span>
						</div>
						<div class="col-lg-4 col-md-4 col-12">
							<h6 class="font-weight-bold mb-1">{{ __('Read On') }}: </h6>
							<span class="fs-14">{{ $notification->read_at }}</span>
						</div>
					</div>	

					<div class="row pt-7">
						<div class="col-12">
							<h6 class="font-weight-bold mb-1">{{ __('Subject') }}: </h6>
							<p class="fs-14 font-italic">{{ $notification->data['subject'] }}</p>
						</div>
						<div class="col-12 mt-2">
							<h6 class="font-weight-bold mb-1">{{ __('Message') }}: </h6>
							<p class="fs-14 font-italic">{{ $notification->data['message'] }}</p>
						</div>
					</div>	

					<div class="border-0 text-right mb-2 mt-8">
						<a href="{{ route('user.notifications') }}" class="btn btn-primary">{{ __('Return') }}</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END SUPPORT REQUEST -->
@endsection

