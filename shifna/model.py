import pickle
import pandas as pd
from sklearn.model_selection import train_test_split 

data=pd.read_csv('onlinefoods.csv')
print(data.head())
from sklearn.preprocessing import LabelEncoder
label_encoder=LabelEncoder()
data['Gender']=label_encoder.fit_transform(data['Gender'])
data['Marital Status']=label_encoder.fit_transform(data['Marital Status'])
data['Occupation']=label_encoder.fit_transform(data['Occupation'])
data['Monthly Income']=label_encoder.fit_transform(data['Monthly Income'])
data['Educational Qualifications']=label_encoder.fit_transform(data['Educational Qualifications'])
data['Feedback']=label_encoder.fit_transform(data['Feedback'])
print(data.head())
x=data.drop('Output',axis=1)
y=data[['Output']]
print(x)
print(y)
x_train,x_test,y_train,y_test=train_test_split(x,y,random_state=42,test_size=0.2)

from sklearn.ensemble import RandomForestClassifier
rf_cls=RandomForestClassifier()
rf_cls=rf_cls.fit(x_train,y_train)
y_pred_rf=rf_cls.predict(x_test)

print(y_pred_rf)

pickle.dump(rf_cls,open('model.pkl','wb'))