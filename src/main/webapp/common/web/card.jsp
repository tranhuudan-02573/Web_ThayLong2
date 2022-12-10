<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 12/10/2022
  Time: 6:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class=" d-block overflow-hidden   ">
  <style>
    p {
      margin: 0;

    }

    .quote::before {
      content: '●';
      margin-right: 2px;
      left: 0;
      top: 0;
      color: #333;
      font-size: 10px;
    }

  </style>
  <div class="d-flex flex-column align-items-strech w-100  ">

    <div class=" align-self-start">
      <span class="badge badge-danger mr-1">Trả góp 0%</span>
    </div>

    <a href="${pageContext.request.contextPath}/detail?id=${param.id}" class="text-dark align-self-stretch" style="height: 375px;">
      <div class=" cart-content  h-100">
        <div class="my-2 d-block overflow-hidden item hvr-float ">
          <img class="object-cover mw-100 " src="${param.thumbnail}" alt="">
        </div>
        <h3 class=" product-title overflow-hidden   mb-1 " style="display: -webkit-box;
-webkit-box-orient: vertical;
-webkit-line-clamp: 2;font-size: 14px;">
          ${param.name}
        </h3>

        <div class="mb-1">
																	<span class="mr-2 badge badge-light">6.7 incheslor
																	</span>

          <span class="mr-2 badge badge-light">${param.capname}</span>
        </div>

        <div class="mb-1">
          <i class=" d-inline-block text-decoration-line-through price-old" style="text-decoration: line-through">
            ${param.price}đ</i>
          <span class="badge badge-default peach-gradient">-25%</span>
          <b class="d-inline-block price-new "></b>
        </div>
        <strong class="fw-bold d-block mb-1 text-danger">38.990.000đ</strong>

        <div class=" mb-1 d-flex flex-end">
          <p class=" text-warning " style="font-size: 12px;">
            <i class=" fa-solid fa-star "></i>
            <i class=" fa-solid fa-star "></i>
            <i class=" fa-solid fa-star "></i>
            <i class="fa-solid fa-star-half-stroke "></i>
            <i class="fa-regular fa-star "></i>
          </p>
          <p class="ms-1 fw-light d-inline-block align-middle " style="font-size: 12px;">54</p>
        </div>

      </div>
    </a>
    <div class="mt-2  d-flex justify-content-between ">
      <a href="" class=" d-block  align-middle" style="font-size:14px ;">
        <i class="fa-regular fa-square-plus fa-sm"></i> so sánh
      </a>

      <a href="" class="d-block  align-middle" style="font-size:14px ;">
        <i class="fa-regular fa-heart fa-sm"></i> yêu thích
      </a>
    </div>
  </div>
</div>