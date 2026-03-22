package e;

import c.ab;
import c.ad;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface e<F, T> {

    public static abstract class a {
        public e<ad, ?> a(Type type, Annotation[] annotationArr, m mVar) {
            return null;
        }

        public e<?, ab> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, m mVar) {
            return null;
        }

        public e<?, String> b(Type type, Annotation[] annotationArr, m mVar) {
            return null;
        }
    }

    T a(F f) throws IOException;
}
