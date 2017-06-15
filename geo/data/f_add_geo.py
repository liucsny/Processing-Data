import pandas as pd
import pprint as pp

df=pd.read_csv("f_cleaned.csv");
df_geo=pd.read_csv("f_geo.csv");

print(df)
print(df_geo)

df["谷歌地图经度"]=0.0
df["谷歌地图纬度"]=0.0

keyWord=list(df_geo["关键词"])

# count=0

for index,rows in df.iterrows():
	print(rows.MOBILEAREA)
	if rows.MOBILEAREA in keyWord:
		df.set_value(index,"谷歌地图经度",df_geo[df_geo.关键词==rows.MOBILEAREA].谷歌地图经度)
		df.set_value(index,"谷歌地图纬度",df_geo[df_geo.关键词==rows.MOBILEAREA].谷歌地图纬度)


	# df_geo[df_geo.关键词==rows.MOBILEAREA].谷歌地图纬度

	# print(rows["谷歌地图经度"])
	# count+=1
	# if count>5000:
	# 	break
	# print(rows.MOBILEAREA)


print(df)
print(df_geo)

df.to_csv("f_raw_geo.csv",index=True,encoding="utf-8")
# print(df_geo[df_geo.关键词=="上海"].谷歌地图纬度)
# print(df_geo[df_geo[]].谷歌地图纬度)