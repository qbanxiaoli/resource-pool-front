<template>
  <div>
    <div id="centreLeft2Chart" style="width:4.125rem; height: 4.625rem;"></div>
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
      this.chart = this.$echarts.init(document.getElementById("centreLeft2Chart"));
      //  ----------------------------------------------------------------

      let option = {
        angleAxis: {
          interval: 1,
          type: "category",
          data: [
            "主机",
            "主机",
            "主机",
            "主机",
            "主机",
            "主机",
            "主机",
            "主机",
            "主机",
            "主机"
          ],
          z: 10,
          axisLine: {
            show: true,
            lineStyle: {
              color: "#00c7ff",
              width: 1,
              type: "solid"
            }
          },
          axisLabel: {
            interval: 0,
            show: true,
            color: "#00c7ff",
            margin: 8,
            fontSize: 12
          }
        },
        radiusAxis: {
          min: 0,
          max: 100,
          interval: 20,
          axisLine: {
            show: true,
            lineStyle: {
              color: "#00c7ff",
              width: 1,
              type: "solid"
            }
          },
          axisLabel: {
            formatter: "{value} %",
            show: false,
            padding: [0, 0, 20, 0],
            color: "#00c7ff",
            fontSize: 16
          },
          splitLine: {
            lineStyle: {
              color: "#00c7ff",
              width: 1,
              type: "solid"
            }
          }
        },
        legend: {
          show: true,
          orient: "vartical",
          top: "center",
          bottom: "0%",
          itemWidth: 16,
          itemHeight: 8,
          itemGap: 16,
          textStyle: {
            color: "#A3E2F4",
            fontSize: 12,
            fontWeight: 0
          },
          data: ["A"]
        },
        polar: {},
        series: [
          {
            name: "A",
            type: "bar",
            radius: ["20%", "100%"],
            data: [
              {
                value: 99.90,
                itemStyle: {
                  normal: {
                    color: "#f54d4d"
                  }
                }
              },
              {
                value: 99.54,
                itemStyle: {
                  normal: {
                    color: "#f87544"
                  }
                }
              },
              {
                value: 99.16,
                itemStyle: {
                  normal: {
                    color: "#ffae00"
                  }
                }
              },
              {
                value: 98.75,
                itemStyle: {
                  normal: {
                    color: "#dcff00"
                  }
                }
              },
              {
                value: 98.72,
                itemStyle: {
                  normal: {
                    color: "#25d053"
                  }
                }
              },
              {
                value: 98.30,
                itemStyle: {
                  normal: {
                    color: "#01fff5"
                  }
                }
              },
              {
                value: 87.20,
                itemStyle: {
                  normal: {
                    color: "#007cff"
                  }
                }
              },
              {
                value: 63.09,
                itemStyle: {
                  normal: {
                    color: "#4245ff"
                  }
                }
              },
              {
                value: 55.88,
                itemStyle: {
                  normal: {
                    color: "#c32eff"
                  }
                }
              },
              {
                value: 34.07,
                itemStyle: {
                  normal: {
                    color: "#ff62e8"
                  }
                }
              }
            ],
            coordinateSystem: "polar"
          }
        ]
      };
      this.chart.setOption(option);
    }
  },
  destroyed() {
    window.onresize = null;
  }
};
</script>

<style lang="scss" scoped>
</style>