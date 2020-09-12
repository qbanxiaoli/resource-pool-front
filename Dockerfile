# 使用超小的nginx:alpine镜像作为基础镜像编译
FROM nginx:alpine
# 将dist目录下的文件复制到容器nginx目录下
COPY /dist/ /usr/share/nginx/html/