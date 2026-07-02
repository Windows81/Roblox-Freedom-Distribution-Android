package d;

import b.aa;
import b.ac;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public interface e<F, T> {
    T a(F f) throws IOException;

    public static abstract class a {
        public e<ac, ?> a(Type type, Annotation[] annotationArr, m mVar) {
            return null;
        }

        public e<?, aa> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, m mVar) {
            return null;
        }

        public e<?, String> b(Type type, Annotation[] annotationArr, m mVar) {
            return null;
        }
    }
}
