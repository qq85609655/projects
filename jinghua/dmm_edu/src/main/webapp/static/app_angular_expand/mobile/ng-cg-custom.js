var jxpgmobile=angular.module("jxpgmobile",[]);jxpgmobile.factory("highChartService",function(){Highcharts.setOptions({chart:{style:{fontFamily:"微软雅黑"}}});return{renderCommonChart:function(n){n.isSort=n.isSort||false;var o={},p={};var h=[],f=[];for(var g in n.data){var l=n.data[g];if(!o[l.name]){f.push({name:l.name,data:[]});o[l.name]=true}if(!p[l.field]){h.push(l.field);p[l.field]=true}}if(n.isSort){h.sort(function(j,i){return j>i?1:-1})}var q,c,r;for(var e in f){q=f[e];for(var d=0;d<h.length;d++){c=h[d];for(var b=0;b<n.data.length;b++){r=n.data[b];if(r.name==q.name&&r.field==c){q.data.push(parseFloat(r.value))}}if(q.data.length<d){q.data.push(0)}}}type=n.type||"column";var a={title:{text:n.title,x:-20},chart:{type:type},xAxis:[{categories:h,crosshair:true}],yAxis:{title:{text:n.yAxis},plotLines:[{value:0,width:1,color:"#808080"}]},tooltip:{valueSuffix:" "+(n.dw||""),shared:true},credits:{enabled:false},series:f};return a},renderPieChart:function(b){b.showLable=(b.showLable==null)?true:b.showLable;var c=b.data;var a={chart:{plotBackgroundColor:null,plotBorderWidth:null,plotShadow:false},title:{text:b.title,},tooltip:{pointFormat:" 数量:<b>{point.y}</b><br/> {series.name}:<b>{point.percentage:.1f}%</b>"},credits:{enabled:false},plotOptions:{pie:{allowPointSelect:true,cursor:"pointer",dataLabels:{enabled:b.showLable}}},series:[{type:"pie",name:"占比",data:c}]};return a}}});jxpgmobile.directive("cgChart",["highChartService",function(a){return{restrict:"AE",scope:{config:"="},link:function(d,c,b){d.renderChart=function(){if(d.config){if(d.config.type){switch(d.config.type){case"column":case"line":case"area":case"spline":case"areaspline":c.highcharts(a.renderCommonChart(d.config));break;case"pie":c.highcharts(a.renderPieChart(d.config));break;default:break}}else{d.config=angular.extend(d.config,{credits:{enabled:false}});c.highcharts(d.config)}}};d.$watch("config",function(){d.renderChart()})}}}]);jxpgmobile.directive("cgStarRating",[function(){return{restrict:"AE",replace:true,template:'<input type="number" class="rating" />',scope:{cgMax:"=",cgValue:"="},link:function(f,d,e){f.cgValue=f.cgValue||0;f.cgMax=f.cgMax||5;d.val(f.cgValue);var a=e.isreadonly||"false";var c=e.size||"xs";var b=a=="true"?true:false;var g={min:0,max:f.cgMax,step:1,size:c,stars:f.cgMax,showClear:false,showCaption:false,readonly:b};$(d).rating(g);f.$watch("cgValue",function(i,h){$(d).rating("update",i)},true);f.$watch("cgMax",function(i,h){$(d).rating("refresh",{max:i,stars:i})},true);$(d).on("rating.change",function(){f.$apply(f.cgValue=d.val())})}}}]);jxpgmobile.directive("cgStarRatingFull",[function(){return{restrict:"AE",replace:true,template:'<input type="number" class="rating" />',scope:{cgAttr:"=",cgValue:"="},link:function(c,a,b){c.cgValue=c.cgValue||0;a.val(c.cgValue);var d={min:0,max:5,step:1,size:"xs",stars:5,showClear:false,showCaption:false,readonly:false};c.cgAttr=c.cgAttr||d;$(a).rating(c.cgAttr);c.$watch("cgValue",function(f,e){$(a).rating("update",f)},true);c.$watch("cgAttr",function(f,e){$(a).rating("refresh",f)},true);$(a).on("rating.change",function(){c.$apply(c.cgValue=a.val())})}}}]);