
##D1
import requests
import pandas as pd
import numpy as np
from sklearn.impute import SimpleImputer
from sklearn import preprocessing as _prepro
class printME:
    def __int__(self):
        pass
    def _printme(self):
        q=input('enter name plz:')
        print (tuple(q))
    def _printlist(self,_List):
        self.__reqList=[]
        for l in _List:
            if type(l)==str:
                self.__reqList.append(l)
        return self.__reqList
    def _getObjFromURL(self,url):
        resp=requests.get(url)
        return eval(resp.text)
    def _readCSV(self,file):
        self.__df=pd.read_csv(file)
        return self.__df;
    def _fillMissingData(self,file):
        self.df = self._readCSV(file);
        self.x =  self.df.iloc[:,:-1].values
        self.y =  self.df.iloc[:,3].values
        imp = SimpleImputer(missing_values=np.nan, strategy='most_frequent')
        return imp.fit_transform(self.df);
    def _fillMissingDataBlack(self,file):
        self.dfb = self._readCSV(file);
        self.data =  self.dfb.iloc[:,:].values
      #  self.y =  self.df.iloc[:,3].values
        imp = SimpleImputer(missing_values=np.nan, strategy='most_frequent')
        self.data[:,:]  = imp.fit_transform( self.data[:,:] )
        return  self.data


c=printME()
#c._printme()
#dataList = ['aa','bb','cc',123,True,2]
#strList = c._printlist(dataList)
#print(strList)
#datafromOnline = c._getObjFromURL('https://jsonplaceholder.typicode.com/users/')
#print(datafromOnline)
#df=c._readCSV("C:/Users/RPS/Desktop/kasiselvamk/data/diabetes.csv")
#print(df.shape)
#print(df['BMI'])
#print(df.iloc[0:0,0])
#df.iloc[5].plot(kind='pie');
#print(df.cumsum())
#print (c._fillMissingData("C:/Users/RPS/Desktop/kasiselvamk/data/Data.csv"))
#blData = c._fillMissingDataBlack("C:/Users/RPS/Desktop/kasiselvamk/data/BlackFriday.csv")
raData = c._fillMissingData("C:/Users/RPS/Desktop/kasiselvamk/data/Data.csv");
print (raData)

minmaxscal = _prepro.MinMaxScaler()
raData_scalled = minmaxscal.transform(raData[:,1:3])
print(raData_scalled)
 
 
 
 
 





