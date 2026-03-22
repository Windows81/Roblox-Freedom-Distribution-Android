package d;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface c<T> {
    Type a();

    <R> T b(b<R> bVar);

    public static abstract class a {
        public abstract c<?> a(Type type, Annotation[] annotationArr, m mVar);

        protected static Type a(int i, ParameterizedType parameterizedType) {
            return o.a(i, parameterizedType);
        }

        protected static Class<?> a(Type type) {
            return o.a(type);
        }
    }
}
