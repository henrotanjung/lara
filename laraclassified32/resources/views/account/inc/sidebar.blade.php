<aside>
	<div class="inner-box">
		<div class="user-panel-sidebar">

			<div class="collapse-box">
				<h5 class="collapse-title no-border">
					{{ t('My Account') }}&nbsp;
					<a href="#MyClassified" data-toggle="collapse" class="pull-right"><i class="fa fa-angle-down"></i></a>
				</h5>
				<div class="panel-collapse collapse in" id="MyClassified">
					<ul class="acc-list">
						<li>
							<a {!! ($pagePath=='') ? 'class="active"' : '' !!} href="{{ lurl('account') }}">
								<i class="icon-home"></i> {{ t('Personal Home') }}
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- /.collapse-box  -->

			<div class="collapse-box">
				<h5 class="collapse-title">
					{{ t('My Ads') }}
					<a href="#MyAds" data-toggle="collapse" class="pull-right"><i class="fa fa-angle-down"></i></a>
				</h5>
				<div class="panel-collapse collapse in" id="MyAds">
					<ul class="acc-list">
						<li>
							<a{!! ($pagePath=='my-posts') ? ' class="active"' : '' !!} href="{{ lurl('account/my-posts') }}">
							<i class="icon-docs"></i> {{ t('My ads') }}&nbsp;
							<span class="badge">{{ isset($countMyPosts) ? $countMyPosts : 0 }}</span>
							</a>
						</li>
						<li>
							<a{!! ($pagePath=='favourite') ? ' class="active"' : '' !!} href="{{ lurl('account/favourite') }}">
							<i class="icon-heart"></i> {{ t('Favourite ads') }}&nbsp;
							<span class="badge">{{ isset($countFavouritePosts) ? $countFavouritePosts : 0 }}</span>
							</a>
						</li>
						<li hidden>
							<a{!! ($pagePath=='saved-search') ? ' class="active"' : '' !!} href="{{ lurl('account/saved-search') }}">
							<i class="icon-star-circled"></i> {{ t('Saved search') }}&nbsp;
							<span class="badge">{{ isset($countSavedSearch) ? $countSavedSearch : 0 }}</span>
							</a>
						</li>
						<li hidden>
							<a{!! ($pagePath=='pending-approval') ? ' class="active"' : '' !!} href="{{ lurl('account/pending-approval') }}">
							<i class="icon-hourglass"></i> {{ t('Pending approval') }}&nbsp;
							<span class="badge">{{ isset($countPendingPosts) ? $countPendingPosts : 0 }}</span>
							</a>
						</li>
						<li>
							<!--<a{!! ($pagePath=='archived') ? ' class="active"' : '' !!} href="{{ lurl('account/archived') }}">-->
							<a href="http://localhost/laraclassified32/packages/larapen/admin/src/resources/views/inc/saldo_investor_peruser.php">
							<i class="icon-folder-close"></i> {{ t('Archived ads') }}&nbsp;
							<span class="badge">{{ isset($countArchivedPosts) ? $countArchivedPosts : 0 }}</span>
							</a>
						</li>
						<li>
							<a{!! ($pagePath=='messages') ? ' class="active"' : '' !!} href="{{ lurl('account/messages') }}">
							<i class="icon-mail-1"></i> {{ t('Messages') }}&nbsp;
							<span class="badge">{{ isset($countMessages) ? $countMessages : 0 }}</span>
							</a>
						</li>
						<li hidden>
							<a{!! ($pagePath=='transactions') ? ' class="active"' : '' !!} href="{{ lurl('account/transactions') }}">
							<i class="icon-money"></i> {{ t('Transactions') }}&nbsp;
							<span class="badge">{{ isset($countTransactions) ? $countTransactions : 0 }}</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- /.collapse-box  -->

			<div class="collapse-box">
				<h5 class="collapse-title">
					{{ t('Terminate Account') }}&nbsp;
					<a href="#TerminateAccount" data-toggle="collapse" class="pull-right"><i class="fa fa-angle-down"></i></a>
				</h5>
				<div class="panel-collapse collapse in" id="TerminateAccount">
					<ul class="acc-list">
						<li>
							<a {!! ($pagePath=='close') ? 'class="active"' : '' !!} href="{{ lurl('account/close') }}">
								<i class="icon-cancel-circled "></i> {{ t('Close account') }}
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- /.collapse-box  -->

		</div>
	</div>
	<!-- /.inner-box  -->
</aside>