#! /bin/sh
#外部命令 /opt/jenkins_shell/deploy.sh $harbor_url $harbor_project $server_name $harbor_tag $port
#接收外部参数
harbor_url=$1
harbor_project_name=$2
project_name=$3
tag=$4
port=$5

imageName=$harbor_url/$harbor_project_name/$project_name:$tag

echo "$imageName"

#查询容器是否存在，存在则删除
containerId=`docker ps -a | grep -w ${project_name}:${tag}  | awk '{print $1}'`
if [ "$containerId" !=  "" ] ; then
    #停掉容器
    docker stop $containerId

    #删除容器
    docker rm $containerId
	
	echo "成功删除容器"
fi

#查询镜像是否存在，存在则删除
imageId=`docker images | grep -w $project_name  | awk '{print $3}'`

if [ "$imageId" !=  "" ] ; then
      
    #删除镜像
    docker rmi -f $imageId
	
	echo "成功删除镜像"
fi

# 登录Harbor
docker login -u eric -p Eric123456 $harbor_url

# 下载镜像
docker pull $imageName

# 启动容器
docker run -di -p $port:$port $imageName

echo "容器启动成功"
