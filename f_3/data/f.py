import pandas as pd
import pprint as pp


r=[1000,25000,100000,500000]

df=pd.read_csv("f.csv");


# df=df.sort(["金额"],ascending=False)
def constrain_age(age):
	if age==float('NaN'):
		return 17.0
	elif age<17:
		return 17.0
	else:
		return age

print(df)

# df.to_csv("f.csv",index=False,encoding="utf-8")

df_sum={"0~1000":{},"1000~25000":{},"25000~50000":{},"50000~500000":{},">500000":{}}

for index,rows in df.iterrows():
	if rows.性别 == "男":
		if rows.金额<r[0]:
			if constrain_age(rows.年龄) in df_sum["0~1000"]:
				df_sum["0~1000"][constrain_age(rows.年龄)]+=1#rows.金额
			else:
				df_sum["0~1000"][constrain_age(rows.年龄)]=1#rows.金额
		elif (rows.金额>r[0])&(rows.金额<r[1]):
			if constrain_age(rows.年龄) in df_sum["1000~25000"]:
				df_sum["1000~25000"][constrain_age(rows.年龄)]+=1#rows.金额
			else:
				df_sum["1000~25000"][constrain_age(rows.年龄)]=1#rows.金额
		elif (rows.金额>r[1])&(rows.金额<r[2]):
			if constrain_age(rows.年龄) in df_sum["25000~50000"]:
				df_sum["25000~50000"][constrain_age(rows.年龄)]+=1#rows.金额
			else:
				df_sum["25000~50000"][constrain_age(rows.年龄)]=1#rows.金额
		elif (rows.金额>r[2])&(rows.金额<r[3]):
			if constrain_age(rows.年龄) in df_sum["50000~500000"]:
				df_sum["50000~500000"][constrain_age(rows.年龄)]+=1#rows.金额
			else:
				df_sum["50000~500000"][constrain_age(rows.年龄)]=1#rows.金额
		elif rows.金额>r[3]:
			if constrain_age(constrain_age(rows.年龄)) in df_sum[">500000"]:
				# print("in")
				df_sum[">500000"][constrain_age(rows.年龄)]+=1#rows.金额
			else:
				df_sum[">500000"][constrain_age(rows.年龄)]=1#rows.金额

s=pd.DataFrame(df_sum)
s=s.T

print(s)


s.to_csv("f_people_nan.csv",index=True,encoding="utf-8")

# pp.pprint(df_sum)
