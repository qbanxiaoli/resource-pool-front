<template>
  <div>
    <div id="centreLeft1Chart" style="width:3.25rem; height: 2.75rem;"></div>
  </div>
</template>

<script>
import echartMixins from "@/utils/resizeMixins";

export default {
  data() {
    return {
      chart: null
    };
  },
  mixins: [echartMixins],
  mounted() {
    this.draw();
  },
  methods: {
    draw() {
      // 基于准备好的dom，初始化echarts实例
      this.chart = this.$echarts.init(document.getElementById("centreLeft1Chart"));
      //  ----------------------------------------------------------------

      this.chart.setOption({
        color: [
          "#37a2da",
          "#32c5e9",
          "#9fe6b8",
          "#ffdb5c",
          "#ff9f7f",
          "#fb7293",
          "#e7bcf3",
          "#8378ea"
        ],
        tooltip: {
          trigger: "item",
          formatter: "{b}:{c}%"
        },
        toolbox: {
          show: true
        },
        calculable: true,
        legend: {
          orient: "horizontal",
          icon: "circle",
          bottom: 0,
          x: "center",
          data: ["CUT-DB01", "云总机39", "双创1",
            "大数据04", "大数据01", "烽火02"],
          textStyle: {
            color: "#fff"
          }
        },
        series: [
          {
            name: "CPU使用率（最大）",
            type: "pie",
            radius: [10, 60],
            roseType: "area",
            center: ["50%", "40%"],
            data: [
              { value: 99.91, name: "CUT-DB01" },
              { value: 99.51, name: "云总机39" },
              { value: 98.95, name: "双创1" },
              { value: 98.47, name: "大数据04" },
              { value: 98.29, name: "大数据01" },
              { value: 89.64, name: "烽火02" }
            ]
          }
        ]
      });
    }
  },
  destroyed() {
    window.onresize = null;
  }
};
</script>

<style lang="scss" scoped>
</style>