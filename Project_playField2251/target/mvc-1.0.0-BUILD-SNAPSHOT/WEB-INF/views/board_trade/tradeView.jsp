<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>




<section class="section section-image section-header bg-primary pb-9 pb-lg-10 text-white overlay-primary"  data-background="${path}/resources/img/헤더사진_3.jpg"></section>
<div class="section section-sm bg-white pt-6">
    <article class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-lg-8">
                <h1>첫 번째 물건</h1>
                <img src="http://thumbnail.10x10.co.kr/webimage/image/basic600/396/B003965484.jpg?cmd=thumb&w=400&h=400&fit=true&ws=false" alt="">
                <p>사진 - 슬라이드 구성</p>
                <p>I added theming with a mix of  and CSS. In this post I’ll go step by step into the details of how I did it and what I learned.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias expedita earum modi sint voluptatum nemo assumenda explicabo laboriosam unde excepturi, necessitatibus consequatur quo! Quis impedit excepturi ut, alias omnis harum?</p>
            </div>
        </div>
        <div class="row justify-content-sm-center align-items-center py-3 mt-3">
            <div class="col-12 col-lg-8">
                <div class="row">
                    <div class="col-9 col-md-6">
                        <h6 class="font-weight-bolder d-inline mb-0 mr-3">Share:</h6>
                        <button class="btn btn-sm mr-2 btn-icon-only btn-pill btn-twitter d-inline"  aria-label="twitter social link"><span class="fab fa-twitter"></span></button>
                        <button class="btn btn-sm mr-2 btn-icon-only btn-pill btn-facebook d-inline"  aria-label="facebook social link"><span class="fab fa-facebook-f"></span></button>
                        <button class="btn btn-sm btn-icon-only btn-pill btn-reddit d-inline"  aria-label="reddit social link"><span class="fab fa-reddit-alien"></span></button>
                    </div>
                    <div class="col-3 col-md-6 text-right">
                        <span class="far fa-bookmark text-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Bookmark story"></span>
                    </div>
                </div>
            </div>
        </div>
    </article>
</div>
<div class="section section-md bg-white text-black pt-0 line-bottom-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-lg-8">
                <div>
                    <label class="h5 mb-4" for="exampleFormControlTextarea1"><span class="badge badge-md badge-primary text-uppercase mr-2">00</span>댓글</label>
                    <textarea class="form-control border border-light-gray" id="exampleFormControlTextarea1" placeholder="내용을 입력해 주세요." rows="6" data-bind-characters-target="#charactersRemaining" maxlength="1000"></textarea>
                    <div class="d-flex justify-content-between mt-3">
                        <small class="font-weight-light text-dark"><span id="charactersRemaining">
                                <!-- this will be filled with 200 from the textarea's maxlength --></span>자 제한</small>
                        <button class="btn btn-primary animate-up-2" >등록</button>
                    </div>
                    <div class="mt-5">
                        <div class="card bg-soft border-light rounded p-4 mb-4">
                            <div class="d-flex justify-content-between mb-4">
                                <span class="font-small">
                                    <a href="#">
                                        <img class="avatar-sm img-fluid rounded-circle mr-2"
                                            src="assets/img/team/profile-picture-1.jpg" alt="avatar">
                                        <span class="font-weight-bold">최</span>
                                </a>
                                <span class="ml-2">2 min ago</span>
                                </span>
                                <div>
                                    <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                        <span class="far fa-flag"></span>
                                    </button>
                                </div>
                            </div>
                            <p class="m-0">I really like that the Pixel uses a lot of Bootstrap 4's classes to position elements across the website. I also like the fact that we can get a version of the code without Sass if needed. <br><br>                                                            When is the next product coming? :)</p>
                            <div class="mt-4 mb-3 d-flex justify-content-between">
                                <div>
                                    <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                    <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                    <span class="font-small font-weight-light">4 likes</span>
                                </div>
                                <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer1" aria-expanded="false" aria-controls="replyContainer1"><span
                                        class="fas fa-reply mr-2"></span> Reply</a>
                            </div>
                            <div class="collapse" id="replyContainer1">
                                <label class="mb-4" for="exampleFormControlTextarea10">Reply</label>
                                <textarea class="form-control border" id="exampleFormControlTextarea10" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply" maxlength="1000"></textarea>
                                <div class="d-flex justify-content-between mt-3">
                                    <small class="font-weight-light"><span id="charactersRemainingReply">
                                            <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                        characters remaining</small>
                                    <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                </div>
                            </div>
                        </div>
                        <div class="card bg-soft border-light rounded p-4 ml-5 mb-4">
                            <div class="d-flex justify-content-between mb-4">
                                <span class="font-small">
                                    <a href="#">
                                        <img class="avatar-sm img-fluid rounded-circle mr-2"
                                            src="assets/img/team/profile-picture-2.jpg" alt="Bonnie avatar">
                                        <span class="font-weight-bold">홍</span>
                                </a>
                                <span class="ml-2">2 min ago</span>
                                </span>
                                <div>
                                    <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                        <span class="far fa-flag"></span>
                                    </button>
                                </div>
                            </div>
                            <p class="m-0">Hi John Doe,<br><br>We're happy to hear you like our product. A new one will come soon enough!</p>
                            <div class="mt-4 mb-3 d-flex justify-content-between">
                                <div>
                                    <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                    <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                    <span class="font-small font-weight-light">2 likes</span>
                                </div>
                                <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer2" aria-expanded="false" aria-controls="replyContainer2"><span
                                        class="fas fa-reply mr-2"></span> Reply</a>
                            </div>
                            <div class="collapse" id="replyContainer2">
                                <label class="mb-4" for="exampleFormControlTextarea11">Reply</label>
                                <textarea class="form-control border" id="exampleFormControlTextarea11" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply2" maxlength="1000"></textarea>
                                <div class="d-flex justify-content-between mt-3">
                                    <small class="font-weight-light"><span id="charactersRemainingReply2">
                                            <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                        characters remaining</small>
                                    <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                </div>
                            </div>
                        </div>
                        <div class="card bg-soft border-light rounded p-4 mb-4">
                            <div class="d-flex justify-content-between mb-4">
                                <span class="font-small">
                                    <a href="#">
                                        <img class="avatar-sm img-fluid rounded-circle mr-2" src="assets/img/team/profile-picture-3.jpg" alt="James avatar">
                                        <span class="font-weight-bold">곽</span>
                                    </a>
                                    <span class="ml-2">2 min ago</span>
                                </span>
                                <div>
                                    <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                        <span class="far fa-flag"></span>
                                    </button>
                                </div>
                            </div>
                            <p class="m-0">Hey there! We want to say that <span class="text-tertiary">you're
                                    awesome</span> and we think you'll build great websites! Why not use Pixel to make things easier?</p>
                            <div class="mt-4 mb-3 d-flex justify-content-between">
                                <div>
                                    <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                    <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                    <span class="font-small font-weight-light">4 likes</span>
                                </div>
                                <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer3" aria-expanded="false" aria-controls="replyContainer3"><span
                                        class="fas fa-reply mr-2"></span> Reply</a>
                            </div>
                            <div class="collapse" id="replyContainer3">
                                <label class="mb-4" for="exampleFormControlTextarea12">Reply</label>
                                <textarea class="form-control border" id="exampleFormControlTextarea12" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply3" maxlength="1000"></textarea>
                                <div class="d-flex justify-content-between mt-3">
                                    <small class="font-weight-light"><span id="charactersRemainingReply3">
                                            <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                        characters remaining</small>
                                    <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                </div>
                            </div>
                        </div>
                        <div id="extraContent" style="display: none;">
                            <div class="card bg-soft border-light p-4 mb-4">
                                <div class="d-flex justify-content-between mb-4">
                                    <span class="font-small">
                                        <a href="#">
                                            <img class="avatar-sm img-fluid rounded-circle mr-2"
                                                src="assets/img/team/profile-picture-2.jpg" alt="Neil avatar">
                                            <span class="font-weight-bold">Neil Sims</span>
                                    </a>
                                    <span class="ml-2">2 min ago</span>
                                    </span>
                                    <div>
                                        <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                            <span class="far fa-flag"></span>
                                        </button>
                                    </div>
                                </div>
                                <p class="m-0">I really like that the Pixel uses a lot of Bootstrap 4's classes to position elements across the website. I also like the fact that we can get a version of the code without Sass if needed. <br><br>                                                                When is the next product coming? :)</p>
                                <div class="mt-4 mb-3 d-flex justify-content-between">
                                    <div>
                                        <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                        <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                        <span class="font-small font-weight-light">4 likes</span>
                                    </div>
                                    <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer4" aria-expanded="false" aria-controls="replyContainer4"><span
                                            class="fas fa-reply mr-2"></span> Reply</a>
                                </div>
                                <div class="collapse" id="replyContainer4">
                                    <label class="mb-4" for="exampleFormControlTextarea13">Reply</label>
                                    <textarea class="form-control border" id="exampleFormControlTextarea13" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply4" maxlength="1000"></textarea>
                                    <div class="d-flex justify-content-between mt-3">
                                        <small class="font-weight-light"><span id="charactersRemainingReply4">
                                                <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                            characters remaining</small>
                                        <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                    </div>
                                </div>
                            </div>
                            <div class="card bg-soft rounded border-light p-4 ml-5 mb-4">
                                <div class="d-flex justify-content-between mb-4">
                                    <span class="font-small">
                                        <a href="#">
                                            <img class="avatar-sm img-fluid rounded-circle mr-2"
                                                src="assets/img/team/profile-picture-5.jpg" alt="Jose avatar">
                                            <span class="font-weight-bold">Jose Leos</span>
                                    </a>
                                    <span class="ml-2">2 min ago</span>
                                    </span>
                                    <div>
                                        <button class="btn btn-link text-danger" aria-label="report button" data-toggle="tooltip" data-placement="top" title="Report comment" data-original-title="Report comment">
                                            <span class="far fa-flag"></span>
                                        </button>
                                    </div>
                                </div>
                                <p class="m-0">Hi John Doe,<br><br>We're happy to hear you like our product. A new one will come soon enough!</p>
                                <div class="mt-4 mb-3 d-flex justify-content-between">
                                    <div>
                                        <span class="far fa-thumbs-up text-action text-success mr-3" data-toggle="tooltip" data-placement="top" title="Like comment" data-original-title="Like comment"></span>
                                        <span class="far fa-thumbs-down text-action text-danger mr-3" data-toggle="tooltip" data-placement="top" title="Dislike comment" data-original-title="Dislike comment"></span>
                                        <span class="font-small font-weight-light">2 likes</span>
                                    </div>
                                    <a class="text-action font-weight-light font-small" data-toggle="collapse" role="button" href="#replyContainer5" aria-expanded="false" aria-controls="replyContainer5"><span
                                            class="fas fa-reply mr-2"></span> Reply</a>
                                </div>
                                <div class="collapse" id="replyContainer5">
                                    <label class="mb-4" for="exampleFormControlTextarea14">Reply</label>
                                    <textarea class="form-control border" id="exampleFormControlTextarea14" placeholder="Reply to John Doe" rows="6" data-bind-characters-target="#charactersRemainingReply5" maxlength="1000"></textarea>
                                    <div class="d-flex justify-content-between mt-3">
                                        <small class="font-weight-light"><span id="charactersRemainingReply5">
                                                <!-- this will be filled with 200 from the textarea's maxlength --></span>
                                            characters remaining</small>
                                        <button class="btn btn-primary btn-sm animate-up-2" >Send</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mt-5 text-center">
                            <button id="loadOnClick" class="btn btn-primary btn-loading-overlay mr-2 mb-2" >
                                <span class="spinner">
                                    <span class="spinner-border spinner-border-sm" role="status"
                                        aria-hidden="true"></span>
                                </span>
                                <span class="ml-1 btn-inner-text">더보기</span>
                            </button>
                            <p id="allLoadedText" style="display: none;">That's all, Sparky!
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>