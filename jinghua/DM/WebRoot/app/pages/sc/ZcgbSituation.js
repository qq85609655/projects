/**
 * 中层干部概况统计
 * User: yangtz
 * Date: 15-9-25
 * Time: 上午10:26
 *
 */
NS.define('Pages.sc.ZcgbSituation',{
    extend:'Template.Page',
    modelConfig: {
        serviceConfig: {
            queryYxzzjgTree: 'scService?getYxzzjgTree',// 获取导航栏数据，教学组织结构
            getXbfbByTjlb:'scZcgbService?getXbfbByTjlb',// 统计性别分布
            getMzzcByTjlb:'scZcgbService?getMzzcByTjlb',// 统计民族组成
            getCountsByTjlb:'scZcgbService?getCountsByTjlb',// 获取各学生类别人数
            getNldfbByTjlb:'scZcgbService?getNldfbByTjlb',// 年龄段
            getZzmmByTjlb:'scZcgbService?getZzmmByTjlb',// 政治面貌
            getLydByTjlb:'scZcgbService?getLydByTjlb',// 来源地
            getXwzcByTjlb:'scZcgbService?getXwzcByTjlb',
            getXlzcByTjlb:'scZcgbService?getXlzcByTjlb',
            getRyxkByTjlb:'scZcgbService?getRyxkByTjlb',
            getRyxkByTjlb2:'scZcgbService?getRyxkByTjlb2'
        }
    },
    tplRequires : [],
    cssRequires : [],
    mixins:['Pages.sc.Scgj','Pages.sc.student.JqueryMap'],
    requires:[],
    params:{},
    init: function () {
        var me = this;
        var pageTitle = new Exp.component.PageTitle({
            data:{
                pageName:'中层干部基本概况统计',
                pageHelpInfo:'从性别、年龄、民族、政治面貌、学历、类别、科类等多方面分析中层干部分布组成情况。'}
        });
        var navigation = this.navigation = new Exp.component.Navigation();
        var containerx = this.mainContainer = this.createMain();

        var container = new NS.container.Container({
            padding:20,
            autoScroll:true,
            items:[pageTitle,navigation,containerx]
        });
        this.setPageComponent(container);

        container.on('afterrender',function(){
            // 刷新导航栏
            this.callService('queryYxzzjgTree',function(data){
                this.navigation.refreshTpl(data.queryYxzzjgTree);
                var i = 0;
                for(var key in data.queryYxzzjgTree){
                    if(i==0){
                        var nodeId = data.queryYxzzjgTree[key].id;
                        this.navigation.setValue(nodeId);
                        this.params.zzjgId = nodeId;
                    }
                    i++;
                }
                this.fillCompoByData();
            },this);
            // 刷新数字组件
//            this.refreshNumberChart();

            navigation.on('click',function(){
                var data = this.getValue(),len = data.nodes.length;
                me.params.zzjgId = data.nodes[len-1].id;
                me.params.zzjgmc = data.nodes[len-1].mc;
//                me.refreshNumberChart();
                me.fillCompoByData();
            });
        },this);


    },
    /**
     * 选中与不选中
     * @param compos
     * @param bool
     */
    offon:function(compos,bool){
        if(compos.length>0){
            for(var i= 0;i<compos.length;i++){
                var data = compos[i].getData();
                data.sfxz = bool;
                compos[i].update(data);
            }
        }else{
            var data = compos.getData();
            data.sfxz = bool;
            compos.update(data);
        }
    },
    /**
     * 绑定事件。
     * @param component1
     * @param component2
     * @param component3
     */
    bindEvent4Compo:function(component1,component2,component3){
        var me = this;
        component1.on('click',function(){
            me.offon(this,true);
            me.offon([component2,component3],false);
            me.params.xslb = this.getData().dm;
            me.params.lbmc = this.getData().title;
            me.fillCompoByData();
        });
        component2.on('click',function(){
            me.offon(this,true);
            me.offon([component1,component3],false);
            me.params.xslb = this.getData().dm;
            me.params.lbmc = this.getData().title;
            me.fillCompoByData();
        });
        component3.on('click',function(){
            me.offon(this,true);
            me.offon([component2,component1],false);
            me.params.xslb = this.getData().dm;
            me.params.lbmc = this.getData().title;
            me.fillCompoByData();
        });

    },
    /**
     * 创建中部容器组件。
     */
    createMain:function(){
        var me = this;
        /*var component1 = new Exp.component.NumberWidget({
            width:150,
            data:{
                theme:'blue',
                title:'--',
                count:'--',
                axisname:'--',
                bz1:'--',
                bz2:'--'
            }
        });

        var component2 = new Exp.component.NumberWidget({
            width:150,
            data:{
                theme:'orange',
                title:'--',
                count:'--',
                axisname:'--',
                bz1:'--',
                bz2:'--'
            }
        });

        var component3 = new Exp.component.NumberWidget({
            width:150,
            data:{
                theme:'green',
                title:'--',
                count:'--',
                axisname:'--',
                bz1:'--',
                bz2:'--'
            }
        });
        this.bindEvent4Compo(component1,component2,component3);

        var dbChart = new Exp.chart.HighChart({
            height:220,
            margin:'10 0 10 0',
            columnWidth:1
        });*/

        var component4 = new Exp.component.ZonePart({
            margin:5,
            columnWidth:0.5
        });

        component4.on('afterrender',function(){
            this.update({
                title:'性别组成',
                text:'',
                boldText:'',
                chartHeight:300
            });
            var nvratio = new Exp.component.NnvRatio({
                height:300
            });
            this.insertChart(nvratio);
        });
        var component5 = new Exp.component.ZonePart({
            margin:5,
            columnWidth:0.5

        });
        component5.on('afterrender',function(){
            this.update({
                title:'年龄分布',
                text:'',
                boldText:'',
                chartHeight:300
            });
            var mzzcChart = new Exp.chart.HighChart({
                height:300
            });
            this.insertChart(mzzcChart);

        });
        var component6 = new Exp.component.ZonePart({
            margin:5,
            columnWidth:0.5

        });
        component6.on('afterrender',function(){
            this.update({
                title:'民族组成',
                text:'',
                boldText:'',
                chartHeight:300
            });

            var mzzcChart = new Exp.chart.HighChart({
                height:300
            });
            this.insertChart(mzzcChart);
        });


        var component7 = new Exp.component.ZonePart({
            margin:5,
            columnWidth:0.5

        });
        component7.on('afterrender',function(){
            this.update({
                title:'政治面貌分布',
                text:'',
                boldText:'',
                chartHeight:300
            });
            var zzmmChart = new Exp.chart.HighChart({
                height:300
            });
            this.insertChart(zzmmChart);
        });


        var component8 = new Exp.component.ZonePart({
            margin:5,
            columnWidth:0.5

        });
        component8.on('afterrender',function(){
            this.update({
                title:'学历组成',
                text:'',
                boldText:'',
                chartHeight:300
            });
            var xlChart = new Exp.chart.HighChart({
                height:300
            });
            this.insertChart(xlChart);
        });
        var containerxx = new Ext.container.Container({
            style:{
                'background':'#e4e4e4',
                'border-radius':'5px',
                'padding':'5px',
                'margin-top':'10px'
            },
            layout:{
                type:'column',
                columns:2
            },
            items:[component4,component5,component6,component7]
        });
        var component9 = new Exp.component.ZonePart({
            margin:5,
            columnWidth:0.5

        });
        component9.on('afterrender',function(){
            this.update({
                title:'来源地统计',
                text:'',
                boldText:'',
                chartHeight:300
            });
            var lyd = new Exp.chart.HighChart({
                height:300
            });
            this.insertChart(lyd);
            // 来源地
            me.callService({key:'getLydByTjlb',params:this.params},function(data){
                var compo = this.mainContainer.getComponent(1).getComponent(0);
                var datas = data.getLydByXslb;
                this.createMap(datas,compo.getChart().id,'china_zh');

            },me);

        });

        var xkfb = new Exp.component.ZonePart({
            margin:5,
            columnWidth:0.5

        });
        xkfb.on('afterrender',function(){
            this.update({
                title:'人员学科组成',
                text:'',
                boldText:'',
                chartHeight:300
            });
            var tb = new Exp.chart.HighChart({
                height:300
            });
            this.insertChart(tb);
        });
        var xwfb = new Exp.component.ZonePart({
            margin:5,
            columnWidth:0.5
        });
        xwfb.on('afterrender',function(){
            this.update({
                title:'学位组成',
                text:'',
                boldText:'',
                chartHeight:300
            });
            var xwfbChart = new Exp.chart.HighChart({
                height:300
            });
            this.insertChart(xwfbChart);
        });
        var containerxxx = new Ext.container.Container({
            style:{
                'background':'#e4e4e4',
                'border-radius':'5px',
                'padding':'5px',
                'margin-top':'10px'
            },
            layout:{
                type:'column',
                columns:2
            },
            items:[component9,xkfb,component8,xwfb]
        });
        var containerx = new Ext.container.Container({

            items:[/*{
                xtype:'container',
                layout:{
                    type:'column',
                    columns:4
                },
                items:[component1,component2,component3,dbChart]
            },*/containerxx,containerxxx]
        });

        return containerx;
    },
    fillCompoByData:function(){

        /*// 各院系人数对比统计
        this.callService('getGxyRydb',function(data){
            var cfg = {
                title:'各学院本、专、研人数对比统计',
                type:'column',
                yAxis:'人数',
                sfqx:false
            };
            var config = this.translateData(data.getGxyRydb,cfg);
            this.mainContainer.getComponent(0).getComponent(3).redraw(config,true);
        },this);*/


        // 民族组成
        this.callService({key:'getMzzcByTjlb',params:this.params},function(data){
            var compo = this.mainContainer.getComponent(0).getComponent(2);
            var cfg = {
                title:'',
                type:'column',
                yAxis:'人数',
                sfqx:false
            };
            var config = this.translateData(data.getMzzcByTjlb,cfg);
            compo.getChart().redraw(config,true);
        },this);

        // 性别比例
        this.callService({key:'getXbfbByTjlb',params:this.params},function(data){
            var compo = this.mainContainer.getComponent(0).getComponent(0);
            compo.getChart().refreshTpl(data.getXbfbByTjlb);
        });

        // 年龄分布
        this.callService({key:'getNldfbByTjlb',params:this.params},function(data){
            var compo1 = this.mainContainer.getComponent(0).getComponent(1);//ZonePart

            var cfg = {
                title:'',
                type:'column',
                yAxis:'人数',
                sfqx:false
            };
            var config = this.translateData(data.getNldfbByTjlb,cfg);
            compo1.getChart().redraw(config,true);

        });
        // 政治面貌分布
        this.callService({key:'getZzmmByTjlb',params:this.params},function(data){
            var compo = this.mainContainer.getComponent(0).getComponent(3);
            var cdata = [];
            for(var i=0;i<data.getZzmmByTjlb.length;i++){
                var obj = data.getZzmmByTjlb[i];
                cdata.push({name:obj.name,y:Number(obj.y)});
            }
            config = {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: ''
                },
                tooltip: {
                    pointFormat: '</b>{series.name}<b>{point.y}，占比<b>{point.percentage:.1f}%</b>'
                },
                credits : {// 不显示highchart标记
                    enabled : false
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: false
                        },
                        showInLegend: true
                    }
                },
                series: [{
                    type: 'pie',
                    name: '政治面貌',
                    data: cdata
                }]
            };
            compo.getChart().redraw(config,true);
        });

        // 来源地
        this.callService({key:'getLydByTjlb',params:this.params},function(data){
            var compo = this.mainContainer.getComponent(1).getComponent(0);
            var datas = data.getLydByTjlb;
            this.refreshMap(datas,compo.getChart().id);
//            this.createMap(datas,compo.getChart().id,'china_zh');

        },this);
        // 人员学科
        this.callService({key:'getRyxkByTjlb2',params:this.params},function(data){
            var compo = this.mainContainer.getComponent(1).getComponent(1);
            //compo.getChart().update(data.getRyxkByTjlb);
            var cdata = [];
            for(var i=0;i<data.getRyxkByTjlb2.length;i++){
                var obj = data.getRyxkByTjlb2[i];
                cdata.push({name:obj.name,y:Number(obj.y)});
            }
            config = {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: ''
                },
                tooltip: {
                    pointFormat: '</b>{series.name}<b>{point.y}，占比<b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: false
                        },
                        showInLegend: true
                    }
                },
                credits : {// 不显示highchart标记
                    enabled : false
                },
                series: [{
                    type: 'pie',
                    name: '学科组成',
                    data: cdata
                }]
            };
            compo.getChart().redraw(config,true);
        });
        // 学位
        this.callService({key:'getXwzcByTjlb',params:this.params},function(data){
            var compo = this.mainContainer.getComponent(1).getComponent(3);
            var cfg = {
                title:'',
                type:'column',
                yAxis:'人数',
                sfqx:false
            };
            var config = this.translateData(data.getXwzcByTjlb,cfg);
            compo.getChart().redraw(config,true);
        });
        // 学历
        this.callService({key:'getXlzcByTjlb',params:this.params},function(data){
            var compo = this.mainContainer.getComponent(1).getComponent(2);
            var cdata = [];
            for(var i=0;i<data.getXlzcByTjlb.length;i++){
                var obj = data.getXlzcByTjlb[i];
                cdata.push({name:obj.name,y:Number(obj.y)});
            }
            config = {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: ''
                },
                tooltip: {
                    pointFormat: '</b>{series.name}值<b>{point.y}，占比<b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: false
                        },
                        showInLegend: true
                    }
                },
                credits : {// 不显示highchart标记
                    enabled : false
                },
                series: [{
                    type: 'pie',
                    name: '就读学历',
                    data: cdata
                }]
            };
            compo.getChart().redraw(config,true);
        });
    },
    refreshNumberChart:function(){
        // 根据学生类别获得学生人数
        this.callService({key:'getCountsByTjlb',params:this.params},function(data){
            var arrData = data.getCountsByTjlb,colorArr=['blue','orange','green'];
            for(var i=0;i<3 && i<arrData.length;i++){
                var obj = arrData[i],sfxz=false;
                if(this.params.xslb){
                    sfxz = (obj.DM==this.params.xslb)?true:false
                }else{
                    sfxz = (i==0)?true:false
                }
                this.mainContainer.getComponent(0).getComponent(i).update({
                    theme:colorArr[i],
                    title:obj.MC||'--',
                    count:obj.count||'--',
                    dm:obj.DM,
                    axisname:'名',
                    bz1:obj.DYXL||'--',
                    bz2:obj.DYXW||'--',
                    sfxz:sfxz
                });
            }

        });
    }
});