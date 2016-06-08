### Java Classpath
if [[ -d "$HOME/lib/java" ]] ; then
	MYCLASSPATH="$HOME/lib/java"
	for jar in $HOME/lib/java/*.jar ; do
		MYCLASSPATH="$jar:$MYCLASSPATH"
	done
	MYCLASSPATH="$MYCLASSPATH"
fi
CLASSPATH=".:..:$MYCLASSPATH:/usr/lib64/jdk1.7.0_07/jre/lib:/usr/lib64/jdk1.7.0_07/lib"
export CLASSPATH

