###main simple steps
#1. Import data 2. tidy data 3. transform data 4. visualize data 5. modelling 6. communicate study and outputs

##import data: 1. st_read(layer='') (shapefile)(geopackage)
#              2. read_csv() (csv file) (tidyverse package)
#              3. library(raster) 
#                 raster(here())



##查看file (raster)
# library(fs)
#dir_info()

##把raster data选出来 (raster)
#library(tidyverse)
#listfiles<-dir_info("prac3_data/") %>%
#filter(str_detect(path, ".tif")) %>%
#dplyr::select(path)%>%
#pull() [$]


##tidy data
#1. merge shapefile and csv: shape <- shape%>%
#                            merge(.,
#                            mycsv,
#                           by.x="GSS_CODE", 
#                            by.y="Row Labels")



##如果是raster data 还要把它录入到raster stack里
#stack()




##visualize data
#tmap_mode("plot")（默认模式）(Thematic map)
#qtm(., fill="需要体现的内容" )

#histogram
#1.#define breaks: 1breaks <- ()
#2. 画图：hist(as.numeric(数据集),
#      breaks=1breaks,
#      col="颜色",
#      main="标题",
#      xlab="x轴标题",
#      ylab="y轴标题")
#3. 检查数据
#histinfo<-数据集%
#as.numeric()%
#hist(.)
#histinfo


##export data: st_write


##coordinated system and projection 
#library(sf)
#st_crs(数据)$proj4string  了解是什么projection
#如果下载的数据没有crs，可以后面加： st_set_crs(4326)

#一般用数据用projection比较好量距离之类的
#所以要把现有的coordianted system 转换为projected coordianted system: st_transform(., 3112)

#sp对象：以点对象（points）为例，SpatialPoints表示只包含坐标信息、没有属性信息的点对象，SpatialPointsDataFrame表示既包含坐标信息、也包含属性信息的点对象。
#sf对象：空间矢量对象
#一般来说要把sp转换成sf：%+  st_as_sf()
#sf转sp：as(., "spatial")




