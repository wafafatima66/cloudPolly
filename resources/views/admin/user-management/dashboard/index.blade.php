@extends('layouts.app')

@section('page-header')
	<!-- PAGE HEADER -->
	<div class="page-header mt-5-7">
		<div class="page-leftheader">
			<h4 class="page-title mb-0">{{ __('User Dahsboard') }}</h4>
			<ol class="breadcrumb mb-2">
				<li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}"><i class="mdi mdi-account-convert mr-2 fs-12"></i>{{ __('Admin') }}</a></li>
				<li class="breadcrumb-item" aria-current="page"><a href="{{ route('admin.user.dashboard') }}"> {{ __('User Management<') }}</a></li>
				<li class="breadcrumb-item active" aria-current="page"><a href="#"> {{ __('User Dashboard') }}</a></li>
			</ol>
		</div>
	</div>
	<!-- END PAGE HEADER -->
@endsection

@section('content')						
	<!-- USER BOX INFO -->
	<div class="row">
		<div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
			<div class="card overflow-hidden border-0">
				<div class="card-body">
					<i class="mdi mdi-account-multiple-plus text-primary fs-45 float-right"></i>	
					<p class=" mb-3 fs-12 font-weight-bold mt-1">{{ __('Total Registered Users') }}</p>
					<h2 class="mb-0"><span class="number-font-chars">{{ number_format($user_data_year['total_users'][0]['data']) }}</span></h2>									
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
			<div class="card border-0">
				<div class="card-body">
					<i class="mdi mdi-account-edit text-success fs-45 float-right"></i>	
					<p class=" mb-3 fs-12 font-weight-bold mt-1">{{ __('Total Subscribed Users') }}</p>
					<h2 class="mb-0"><span class="number-font-chars">{{ number_format($user_data_year['total_paid_users'][0]['data']) }}</span></h2>					
									
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
			<div class="card border-0">
				<div class="card-body">
					<i class="mdi mdi-account-network fs-45 float-right"></i>	
					<p class=" mb-3 fs-12 font-weight-bold mt-1">{{ __('Online Users') }}</p>
					<h2 class="mb-0"><span class="number-font-chars">{{ $users }}</span></h2>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
			<div class="card border-0">
				<div class="card-body">
					<i class="mdi mdi-account-convert fs-45 float-right"></i>	
					<p class=" mb-3 fs-12 font-weight-bold mt-1">{{ __('Visiters Today') }} ({{ __('Registered') }})</p>
					<h2 class="mb-0"><span class="number-font-chars">{{ $users_today }}</span></h2>
				</div>
			</div>
		</div>
	</div>
	<!-- END USER BOX INFO -->

@endsection

@section('js')
	
	
@endsection