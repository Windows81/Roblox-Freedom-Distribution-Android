package e;

import c.ab;
import c.ad;
import c.e;
import c.t;
import c.x;
import e.a;
import e.c;
import e.e;
import e.n;
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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Method, n> f7891a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e.a f7892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t f7893c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<e.a> f7894d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<c.a> f7895e;
    private final Executor f;
    private final boolean g;

    m(e.a aVar, t tVar, List<e.a> list, List<c.a> list2, Executor executor, boolean z) {
        this.f7892b = aVar;
        this.f7893c = tVar;
        this.f7894d = Collections.unmodifiableList(list);
        this.f7895e = Collections.unmodifiableList(list2);
        this.f = executor;
        this.g = z;
    }

    public <T> T a(final Class<T> cls) {
        o.a((Class) cls);
        if (this.g) {
            b(cls);
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: e.m.1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final j f7898c = j.a();

            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object... objArr) throws Throwable {
                if (method.getDeclaringClass() == Object.class) {
                    return method.invoke(this, objArr);
                }
                if (this.f7898c.a(method)) {
                    return this.f7898c.a(method, cls, obj, objArr);
                }
                n nVarA = m.this.a(method);
                return nVarA.f7907d.b(new h(nVarA, objArr));
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
        synchronized (this.f7891a) {
            nVarA = this.f7891a.get(method);
            if (nVarA == null) {
                nVarA = new n.a(this, method).a();
                this.f7891a.put(method, nVarA);
            }
        }
        return nVarA;
    }

    public e.a a() {
        return this.f7892b;
    }

    public t b() {
        return this.f7893c;
    }

    public c<?> a(Type type, Annotation[] annotationArr) {
        return a((c.a) null, type, annotationArr);
    }

    public c<?> a(c.a aVar, Type type, Annotation[] annotationArr) {
        o.a(type, "returnType == null");
        o.a(annotationArr, "annotations == null");
        int iIndexOf = this.f7895e.indexOf(aVar) + 1;
        int size = this.f7895e.size();
        for (int i = iIndexOf; i < size; i++) {
            c<?> cVarA = this.f7895e.get(i).a(type, annotationArr, this);
            if (cVarA != null) {
                return cVarA;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sb.append("\n   * ");
                sb.append(this.f7895e.get(i2).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f7895e.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f7895e.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> e<T, ab> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return a(null, type, annotationArr, annotationArr2);
    }

    public <T> e<T, ab> a(e.a aVar, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        o.a(type, "type == null");
        o.a(annotationArr, "parameterAnnotations == null");
        o.a(annotationArr2, "methodAnnotations == null");
        int iIndexOf = this.f7894d.indexOf(aVar) + 1;
        int size = this.f7894d.size();
        for (int i = iIndexOf; i < size; i++) {
            e<T, ab> eVar = (e<T, ab>) this.f7894d.get(i).a(type, annotationArr, annotationArr2, this);
            if (eVar != null) {
                return eVar;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sb.append("\n   * ");
                sb.append(this.f7894d.get(i2).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f7894d.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f7894d.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> e<ad, T> b(Type type, Annotation[] annotationArr) {
        return a((e.a) null, type, annotationArr);
    }

    public <T> e<ad, T> a(e.a aVar, Type type, Annotation[] annotationArr) {
        o.a(type, "type == null");
        o.a(annotationArr, "annotations == null");
        int iIndexOf = this.f7894d.indexOf(aVar) + 1;
        int size = this.f7894d.size();
        for (int i = iIndexOf; i < size; i++) {
            e<ad, T> eVar = (e<ad, T>) this.f7894d.get(i).a(type, annotationArr, this);
            if (eVar != null) {
                return eVar;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sb.append("\n   * ");
                sb.append(this.f7894d.get(i2).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f7894d.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f7894d.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> e<T, String> c(Type type, Annotation[] annotationArr) {
        o.a(type, "type == null");
        o.a(annotationArr, "annotations == null");
        int size = this.f7894d.size();
        for (int i = 0; i < size; i++) {
            e<T, String> eVar = (e<T, String>) this.f7894d.get(i).b(type, annotationArr, this);
            if (eVar != null) {
                return eVar;
            }
        }
        return a.e.f7818a;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private j f7899a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e.a f7900b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private t f7901c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<e.a> f7902d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<c.a> f7903e;
        private Executor f;
        private boolean g;

        a(j jVar) {
            this.f7902d = new ArrayList();
            this.f7903e = new ArrayList();
            this.f7899a = jVar;
            this.f7902d.add(new e.a());
        }

        public a() {
            this(j.a());
        }

        public a a(x xVar) {
            return a((e.a) o.a(xVar, "client == null"));
        }

        public a a(e.a aVar) {
            this.f7900b = (e.a) o.a(aVar, "factory == null");
            return this;
        }

        public a a(String str) {
            o.a(str, "baseUrl == null");
            t tVarE = t.e(str);
            if (tVarE == null) {
                throw new IllegalArgumentException("Illegal URL: " + str);
            }
            return a(tVarE);
        }

        public a a(t tVar) {
            o.a(tVar, "baseUrl == null");
            if (!"".equals(tVar.j().get(r0.size() - 1))) {
                throw new IllegalArgumentException("baseUrl must end in /: " + tVar);
            }
            this.f7901c = tVar;
            return this;
        }

        public a a(e.a aVar) {
            this.f7902d.add((e.a) o.a(aVar, "factory == null"));
            return this;
        }

        public a a(c.a aVar) {
            this.f7903e.add((c.a) o.a(aVar, "factory == null"));
            return this;
        }

        public m a() {
            if (this.f7901c == null) {
                throw new IllegalStateException("Base URL required.");
            }
            e.a xVar = this.f7900b;
            if (xVar == null) {
                xVar = new x();
            }
            e.a aVar = xVar;
            Executor executorB = this.f;
            if (executorB == null) {
                executorB = this.f7899a.b();
            }
            Executor executor = executorB;
            ArrayList arrayList = new ArrayList(this.f7903e);
            arrayList.add(this.f7899a.a(executor));
            return new m(aVar, this.f7901c, new ArrayList(this.f7902d), arrayList, executor, this.g);
        }
    }
}
