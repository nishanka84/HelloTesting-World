def mavenbuild() {
      sh 'mvn package'
		  echo "print ${VERSION_NUMBER}"
		  echo "print ${gitbranch}"
  
}
