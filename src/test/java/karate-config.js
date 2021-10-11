function fn(){
	
	var alex={
		
		name:"ahmad",
		age:26,
		baseUrl: 'https://reqres.in/api'
	}
	
	var env=karate.env
	karate.log('The value of env is :', env)
	
	
	if(env== 'qa'){
		
		alex.baseUrl='https://reqres.in/api/qa'
	}
	
	else if(env== 'dev'){
		
		alex.baseUrl='https://reqres.in/api/dev'
	}
	
	else {
		
		alex.baseUrl='https://reqres.in/api/default'
	}
	
	
	
	karate.configure('connectTimeout',5000)
	karate.configure('readTimeout',5000)
	
	return alex
}