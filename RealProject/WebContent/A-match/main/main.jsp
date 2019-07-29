<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>

 <div class="hero-wrap js-fullheight" style="background-image: url('<%=request.getContextPath()%>/images/bg.jpg'); opacity:0.9;" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-right justify-content-start" data-scrollax-parent="true">
          <div class="col-md-6 mt-5 pt-5 ftco-animate mt-5" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"></h1>
				
          </div>
        </div>
      </div>
    </div>
 <section class="ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container-fluid px-0">
	    	<div class="row">
					<div class="col-md-12">
						<div class="game-wrap-1 ftco-animate">
							<div class="row p-2 align-items-center">
								<div class="col-md-6 pb-4 pb-lg-0 col-lg-3">
									<div class="text text-vs d-flex">
										<span class="vs"></span> <!-- 연결고리 -->
										<div class="team-logo text-center">
											<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/team-0.jpg);"></div>
											<h3><span>용산 아이파크몰</span></h3>
										</div>
										<div class="team-logo text-center">
											<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/team-2.jpeg);"></div>
											<h3><span>수원 아이파크몰</span></h3>
										</div>
									</div>
								</div>
								<div class="col-md-6 pb-4 pb-lg-0 col-lg-3">
									<div class="text">
										<div class="img"></div>
										<h3 class="league">Today's futsal Games</h3>
										<span>Matches</span>
									</div>
								</div>
								<div class="col-md-6 pb-4 pb-lg-0 col-lg-4">
									<div class="text">
										<div id="timer" class="d-flex mb-0">
										  <div class="time" id="days"></div>
										  <div class="time pl-3" id="hours"></div>
										  <div class="time pl-3" id="minutes"></div>
										  <div class="time pl-3" id="seconds"></div>
										</div>
									</div>
								</div>
								<div class="col-md-6 pb-4 pb-lg-0 col-lg-2">
									<div class="text">
										<p class="mb-0"><a href="#" class="btn btn-primary py-3">지역별 참여 (풋살)</a></p>
									</div>
								</div>
							</div>
		        </div>
					</div>
	    	</div>
	    </div>
    </section>
    <section class="ftco-section ftco-no-pb">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-10">
	          <div class="heading-section text-center ftco-animate">
	          	<span class="subheading">Game Report</span>
	            <h2 class="mb-4">Latest Game Result</h2>
	          </div>
	          <div class="scoreboard slash">
	          	<div class="divider ftco-animate text-center mb-4"><span>Mon. June 3, 2019; Soccer Team Match</span></div>
	          	<div class="sport-team-wrap ftco-animate">
	          		<span class="vs">vs</span>
		          	<div class="d-sm-flex mb-4">
			          	<div class="sport-team d-flex align-items-center">
		          			<div class="img logo" style="background-image: url(<%=request.getContextPath()%>/images/team-3.jpeg);"></div>
										<div class="text-center px-1 px-md-3 desc">
											<h3 class="score win"><span>12</span></h3>
											<h4 class="team-name">Phoenix</h4>
										</div>
			          	</div>
			          	<div class="sport-team d-flex align-items-center">
		          			<div class="img logo order-sm-last" style="background-image: url(<%=request.getContextPath()%>/images/team-04.jpg);"></div>
										<div class="text-center px-1 px-md-3 desc">
											<h3 class="score lost"><span>8</span></h3>
											<h4 class="team-name">Mighty Falcons</h4>
										</div>
			          	</div>
		          	</div>
	          	</div>
	          	<div class="text-center ftco-animate">
		          	<p class="mb-0"><a href="#" class="btn btn-black">More Details</a></p>
		          </div>
	          </div>
					</div>
				</div>
			</div>
		</section>
		<section class="ftco-section ftco-no-pt ftco-highlights">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-10">
						<div class="img video-wrap ftco-animate d-flex align-items-center justify-content-center py-5" style="background-image: url(<%=request.getContextPath()%>/images/highlight.jpg); width: 100%;">
							<p class="text-center mb-0 py-5">
								<a href="https://sports.news.naver.com/wfootball/vod/index.nhn?id=559769&category=copaamerica&gameId=2019070713318079569&date=20190707&listType=game" class="icon-video-2 popup-vimeo d-flex justify-content-center align-items-center mr-3">
	    						<span class="ion-ios-play"></span>
	    					</a>
	    					<small style="color: rgba(255,255,255,1); font-size: 16px;">Watch Highlights</small>
    					</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="ftco-section ftco-game-schedule ftco-no-pt">
			<div class="container">
				<div class="row">
					<div class="col-md-12 heading-section text-center ftco-animate mb-4">
          	<span class="subheading">Game Schedule</span>
          	<h2 class="mb-4">Game Schedule</h2>
					</div>
				</div>
				<div class="row ftco-animate">
					<div class="col-md-12 carousel-game-schedule owl-carousel">
						<div class="item">
							<div class="game-sched text-vs text-center">
								<div class="divider"><p><span>Home @ Arena</span> - <span>June 7, 2018</span></p></div>
								<div class="d-flex sched-wrap">
									<span class="vs">vs</span>
									<div class="team-logo text-center">
										<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/team-05.jpg);"></div>
										<h3><span>Phoenix</span></h3>
									</div>
									<div class="team-logo text-center">
										<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/team-6.jpeg);"></div>
										<h3><span>Jacksonville</span></h3>
									</div>
								</div>
							</div>
	          </div>
	          <div class="item">
							<div class="game-sched text-vs text-center">
								<div class="divider"><p><span>Home @ Arena</span> - <span>June 7, 2018</span></p></div>
								<div class="d-flex sched-wrap">
									<span class="vs">vs</span>
									<div class="team-logo text-center">
										<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/team-07.jpg);"></div>
										<h3><span>Phoenix</span></h3>
									</div>
									<div class="team-logo text-center">
										<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/team-08.png);"></div>
										<h3><span>Jacksonville</span></h3>
									</div>
								</div>
							</div>
	          </div>
	          <div class="item">
							<div class="game-sched text-vs text-center">
								<div class="divider"><p><span>Home @ Arena</span> - <span>June 7, 2018</span></p></div>
								<div class="d-flex sched-wrap">
									<span class="vs"></span><!-- 무시 -->
									<div class="team-logo text-center">
										<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/images.png);"></div>
										<h3><span>Phoenix</span></h3>
									</div>
									<div class="team-logo text-center">
										<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/team-6.jpg);"></div>
										<h3><span>Jacksonville</span></h3>
									</div>
								</div>
							</div>
	          </div>
	          <div class="item">
							<div class="game-sched text-vs text-center">
								<div class="divider"><p><span>Home @ Arena</span> - <span>June 7, 2018</span></p></div>
								<div class="d-flex sched-wrap">
									<span class="vs">vs</span>
									<div class="team-logo text-center">
										<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/team-1.jpg);"></div>
										<h3><span>Phoenix</span></h3>
									</div>
									<div class="team-logo text-center">
										<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/team-2.jpg);"></div>
										<h3><span>Jacksonville</span></h3>
									</div>
								</div>
							</div>
	          </div>
	          <div class="item">
							<div class="game-sched text-vs text-center">
								<div class="divider"><p><span>Home @ Arena</span> - <span>June 7, 2018</span></p></div>
								<div class="d-flex sched-wrap">
									<span class="vs">vs</span>
									<div class="team-logo text-center">
										<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/team-3.jpg);"></div>
										<h3><span>Phoenix</span></h3>
									</div>
									<div class="team-logo text-center">
										<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/team-4.jpg);"></div>
										<h3><span>Jacksonville</span></h3>
									</div>
								</div>
							</div>
	          </div>
	          <div class="item">
							<div class="game-sched text-vs text-center">
								<div class="divider"><p><span>Home @ Arena</span> - <span>June 7, 2018</span></p></div>
								<div class="d-flex sched-wrap">
									<span class="vs">vs</span>
									<div class="team-logo text-center">
										<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/team-5.jpg);"></div>
										<h3><span>Phoenix</span></h3>
									</div>
									<div class="team-logo text-center">
										<div class="img" style="background-image: url(<%=request.getContextPath()%>/images/team-6.jpg);"></div>
										<h3><span>Jacksonville</span></h3>
									</div>
								</div>
							</div>
	          </div>
					</div>
				</div>
			</div>
		</section>
		