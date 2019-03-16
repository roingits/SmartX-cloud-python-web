<template>


<div class="face-diff-body" style="min-height: calc(100vh - 50px);position: relative;overflow: hidden;background-color: currentColor;">





<div class="face-diff-left">
  <p style="
    color: whitesmoke;
    font-family: initial;
    text-align: center;
">—请选择图片—</p>
</div>



<div class="face-diff-right">
  <p style="
    color: whitesmoke;
    font-family: initial;
    text-align: center;
">—结果在这里—</p>
</div>







  <!--三维-->
  <div class="cube__container splash-viz__cube" style="width: 180px;height: 180px;padding-left: 70.5882px;">
   <span class="cube cube--dark" style="width: 120px; padding-bottom: 60px;">
    <figure class="cube__outer" id="cube__outer" style="width: 120px;height: 120px;transform: translateX(-50%) scale3d(.9, .9, .9) rotateX(0deg) rotateY(-180deg) rotateZ(0deg);">
     <section class="cube__face" style="transform: rotateX(0deg) translateZ(60px); border-width: 1px;"></section>
     <section class="cube__face" style="transform: rotateX(-90deg) translateZ(60px); border-width: 1px;"></section>
     <section class="cube__face" style="transform: rotateX(90deg) translateZ(60px); border-width: 1px"></section>
     <section class="cube__face" style="transform: rotateY(-90deg) translateZ(60px); border-width: 1px"></section>
     <section class="cube__face" style="transform: rotateY(90deg) translateZ(60px);border-width: 1px;"></section>
     <section class="cube__face" style="transform: rotateY(180deg) translateZ(60px);border-width: 1px;"></section>
    </figure>
    <figure class="cube__inner" style="width: 120px; height: 120px; transform: translateX(-50%) scale3d(0.5, 0.5, 0.5) rotateX(0deg) rotateY(-120deg) rotateZ(0deg);">
     <section class="cube__face" style="transform: rotateX(0deg) translateZ(60px);"></section>
     <section class="cube__face" style="transform: rotateX(-90deg) translateZ(60px);"></section>
     <section class="cube__face" style="transform: rotateX(90deg) translateZ(60px);"></section>
     <section class="cube__face" style="transform: rotateY(-90deg) translateZ(60px);"></section>
     <section class="cube__face" style="transform: rotateY(90deg) translateZ(60px);"></section>
     <section class="cube__face" style="transform: rotateY(180deg) translateZ(60px);"></section>
    </figure>
    <figure class="cube__mister" style="width: 120px; height: 120px; transform: translateX(-50%) scale3d(0.6, 0.6, 0.6) rotateX(0deg) rotateY(-120deg) rotateZ(0deg);">
        <section class="cube__face" style="transform: rotateX(0deg) translateZ(60px);"></section>
        <section class="cube__face" style="transform: rotateX(-90deg) translateZ(60px);"></section>
        <section class="cube__face" style="transform: rotateX(90deg) translateZ(60px);"></section>
        <section class="cube__face" style="transform: rotateY(-90deg) translateZ(60px);"></section>
        <section class="cube__face" style="transform: rotateY(90deg) translateZ(60px);"></section>
        <section class="cube__face" style="transform: rotateY(180deg) translateZ(60px);"></section>
    </figure>
   </span>
  </div>





</div>


</template>


<script>

import $ from 'jquery';
export default {

  data() {
    return {

    }
  },

  //全局渲染前事件··
  mounted() {

  },


  //方法区
  methods: {


  },



created() {

 //初始化三维数据
        var cube__outer_rotateX = 0;//deg
        var cube__outer_rotateY = 180;//deg
        var cube__outer_rotateZ = 0;//deg
        //初始化三维数据
        var cube__inner_rotateX = 0;//deg
        var cube__inner_rotateY = 180;//deg
        var cube__inner_rotateZ = 0;//deg

		//初始化三维数据
        var cube__mister_rotateX = 0;//deg
        var cube__mister_rotateY = 60;//deg
        var cube__mister_rotateZ = 0;//deg


        //随机获取要更改的维度 x y z
        var mathRotate = function(){
            var arr = ["rotateX","rotateY","rotateZ"]//三维数组
            var result = Math.floor((Math.random()*arr.length));//获取随机三维
            return arr[result];//结果
        };

        //随机获取幅度
        var mathNumber = function(){
            var arr = ["-",""]//正负数
            var result = Math.floor((Math.random()*arr.length));//获取随机三维
            var number= Math.floor(Math.random()*30)+60;
            return  Number(arr[result]+number);
        }
		//随机获取幅度
        var mathMNumber = function(min,max){
            var arr = ["-",""]//正负数
            var result = Math.floor((Math.random()*arr.length));//获取随机三维
            var number= Math.floor(Math.random()*(max-min))+min;
            return  Number(arr[result]+number);
        }
		//随机获取幅度
        var mathumber = function(min,max){
            var arr = ["-",""]//正负数
            var result = Math.floor((Math.random()*arr.length));//获取随机三维
            return  Number(arr[result]+"90");
        }

        //$('div').css("transform").replace(/[^0-9\-,]/g,'').split(',')[4];
        /*var mathResult = function(){
            var resultRotate = mathRotate();//获取维度
            var resultNumber = mathNumber();//获取幅度
            return resultRotate+"("+resultNumber+"90)";
        }
        var result = mathResult();
        console.log(result);*/


        //循环执行，每隔1秒钟执行一次 800
        var cube__mister=window.setInterval(function(){
			var resultRotate = mathRotate();//获取维度
            var resultNumber = mathumber();//获取幅度
            if(resultRotate == "rotateX"){
                cube__mister_rotateX += resultNumber;//deg
            }else if(resultRotate == "rotateY"){
                cube__mister_rotateY += resultNumber;//deg
            }else{
                cube__mister_rotateZ += resultNumber;//deg
            }
			console.log(`${cube__mister_rotateX},${cube__mister_rotateY},${cube__mister_rotateZ}`);
            $(".cube__mister").css("transform","translateX(-50%) scale3d(.6, .6, .6) rotateX("+cube__mister_rotateX+"deg) rotateY("+cube__mister_rotateY+"deg) rotateZ("+cube__mister_rotateZ+"deg)");


        }, 1600);
        var cube__outer=window.setInterval(function(){
            var resultRotate = mathRotate();
            var resultNumber = mathNumber();//获取幅度
            if(resultRotate == "rotateX"){
                cube__outer_rotateX += resultNumber;//deg
            }else if(resultRotate == "rotateY"){
                cube__outer_rotateY += resultNumber;//deg
            }else{
                cube__outer_rotateZ += resultNumber;//deg
            }
            $(".cube__outer").css("transform","translateX(-50%) scale3d(.4, .4, .4) rotateX("+cube__outer_rotateX+"deg) rotateY("+cube__outer_rotateY+"deg) rotateZ("+cube__outer_rotateZ+"deg)");
        }, 1200);
        var cube__inner=window.setInterval(function(){
            var resultRotate = mathRotate();
            var resultNumber = mathNumber();//获取幅度
            if(resultRotate == "rotateX"){
                cube__inner_rotateX += resultNumber;//deg
            }else if(resultRotate == "rotateY"){
                cube__inner_rotateY += resultNumber;//deg
            }else{
                cube__inner_rotateZ += resultNumber;//deg
            }
            $(".cube__inner").css("transform","translateX(-50%) scale3d(.2, .2, .2) rotateX("+cube__inner_rotateX+"deg) rotateY("+cube__inner_rotateY+"deg) rotateZ("+cube__inner_rotateZ+"deg)");
        }, 5000);

        //去掉定时器的方法
    // window.clearInterval(t1);


        /*transform: translateX(-50%) scale3d(1, 1, 1) rotateX(0deg) rotateY(280deg) rotateZ(180deg);
        cube__outer
        cube__inner*/

},


}
</script>


<style scope="diff">

// body css
.face-diff-body{

}


 @keyframes shake {
            2% {
                transform: translate(0.5px, -1.5px) rotate(-0.5deg);
            }

            4% {
                transform: translate(0.5px, 1.5px) rotate(1.5deg);
            }

            6% {
                transform: translate(1.5px, 1.5px) rotate(1.5deg);
            }

            8% {
                transform: translate(2.5px, 1.5px) rotate(0.5deg);
            }

            10% {
                transform: translate(0.5px, 2.5px) rotate(0.5deg);
            }

            12% {
                transform: translate(1.5px, 1.5px) rotate(0.5deg);
            }

            14% {
                transform: translate(0.5px, 0.5px) rotate(0.5deg);
            }

            16% {
                transform: translate(-1.5px, -0.5px) rotate(1.5deg);
            }

            18% {
                transform: translate(0.5px, 0.5px) rotate(1.5deg);
            }

            20% {
                transform: translate(2.5px, 2.5px) rotate(1.5deg);
            }

            22% {
                transform: translate(0.5px, -1.5px) rotate(1.5deg);
            }

            24% {
                transform: translate(-1.5px, 1.5px) rotate(-0.5deg);
            }

            26% {
                transform: translate(1.5px, 0.5px) rotate(1.5deg);
            }

            28% {
                transform: translate(-0.5px, -0.5px) rotate(-0.5deg);
            }

            30% {
                transform: translate(1.5px, -0.5px) rotate(-0.5deg);
            }

            32% {
                transform: translate(2.5px, -1.5px) rotate(1.5deg);
            }

            34% {
                transform: translate(2.5px, 2.5px) rotate(-0.5deg);
            }

            36% {
                transform: translate(0.5px, -1.5px) rotate(0.5deg);
            }

            38% {
                transform: translate(2.5px, -0.5px) rotate(-0.5deg);
            }

            40% {
                transform: translate(-0.5px, 2.5px) rotate(0.5deg);
            }

            42% {
                transform: translate(-1.5px, 2.5px) rotate(0.5deg);
            }

            44% {
                transform: translate(-1.5px, 1.5px) rotate(0.5deg);
            }

            46% {
                transform: translate(1.5px, -0.5px) rotate(-0.5deg);
            }

            48% {
                transform: translate(2.5px, -0.5px) rotate(0.5deg);
            }

            50% {
                transform: translate(-1.5px, 1.5px) rotate(0.5deg);
            }

            52% {
                transform: translate(-0.5px, 1.5px) rotate(0.5deg);
            }

            54% {
                transform: translate(-1.5px, 1.5px) rotate(0.5deg);
            }

            56% {
                transform: translate(0.5px, 2.5px) rotate(1.5deg);
            }

            58% {
                transform: translate(2.5px, 2.5px) rotate(0.5deg);
            }

            60% {
                transform: translate(2.5px, -1.5px) rotate(1.5deg);
            }

            62% {
                transform: translate(-1.5px, 0.5px) rotate(1.5deg);
            }

            64% {
                transform: translate(-1.5px, 1.5px) rotate(1.5deg);
            }

            66% {
                transform: translate(0.5px, 2.5px) rotate(1.5deg);
            }

            68% {
                transform: translate(2.5px, -1.5px) rotate(1.5deg);
            }

            70% {
                transform: translate(2.5px, 2.5px) rotate(0.5deg);
            }

            72% {
                transform: translate(-0.5px, -1.5px) rotate(1.5deg);
            }

            74% {
                transform: translate(-1.5px, 2.5px) rotate(1.5deg);
            }

            76% {
                transform: translate(-1.5px, 2.5px) rotate(1.5deg);
            }

            78% {
                transform: translate(-1.5px, 2.5px) rotate(0.5deg);
            }

            80% {
                transform: translate(-1.5px, 0.5px) rotate(-0.5deg);
            }

            82% {
                transform: translate(-1.5px, 0.5px) rotate(-0.5deg);
            }

            84% {
                transform: translate(-0.5px, 0.5px) rotate(1.5deg);
            }

            86% {
                transform: translate(2.5px, 1.5px) rotate(0.5deg);
            }

            88% {
                transform: translate(-1.5px, 0.5px) rotate(1.5deg);
            }

            90% {
                transform: translate(-1.5px, -0.5px) rotate(-0.5deg);
            }

            92% {
                transform: translate(-1.5px, -1.5px) rotate(1.5deg);
            }

            94% {
                transform: translate(0.5px, 0.5px) rotate(-0.5deg);
            }

            96% {
                transform: translate(2.5px, -0.5px) rotate(-0.5deg);
            }

            98% {
                transform: translate(-1.5px, -1.5px) rotate(-0.5deg);
            }

            0%, 100% {
                transform: translate(0, 0) rotate(0);
            }
        }

        .cube .cube__inner .cube__face {
            background: #AAA;
            border: 1px solid rgb(255,0,255);
        }

        html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
            border: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline;
            margin: 0;
            padding: 0;
        }

        body {
            font: 400 16px "Source Sans Pro", -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
            color: #2B3A42;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        * {
            -webkit-box-sizing: inherit;
            box-sizing: inherit;
        }

        *, *:before, *:after {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        .splash-viz__cube {
            position: absolute;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            margin: auto;
            z-index: 1;
        }

        .cube {
            position: relative;
            display: block;
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
            -webkit-transform: rotateX(-33.5deg) rotateY(45deg);
            transform: rotateX(-33.5deg) rotateY(45deg);
        }

        article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
            display: block;
        }

        .cube .cube__outer .cube__face {
            background: rgba(141, 214, 249, 0.5);
            -webkit-transition: border-width 0.2s;
            transition: border-width 0.2s;
            -webkit-transition-delay: 0.2s;
            transition-delay: 0.2s;
        }

        .cube__face {
            position: absolute;
            width: 100%;
            height: 100%;
            border: 1px solid #AAA;
        }

        .cube__inner {
            position: absolute;
            top: -2px;
            left: 0;
        }

        .cube__mister {
            position: absolute;
            top: -3px;
            left: 0;
        }

        .cube__inner, .cube__outer, .cube__mister {
            display: inline-block;
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
            -webkit-transition: -webkit-transform 1000ms;
            transition: -webkit-transform 1000ms;
            transition: transform 1000ms;
            transition: transform 1000ms, -webkit-transform 1000ms;
        }

        .face-diff-left{
          color:"white";
          width: 22rem;
          height: 31rem;
          border: 1px dashed red;
          position: relative;
          top: 11rem;
          left: 5rem;
          box-shadow:1px 1px 100px 1px red;
          border-radius: 10% / 10%;
          font-size:40px;
        }

        .face-diff-right{
          color:"white";
          width: 22rem;
          height: 31rem;
          border: 1px dashed blue;
          position: absolute;
          top: 11rem;
          right: 5rem;
          box-shadow:1px 1px 100px 1px blue;
          border-radius: 10% / 10%;
          font-size:40px;
        }



</style>
