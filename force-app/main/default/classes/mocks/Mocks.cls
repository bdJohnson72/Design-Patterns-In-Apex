/**
 * Created by Brooks Johnson - Insulet on 2/6/23.
 */

public with sharing class Mocks implements System.StubProvider {

    private Type objectType;
    List<Method> methods = new List<Method>();

    public Mocks(Type objectType) {
        this.objectType = objectType;
    }

    public Mocks addMethod(Method methodToMock) {
        this.methods.add(methodToMock);
        return this;
    }
    public Object handleMethodCall(
            Object obj,
            String methodName,
            Type returnType,
            List<Type> paramTypes,
            List<String> paramNames,
            List<Object> args
    ) {
        // Creates a method signature object from dependency injected variables
        // used for comparing the current method call being handled against the
        // list of MockedMethod objects
        System.debug('calling stub provider');
        System.debug('calling stub provider' + objectType);
        System.debug('calling stub provider' + methodName);
        System.debug('calling stub provider' + methods);
        System.debug('return type = ' + returnType);
        System.debug('param types = ' + paramTypes);
        System.debug('param names = ' + paramNames);
        System.debug('args = ' + args);
        

        return null;

    }



    public Object create() {
        return Test.createStub(this.objectType, this);
    }

    public class Method {
        String methodName;
        Object returnType;
        List<Type> paramTypes = new List<Type>();
        Exception exceptionToThrow;
        Integer countCalls;

        public Mocks.Method withMethodName(String methodName) {
            this.methodName = methodName;
            return this;
        }



        public Mocks.Method withReturnType(Object returnType) {
            this.returnType = returnType;
            return this;
        }

        public Mocks.Method withThrowException(Exception exceptionToThrow) {
            this.exceptionToThrow = exceptionToThrow;
            return this;
        }

        public Object handleCall() {
            //this.countCalls++;
            System.debug(this.exceptionToThrow);
            if (exceptionToThrow != null) {
                System.debug('throwing exception: ' + exceptionToThrow);
                throw exceptionToThrow;
            }
            return this.returnType;
        }
    }
}