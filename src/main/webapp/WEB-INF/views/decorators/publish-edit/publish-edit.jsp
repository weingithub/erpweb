<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"  %>

<page:applyDecorator name="main-layout">
<html>
<body>

	<script type="text/javascript" src="<c:url value="/resources/holderjs/js/holder.js" />"></script>
	<link href="<c:url value="/resources/bootstrap-select/css/bootstrap-select.min.css" />"
	rel="stylesheet"  type="text/css" />
	<script type="text/javascript" src="<c:url value="/resources/bootstrap-select/js/bootstrap-select.min.js" />"></script>

	<style type="text/css">
	.scrollable {
		height: 300px;
		overflow: auto;
		margin-bottom: 10px;
	}

	#choose-div{
		margin-bottom: 10px;
	}	

	#choose-text{
		color: #7A2D01;
	}

	#edit-panel{
		/*border: hidden;*/
	}

	#edit-panel .panel-body .row{
		margin-bottom: 10px;
	}

	#edit-panel .panel-body .row >div >label{
		font-weight: 300;
	}

	#edit-panel .panel-body .row .col-sm-2{
		text-align: right;
	}

	#edit-panel .panel-body .row .col-sm-10 >label{
		margin-right: 30px;
	}

	#edit-panel .panel-body .row .col-sm-10 >label >input{
		margin-right: 5px;
	}

	.base-attr{
		border-style: 1px solid #CCC;
		background-color: #F6F6F6;
	}

	.base-attr .attr-name{
		width: 150px;
		padding: 5px 15px 0px 0px;
		border-style: hidden;
		text-align: right;
	}

	.base-attr .attr-value{
		padding: 5px 15px 0px 0px;
		border-style: hidden;
	}

	.base-attr .attr-value >label{
		font-weight: 300;
		padding-right: 15px;
	}

	.custom-attr{
		padding-left: 150px;
	}

	.picture{
		border: 1px solid #CCC;
		padding: 10px;
	}

	.picture >div >a{
		margin-left: 20px;
	}

	.picture >div .thumbnail{
		margin-bottom: 0px;
	}

	.picture >div >label{
		margin-left: 15px;
		margin-bottom: 0px;
	}

	</style>

	<div id="choose-div" class="alert alert-info" role="alert">
		您当前选择的类目：<span id="choose-text">${choosetext}</span>
	</div>

	<div id="edit-panel" class="panel panel-primary">
		<div class="panel-heading">
			<h2 class="panel-title"><strong>1. 产品基本信息</strong></h2>
		</div>
		<div class="panel-body">

			<div id="base-attr-div">
				<decorator:body />
			</div>

			<div class="row">
				<div class="col-sm-2">
					<label>产品标题:</label>
				</div>
				<div class="col-sm-10">
					<input type="text" maxlength="128" size="70">
				</div>
			</div>
			<div class="row">
				<div class="col-sm-2">
					<label>产品关键词:</label>
				</div>
				<div class="col-sm-10">
					<input type="text">
					<label><a href="#more-key-words" data-toggle="collapse" role="button">添加更多关键字</a></label>
				</div>
			</div>
			<div id="more-key-words" class="row collapse">
				<div class="col-sm-2">
					<label>更多关键词:</label>
				</div>
				<div class="col-sm-10">
					<span>
						<input type="text">
					</span>
					<span>
						<input type="text">
					</span>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-2">
					<label>产品图片:</label>
				</div>
				<div class="col-sm-10">
					<div class="picture">
						<div>
							<a href="#">从我的电脑选取</a>
							<a href="#">全部删除</a>
						</div>
						<hr class="dotten">
						<div>
							<label>
								<a href="#" class="thumbnail">
									<img data-src="holder.js/112x112?text=No Photo">
								</a>
							</label>
							<label>
								<a href="#" class="thumbnail">
									<img data-src="holder.js/112x112?text=No Photo">
								</a>
							</label>
							<label>
								<a href="#" class="thumbnail">
									<img data-src="holder.js/112x112?text=No Photo">
								</a>
							</label>
							<label>
								<a href="#" class="thumbnail">
									<img data-src="holder.js/112x112?text=No Photo">
								</a>
							</label>
							<label>
								<a href="#" class="thumbnail">
									<img data-src="holder.js/112x112?text=No Photo">
								</a>
							</label>
							<label>
								<a href="#" class="thumbnail">
									<img data-src="holder.js/112x112?text=No Photo">
								</a>
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-2">
					<label>最小计量单位:</label>
				</div>
				<div class="col-sm-10">
					<select id="measure-unit">
						<option>件/个 (piece/pieces)</option>
						<option>包 (pack/packs)</option>
						<option>双 (pair)</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-2">
					<label>销售方式:</label>
				</div>
				<div class="col-sm-10">
					<label>
						<input type="radio" name="sale-type">
						<span id="sale-type-unit">按件/个 (piece/pieces)出售</span>
					</label>
					<label>
						<input type="radio" name="sale-type" id="sale-type-package">
						<span>打包出售</span>
					</label>
					<label id="num-per-package" class="hidden">
						<span>每包</span>
						<input type="text" size="10">
						<span id="cn-sale-type-unit">件/个</span>
					</label>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-2">
					<label>套餐:</label>
				</div>
				<div class="col-sm-10" id="sale-style-div">
				</div>
			</div>
			<div class="row hidden">
				<div class="col-sm-4 col-sm-offset-2">
					<table id="sale-style-table" class="table table-condensed table-bordered">
						<thead>
							<tr>
								<td>套餐</td>
								<td>自定义名称</td>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-2">
					<label>颜色:</label>
				</div>
				<div class="col-sm-10" id="color-div">
				</div>
			</div>
			<div class="row hidden">
				<div class="col-sm-4 col-sm-offset-2">
					<table id="color-table" class="table table-condensed table-bordered">
						<thead>
							<tr>
								<td>颜色</td>
								<td>自定义名称</td>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row hidden">
				<div class="col-sm-8 col-sm-offset-2">
					<table id="inventory-table" class="table table-condensed table-bordered">
						<thead>
							<tr>
								<td class="hidden">套餐</td>
								<td class="hidden">颜色</td>
								<td>库存</td>
								<td>商品编码</td>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row" id="inventory-unit-div">
				<div class="col-sm-2">
					<label>库存:</label>
				</div>
				<div class="col-sm-10">
					<label>
						<input type="text" size="5">
						<span id="inventory-unit"> 件</span>
					</label>
				</div>
			</div>
			<div class="row" id="code-div">
				<div class="col-sm-2">
					<label>商品编码:</label>
				</div>
				<div class="col-sm-10">
					<label>
						<input type="text" size="20">
					</label>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">

	$(function() {

		function init_single_div_table(id, names){
			var divid = id + '-div';
			var tblid = id + '-table';

			$.each(names, function(i, name){
				$('#' + divid).append("<label><input type='checkbox' name='"+ id +"' data-target='#" + tblid +" >tbody >tr:nth-child("+ (i+1) +")' data-toggle='collapse'><span>"+ name +"</span></label>");
				$('#' + tblid).find('tbody').append("<tr class='collapse'><td>"+ name +"</td><td><input type='text' size='15'></td></tr>");
			});
		};

		init_single_div_table("sale-style", ["套餐1", "套餐2", "套餐3", "套餐4", "套餐5"]);

		init_single_div_table("color", ["白色", "黑色", "绿色", "红色", "灰色", "蓝色", "黄色", "粉色", "紫色", "银色", "金色", "多色", "褐色", "橙色", "卡其色", "透明"]);

		$('#measure-unit').on('change', function(){
			var opt = $(this).val();
			$('#sale-type-unit').text("按" + opt + "出售");
			$('#cn-sale-type-unit').text(opt.substring(0, opt.indexOf(' ')));

			$('input:radio[name="sale-type"]').trigger("change");
		});

		$('input:radio[name="sale-type"]').on('change', function(){
			if($('#sale-type-package').is(':checked')){
				$('#num-per-package').removeClass("hidden");
				$('#inventory-unit').text(" 包");
			}
			else{
				$('#num-per-package').addClass("hidden");
				$('#inventory-unit').text(" " + $('#cn-sale-type-unit').text());
			}
		});

		$('input:checkbox[name="sale-style"]').on('change', function(){
			if($('input:checkbox[name="sale-style"]:checked').length > 0){
				$('#sale-style-table').parent().parent().removeClass("hidden");
				$('#inventory-table').parent().parent().removeClass("hidden");
				$('#inventory-table >thead >tr >td:nth-child(1)').removeClass("hidden");
				$('#inventory-table >tbody >tr >td:nth-child(1)').removeClass("hidden");

				init_inventory_table();

				$('#inventory-unit-div').addClass("hidden");
				$('#code-div').addClass("hidden");
			}
			else{
				$('#sale-style-table').parent().parent().addClass("hidden");
				$('#inventory-table >thead >tr >td:nth-child(1)').addClass("hidden");
				$('#inventory-table >tbody >tr >td:nth-child(1)').addClass("hidden");
				if($('input:checkbox[name="color"]:checked').length == 0){
					$('#inventory-table').parent().parent().addClass("hidden");

					$('#inventory-unit-div').removeClass("hidden");
					$('#code-div').removeClass("hidden");
				}
			}
		});

		$('input:checkbox[name="color"]').on('change', function(){
			if($('input:checkbox[name="color"]:checked').length > 0){
				$('#color-table').parent().parent().removeClass("hidden");
				$('#inventory-table').parent().parent().removeClass("hidden");
				$('#inventory-table >thead >tr >td:nth-child(2)').removeClass("hidden");
				$('#inventory-table >tbody >tr >td:nth-child(2)').removeClass("hidden");

				init_inventory_table();

				$('#inventory-unit-div').addClass("hidden");
				$('#code-div').addClass("hidden");
			}
			else{
				$('#color-table').parent().parent().addClass("hidden");
				$('#inventory-table >thead >tr >td:nth-child(2)').addClass("hidden");
				$('#inventory-table >tbody >tr >td:nth-child(2)').addClass("hidden");
				if($('input:checkbox[name="sale-style"]:checked').length == 0){
					$('#inventory-table').parent().parent().addClass("hidden");

					$('#inventory-unit-div').removeClass("hidden");
					$('#code-div').removeClass("hidden");
				}
			}
		});

		function init_inventory_table(){
			var table_body = "";

			if($('input:checkbox[name="sale-style"]:checked').length > 0 && $('input:checkbox[name="color"]:checked').length > 0){
				$('input:checkbox[name="sale-style"]:checked').each(function(){
					var sale_style = $(this).next().text();
					$('input:checkbox[name="color"]:checked').each(function(){
						var color = $(this).next().text();
						table_body = table_body + "<tr><td>"+ sale_style +"</td><td>"+ color +"</td><td><input type='text' size='5'></td><td><input type='text' size='20'></td></tr>";
					});
				});
			}
			else if($('input:checkbox[name="sale-style"]:checked').length > 0){
				$('input:checkbox[name="sale-style"]:checked').each(function(){
					var sale_style = $(this).next().text();
					table_body = table_body + "<tr><td>"+ sale_style +"</td><td class='hidden'></td><td><input type='text' size='5'></td><td><input type='text' size='20'></td></tr>";
				});
			}
			else if($('input:checkbox[name="color"]:checked').length > 0){
				$('input:checkbox[name="color"]:checked').each(function(){
					var color = $(this).next().text();
					table_body = table_body + "<tr><td class='hidden'></td><td>"+ color +"</td><td><input type='text' size='5'></td><td><input type='text' size='20'></td></tr>";
				});
			}

			$("#inventory-table >tbody").html(table_body);
		};

	});

</script>
</body>
</html>
</page:applyDecorator>