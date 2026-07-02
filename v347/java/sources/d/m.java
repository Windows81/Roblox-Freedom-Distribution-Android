package d;

import b.aa;
import b.ac;
import b.e;
import b.s;
import b.w;
import d.a;
import d.c;
import d.e;
import d.n;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Method, n> f8143a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e.a f8144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s f8145c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<e.a> f8146d;
    private final List<c.a> e;
    private final Executor f;
    private final boolean g;

    m(e.a aVar, s sVar, List<e.a> list, List<c.a> list2, Executor executor, boolean z) {
        this.f8144b = aVar;
        this.f8145c = sVar;
        this.f8146d = Collections.unmodifiableList(list);
        this.e = Collections.unmodifiableList(list2);
        this.f = executor;
        this.g = z;
    }

    public <T> T a(final Class<T> cls) {
        o.a((Class) cls);
        if (this.g) {
            b(cls);
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: d.m.1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final j f8149c = j.a();

            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object... objArr) throws Throwable {
                if (method.getDeclaringClass() == Object.class) {
                    return method.invoke(this, objArr);
                }
                if (this.f8149c.a(method)) {
                    return this.f8149c.a(method, cls, obj, objArr);
                }
                n nVarA = m.this.a(method);
                return nVarA.f8157d.b(new h(nVarA, objArr));
            }
        });
    }

    private void b(Class<?> cls) {
        j jVarA = j.a();
        for (Method method : cls.getDeclaredMethods()) {
            if (!jVarA.a(method)) {
                a(method);
            }
        }
    }

    n a(Method method) {
        n nVarA;
        synchronized (this.f8143a) {
            nVarA = this.f8143a.get(method);
            if (nVarA == null) {
                nVarA = new n.a(this, method).a();
                this.f8143a.put(method, nVarA);
            }
        }
        return nVarA;
    }

    public e.a a() {
        return this.f8144b;
    }

    public s b() {
        return this.f8145c;
    }

    public c<?> a(Type type, Annotation[] annotationArr) {
        return a((c.a) null, type, annotationArr);
    }

    public c<?> a(c.a aVar, Type type, Annotation[] annotationArr) {
        o.a(type, "returnType == null");
        o.a(annotationArr, "annotations == null");
        int iIndexOf = this.e.indexOf(aVar) + 1;
        int size = this.e.size();
        for (int i = iIndexOf; i < size; i++) {
            c<?> cVarA = this.e.get(i).a(type, annotationArr, this);
            if (cVarA != null) {
                return cVarA;
            }
        }
        StringBuilder sbAppend = new StringBuilder("Could not locate call adapter for ").append(type).append(".\n");
        if (aVar != null) {
            sbAppend.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sbAppend.append("\n   * ").append(this.e.get(i2).getClass().getName());
            }
            sbAppend.append('\n');
        }
        sbAppend.append("  Tried:");
        int size2 = this.e.size();
        while (iIndexOf < size2) {
            sbAppend.append("\n   * ").append(this.e.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sbAppend.toString());
    }

    public <T> e<T, aa> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return a(null, type, annotationArr, annotationArr2);
    }

    public <T> e<T, aa> a(e.a aVar, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        o.a(type, "type == null");
        o.a(annotationArr, "parameterAnnotations == null");
        o.a(annotationArr2, "methodAnnotations == null");
        int iIndexOf = this.f8146d.indexOf(aVar) + 1;
        int size = this.f8146d.size();
        for (int i = iIndexOf; i < size; i++) {
            e<T, aa> eVar = (e<T, aa>) this.f8146d.get(i).a(type, annotationArr, annotationArr2, this);
            if (eVar != null) {
                return eVar;
            }
        }
        StringBuilder sbAppend = new StringBuilder("Could not locate RequestBody converter for ").append(type).append(".\n");
        if (aVar != null) {
            sbAppend.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sbAppend.append("\n   * ").append(this.f8146d.get(i2).getClass().getName());
            }
            sbAppend.append('\n');
        }
        sbAppend.append("  Tried:");
        int size2 = this.f8146d.size();
        while (iIndexOf < size2) {
            sbAppend.append("\n   * ").append(this.f8146d.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sbAppend.toString());
    }

    public <T> e<ac, T> b(Type type, Annotation[] annotationArr) {
        return a((e.a) null, type, annotationArr);
    }

    public <T> e<ac, T> a(e.a aVar, Type type, Annotation[] annotationArr) {
        o.a(type, "type == null");
        o.a(annotationArr, "annotations == null");
        int iIndexOf = this.f8146d.indexOf(aVar) + 1;
        int size = this.f8146d.size();
        for (int i = iIndexOf; i < size; i++) {
            e<ac, T> eVar = (e<ac, T>) this.f8146d.get(i).a(type, annotationArr, this);
            if (eVar != null) {
                return eVar;
            }
        }
        StringBuilder sbAppend = new StringBuilder("Could not locate ResponseBody converter for ").append(type).append(".\n");
        if (aVar != null) {
            sbAppend.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sbAppend.append("\n   * ").append(this.f8146d.get(i2).getClass().getName());
            }
            sbAppend.append('\n');
        }
        sbAppend.append("  Tried:");
        int size2 = this.f8146d.size();
        while (iIndexOf < size2) {
            sbAppend.append("\n   * ").append(this.f8146d.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sbAppend.toString());
    }

    public <T> e<T, String> c(Type type, Annotation[] annotationArr) {
        o.a(type, "type == null");
        o.a(annotationArr, "annotations == null");
        int size = this.f8146d.size();
        for (int i = 0; i < size; i++) {
            e<T, String> eVar = (e<T, String>) this.f8146d.get(i).b(type, annotationArr, this);
            if (eVar != null) {
                return eVar;
            }
        }
        return a.e.f8072a;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private j f8150a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e.a f8151b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private s f8152c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<e.a> f8153d;
        private List<c.a> e;
        private Executor f;
        private boolean g;

        a(j jVar) {
            this.f8153d = new ArrayList();
            this.e = new ArrayList();
            this.f8150a = jVar;
            this.f8153d.add(new d.a());
        }

        public a() {
            this(j.a());
        }

        public a a(w wVar) {
            return a((e.a) o.a(wVar, "client == null"));
        }

        public a a(e.a aVar) {
            this.f8151b = (e.a) o.a(aVar, "factory == null");
            return this;
        }

        public a a(String str) {
            o.a(str, "baseUrl == null");
            s sVarE = s.e(str);
            if (sVarE == null) {
                throw new IllegalArgumentException("Illegal URL: " + str);
            }
            return a(sVarE);
        }

        public a a(s sVar) {
            o.a(sVar, "baseUrl == null");
            if (!"".equals(sVar.j().get(r0.size() - 1))) {
                throw new IllegalArgumentException("baseUrl must end in /: " + sVar);
            }
            this.f8152c = sVar;
            return this;
        }

        public a a(e.a aVar) {
            this.f8153d.add((e.a) o.a(aVar, "factory == null"));
            return this;
        }

        public a a(c.a aVar) {
            this.e.add((c.a) o.a(aVar, "factory == null"));
            return this;
        }

        public m a() {
            if (this.f8152c == null) {
                throw new IllegalStateException("Base URL required.");
            }
            e.a wVar = this.f8151b;
            if (wVar == null) {
                wVar = new w();
            }
            Executor executorB = this.f;
            if (executorB == null) {
                executorB = this.f8150a.b();
            }
            ArrayList arrayList = new ArrayList(this.e);
            arrayList.add(this.f8150a.a(executorB));
            return new m(wVar, this.f8152c, new ArrayList(this.f8153d), arrayList, executorB, this.g);
        }
    }
}
