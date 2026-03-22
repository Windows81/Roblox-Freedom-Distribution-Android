package e;

import c.aa;
import c.ab;
import c.ac;
import c.ad;
import c.e;
import c.s;
import c.t;
import c.v;
import c.w;
import e.b.p;
import e.b.q;
import e.b.r;
import e.b.u;
import e.b.w;
import e.i;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class n<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Pattern f7904a = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Pattern f7905b = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final e.a f7906c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final c<?> f7907d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final t f7908e;
    private final e<ad, T> f;
    private final String g;
    private final String h;
    private final s i;
    private final v j;
    private final boolean k;
    private final boolean l;
    private final boolean m;
    private final i<?>[] n;

    n(a<T> aVar) {
        this.f7906c = aVar.f7909a.a();
        this.f7907d = aVar.w;
        this.f7908e = aVar.f7909a.b();
        this.f = aVar.v;
        this.g = aVar.m;
        this.h = aVar.q;
        this.i = aVar.r;
        this.j = aVar.s;
        this.k = aVar.n;
        this.l = aVar.o;
        this.m = aVar.p;
        this.n = aVar.u;
    }

    aa a(Object... objArr) throws IOException {
        k kVar = new k(this.g, this.f7908e, this.h, this.i, this.j, this.k, this.l, this.m);
        i<?>[] iVarArr = this.n;
        int length = objArr != null ? objArr.length : 0;
        if (length != iVarArr.length) {
            throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + iVarArr.length + ")");
        }
        for (int i = 0; i < length; i++) {
            iVarArr[i].a(kVar, objArr[i]);
        }
        return kVar.a();
    }

    T a(ad adVar) throws IOException {
        return this.f.a(adVar);
    }

    static final class a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final m f7909a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Method f7910b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Annotation[] f7911c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Annotation[][] f7912d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final Type[] f7913e;
        Type f;
        boolean g;
        boolean h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        String m;
        boolean n;
        boolean o;
        boolean p;
        String q;
        s r;
        v s;
        Set<String> t;
        i<?>[] u;
        e<ad, T> v;
        c<?> w;

        public a(m mVar, Method method) {
            this.f7909a = mVar;
            this.f7910b = method;
            this.f7911c = method.getAnnotations();
            this.f7913e = method.getGenericParameterTypes();
            this.f7912d = method.getParameterAnnotations();
        }

        public n a() {
            c<?> cVarB = b();
            this.w = cVarB;
            Type typeA = cVarB.a();
            this.f = typeA;
            if (typeA == l.class || typeA == ac.class) {
                throw a("'" + o.a(this.f).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
            }
            this.v = c();
            for (Annotation annotation : this.f7911c) {
                a(annotation);
            }
            if (this.m == null) {
                throw a("HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
            }
            if (!this.n) {
                if (this.p) {
                    throw a("Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
                if (this.o) {
                    throw a("FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
            }
            int length = this.f7912d.length;
            this.u = new i[length];
            for (int i = 0; i < length; i++) {
                Type type = this.f7913e[i];
                if (o.d(type)) {
                    throw a(i, "Parameter type must not include a type variable or wildcard: %s", type);
                }
                Annotation[] annotationArr = this.f7912d[i];
                if (annotationArr == null) {
                    throw a(i, "No Retrofit annotation found.", new Object[0]);
                }
                this.u[i] = a(i, type, annotationArr);
            }
            if (this.q == null && !this.l) {
                throw a("Missing either @%s URL or @Url parameter.", this.m);
            }
            if (!this.o && !this.p && !this.n && this.i) {
                throw a("Non-body HTTP method cannot contain @Body.", new Object[0]);
            }
            if (this.o && !this.g) {
                throw a("Form-encoded method must contain at least one @Field.", new Object[0]);
            }
            if (this.p && !this.h) {
                throw a("Multipart method must contain at least one @Part.", new Object[0]);
            }
            return new n(this);
        }

        private c<?> b() {
            Type genericReturnType = this.f7910b.getGenericReturnType();
            if (o.d(genericReturnType)) {
                throw a("Method return type must not include a type variable or wildcard: %s", genericReturnType);
            }
            if (genericReturnType == Void.TYPE) {
                throw a("Service methods cannot return void.", new Object[0]);
            }
            try {
                return this.f7909a.a(genericReturnType, this.f7910b.getAnnotations());
            } catch (RuntimeException e2) {
                throw a(e2, "Unable to create call adapter for %s", genericReturnType);
            }
        }

        private void a(Annotation annotation) {
            if (annotation instanceof e.b.b) {
                a("DELETE", ((e.b.b) annotation).a(), false);
                return;
            }
            if (annotation instanceof e.b.f) {
                a("GET", ((e.b.f) annotation).a(), false);
                return;
            }
            if (annotation instanceof e.b.g) {
                a("HEAD", ((e.b.g) annotation).a(), false);
                if (!Void.class.equals(this.f)) {
                    throw a("HEAD method must use Void as response type.", new Object[0]);
                }
                return;
            }
            if (annotation instanceof e.b.n) {
                a("PATCH", ((e.b.n) annotation).a(), true);
                return;
            }
            if (annotation instanceof e.b.o) {
                a("POST", ((e.b.o) annotation).a(), true);
                return;
            }
            if (annotation instanceof p) {
                a("PUT", ((p) annotation).a(), true);
                return;
            }
            if (annotation instanceof e.b.m) {
                a("OPTIONS", ((e.b.m) annotation).a(), false);
                return;
            }
            if (annotation instanceof e.b.h) {
                e.b.h hVar = (e.b.h) annotation;
                a(hVar.a(), hVar.b(), hVar.c());
                return;
            }
            if (annotation instanceof e.b.k) {
                String[] strArrA = ((e.b.k) annotation).a();
                if (strArrA.length == 0) {
                    throw a("@Headers annotation is empty.", new Object[0]);
                }
                this.r = a(strArrA);
                return;
            }
            if (annotation instanceof e.b.l) {
                if (this.o) {
                    throw a("Only one encoding annotation is allowed.", new Object[0]);
                }
                this.p = true;
            } else if (annotation instanceof e.b.e) {
                if (this.p) {
                    throw a("Only one encoding annotation is allowed.", new Object[0]);
                }
                this.o = true;
            }
        }

        private void a(String str, String str2, boolean z) {
            String str3 = this.m;
            if (str3 != null) {
                throw a("Only one HTTP method is allowed. Found: %s and %s.", str3, str);
            }
            this.m = str;
            this.n = z;
            if (str2.isEmpty()) {
                return;
            }
            int iIndexOf = str2.indexOf(63);
            if (iIndexOf != -1 && iIndexOf < str2.length() - 1) {
                String strSubstring = str2.substring(iIndexOf + 1);
                if (n.f7904a.matcher(strSubstring).find()) {
                    throw a("URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", strSubstring);
                }
            }
            this.q = str2;
            this.t = n.a(str2);
        }

        private s a(String[] strArr) {
            s.a aVar = new s.a();
            for (String str : strArr) {
                int iIndexOf = str.indexOf(58);
                if (iIndexOf == -1 || iIndexOf == 0 || iIndexOf == str.length() - 1) {
                    throw a("@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String strSubstring = str.substring(0, iIndexOf);
                String strTrim = str.substring(iIndexOf + 1).trim();
                if ("Content-Type".equalsIgnoreCase(strSubstring)) {
                    v vVarA = v.a(strTrim);
                    if (vVarA == null) {
                        throw a("Malformed content type: %s", strTrim);
                    }
                    this.s = vVarA;
                } else {
                    aVar.a(strSubstring, strTrim);
                }
            }
            return aVar.a();
        }

        private i<?> a(int i, Type type, Annotation[] annotationArr) {
            i<?> iVar = null;
            for (Annotation annotation : annotationArr) {
                i<?> iVarA = a(i, type, annotationArr, annotation);
                if (iVarA != null) {
                    if (iVar != null) {
                        throw a(i, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                    }
                    iVar = iVarA;
                }
            }
            if (iVar != null) {
                return iVar;
            }
            throw a(i, "No Retrofit annotation found.", new Object[0]);
        }

        private i<?> a(int i, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof w) {
                if (this.l) {
                    throw a(i, "Multiple @Url method annotations found.", new Object[0]);
                }
                if (this.j) {
                    throw a(i, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.k) {
                    throw a(i, "A @Url parameter must not come after a @Query", new Object[0]);
                }
                if (this.q != null) {
                    throw a(i, "@Url cannot be used with @%s URL", this.m);
                }
                this.l = true;
                if (type == t.class || type == String.class || type == URI.class || ((type instanceof Class) && "android.net.Uri".equals(((Class) type).getName()))) {
                    return new i.l();
                }
                throw a(i, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
            }
            if (annotation instanceof e.b.s) {
                if (this.k) {
                    throw a(i, "A @Path parameter must not come after a @Query.", new Object[0]);
                }
                if (this.l) {
                    throw a(i, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.q == null) {
                    throw a(i, "@Path can only be used with relative url on @%s", this.m);
                }
                this.j = true;
                e.b.s sVar = (e.b.s) annotation;
                String strA = sVar.a();
                a(i, strA);
                return new i.h(strA, this.f7909a.c(type, annotationArr), sVar.b());
            }
            if (annotation instanceof e.b.t) {
                e.b.t tVar = (e.b.t) annotation;
                String strA2 = tVar.a();
                boolean zB = tVar.b();
                Class<?> clsA = o.a(type);
                this.k = true;
                if (Iterable.class.isAssignableFrom(clsA)) {
                    if (!(type instanceof ParameterizedType)) {
                        throw a(i, clsA.getSimpleName() + " must include generic type (e.g., " + clsA.getSimpleName() + "<String>)", new Object[0]);
                    }
                    return new i.C0189i(strA2, this.f7909a.c(o.a(0, (ParameterizedType) type), annotationArr), zB).a();
                }
                if (clsA.isArray()) {
                    return new i.C0189i(strA2, this.f7909a.c(n.a(clsA.getComponentType()), annotationArr), zB).b();
                }
                return new i.C0189i(strA2, this.f7909a.c(type, annotationArr), zB);
            }
            if (annotation instanceof u) {
                Class<?> clsA2 = o.a(type);
                if (!Map.class.isAssignableFrom(clsA2)) {
                    throw a(i, "@QueryMap parameter type must be Map.", new Object[0]);
                }
                Type typeB = o.b(type, clsA2, Map.class);
                if (!(typeB instanceof ParameterizedType)) {
                    throw a(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType = (ParameterizedType) typeB;
                Type typeA = o.a(0, parameterizedType);
                if (String.class != typeA) {
                    throw a(i, "@QueryMap keys must be of type String: " + typeA, new Object[0]);
                }
                return new i.j(this.f7909a.c(o.a(1, parameterizedType), annotationArr), ((u) annotation).a());
            }
            if (annotation instanceof e.b.i) {
                String strA3 = ((e.b.i) annotation).a();
                Class<?> clsA3 = o.a(type);
                if (Iterable.class.isAssignableFrom(clsA3)) {
                    if (!(type instanceof ParameterizedType)) {
                        throw a(i, clsA3.getSimpleName() + " must include generic type (e.g., " + clsA3.getSimpleName() + "<String>)", new Object[0]);
                    }
                    return new i.d(strA3, this.f7909a.c(o.a(0, (ParameterizedType) type), annotationArr)).a();
                }
                if (clsA3.isArray()) {
                    return new i.d(strA3, this.f7909a.c(n.a(clsA3.getComponentType()), annotationArr)).b();
                }
                return new i.d(strA3, this.f7909a.c(type, annotationArr));
            }
            if (annotation instanceof e.b.j) {
                Class<?> clsA4 = o.a(type);
                if (!Map.class.isAssignableFrom(clsA4)) {
                    throw a(i, "@HeaderMap parameter type must be Map.", new Object[0]);
                }
                Type typeB2 = o.b(type, clsA4, Map.class);
                if (!(typeB2 instanceof ParameterizedType)) {
                    throw a(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType2 = (ParameterizedType) typeB2;
                Type typeA2 = o.a(0, parameterizedType2);
                if (String.class != typeA2) {
                    throw a(i, "@HeaderMap keys must be of type String: " + typeA2, new Object[0]);
                }
                return new i.e(this.f7909a.c(o.a(1, parameterizedType2), annotationArr));
            }
            if (annotation instanceof e.b.c) {
                if (!this.o) {
                    throw a(i, "@Field parameters can only be used with form encoding.", new Object[0]);
                }
                e.b.c cVar = (e.b.c) annotation;
                String strA4 = cVar.a();
                boolean zB2 = cVar.b();
                this.g = true;
                Class<?> clsA5 = o.a(type);
                if (Iterable.class.isAssignableFrom(clsA5)) {
                    if (!(type instanceof ParameterizedType)) {
                        throw a(i, clsA5.getSimpleName() + " must include generic type (e.g., " + clsA5.getSimpleName() + "<String>)", new Object[0]);
                    }
                    return new i.b(strA4, this.f7909a.c(o.a(0, (ParameterizedType) type), annotationArr), zB2).a();
                }
                if (clsA5.isArray()) {
                    return new i.b(strA4, this.f7909a.c(n.a(clsA5.getComponentType()), annotationArr), zB2).b();
                }
                return new i.b(strA4, this.f7909a.c(type, annotationArr), zB2);
            }
            if (annotation instanceof e.b.d) {
                if (!this.o) {
                    throw a(i, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                }
                Class<?> clsA6 = o.a(type);
                if (!Map.class.isAssignableFrom(clsA6)) {
                    throw a(i, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                Type typeB3 = o.b(type, clsA6, Map.class);
                if (!(typeB3 instanceof ParameterizedType)) {
                    throw a(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType3 = (ParameterizedType) typeB3;
                Type typeA3 = o.a(0, parameterizedType3);
                if (String.class != typeA3) {
                    throw a(i, "@FieldMap keys must be of type String: " + typeA3, new Object[0]);
                }
                e<T, String> eVarC = this.f7909a.c(o.a(1, parameterizedType3), annotationArr);
                this.g = true;
                return new i.c(eVarC, ((e.b.d) annotation).a());
            }
            if (annotation instanceof q) {
                if (!this.p) {
                    throw a(i, "@Part parameters can only be used with multipart encoding.", new Object[0]);
                }
                q qVar = (q) annotation;
                this.h = true;
                String strA5 = qVar.a();
                Class<?> clsA7 = o.a(type);
                if (strA5.isEmpty()) {
                    if (Iterable.class.isAssignableFrom(clsA7)) {
                        if (!(type instanceof ParameterizedType)) {
                            throw a(i, clsA7.getSimpleName() + " must include generic type (e.g., " + clsA7.getSimpleName() + "<String>)", new Object[0]);
                        }
                        if (!w.b.class.isAssignableFrom(o.a(o.a(0, (ParameterizedType) type)))) {
                            throw a(i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                        }
                        return i.k.f7876a.a();
                    }
                    if (clsA7.isArray()) {
                        if (!w.b.class.isAssignableFrom(clsA7.getComponentType())) {
                            throw a(i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                        }
                        return i.k.f7876a.b();
                    }
                    if (w.b.class.isAssignableFrom(clsA7)) {
                        return i.k.f7876a;
                    }
                    throw a(i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                }
                s sVarA = s.a("Content-Disposition", "form-data; name=\"" + strA5 + "\"", "Content-Transfer-Encoding", qVar.b());
                if (Iterable.class.isAssignableFrom(clsA7)) {
                    if (!(type instanceof ParameterizedType)) {
                        throw a(i, clsA7.getSimpleName() + " must include generic type (e.g., " + clsA7.getSimpleName() + "<String>)", new Object[0]);
                    }
                    Type typeA4 = o.a(0, (ParameterizedType) type);
                    if (w.b.class.isAssignableFrom(o.a(typeA4))) {
                        throw a(i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                    return new i.f(sVarA, this.f7909a.a(typeA4, annotationArr, this.f7911c)).a();
                }
                if (clsA7.isArray()) {
                    Class<?> clsA8 = n.a(clsA7.getComponentType());
                    if (w.b.class.isAssignableFrom(clsA8)) {
                        throw a(i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                    return new i.f(sVarA, this.f7909a.a(clsA8, annotationArr, this.f7911c)).b();
                }
                if (w.b.class.isAssignableFrom(clsA7)) {
                    throw a(i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                }
                return new i.f(sVarA, this.f7909a.a(type, annotationArr, this.f7911c));
            }
            if (annotation instanceof r) {
                if (!this.p) {
                    throw a(i, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                }
                this.h = true;
                Class<?> clsA9 = o.a(type);
                if (!Map.class.isAssignableFrom(clsA9)) {
                    throw a(i, "@PartMap parameter type must be Map.", new Object[0]);
                }
                Type typeB4 = o.b(type, clsA9, Map.class);
                if (!(typeB4 instanceof ParameterizedType)) {
                    throw a(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType4 = (ParameterizedType) typeB4;
                Type typeA5 = o.a(0, parameterizedType4);
                if (String.class != typeA5) {
                    throw a(i, "@PartMap keys must be of type String: " + typeA5, new Object[0]);
                }
                Type typeA6 = o.a(1, parameterizedType4);
                if (w.b.class.isAssignableFrom(o.a(typeA6))) {
                    throw a(i, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                }
                return new i.g(this.f7909a.a(typeA6, annotationArr, this.f7911c), ((r) annotation).a());
            }
            if (!(annotation instanceof e.b.a)) {
                return null;
            }
            if (this.o || this.p) {
                throw a(i, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
            }
            if (this.i) {
                throw a(i, "Multiple @Body method annotations found.", new Object[0]);
            }
            try {
                e<T, ab> eVarA = this.f7909a.a(type, annotationArr, this.f7911c);
                this.i = true;
                return new i.a(eVarA);
            } catch (RuntimeException e2) {
                throw a(e2, i, "Unable to create @Body converter for %s", type);
            }
        }

        private void a(int i, String str) {
            if (!n.f7905b.matcher(str).matches()) {
                throw a(i, "@Path parameter name must match %s. Found: %s", n.f7904a.pattern(), str);
            }
            if (!this.t.contains(str)) {
                throw a(i, "URL \"%s\" does not contain \"{%s}\".", this.q, str);
            }
        }

        private e<ad, T> c() {
            try {
                return this.f7909a.b(this.f, this.f7910b.getAnnotations());
            } catch (RuntimeException e2) {
                throw a(e2, "Unable to create converter for %s", this.f);
            }
        }

        private RuntimeException a(String str, Object... objArr) {
            return a((Throwable) null, str, objArr);
        }

        private RuntimeException a(Throwable th, String str, Object... objArr) {
            return new IllegalArgumentException(String.format(str, objArr) + "\n    for method " + this.f7910b.getDeclaringClass().getSimpleName() + "." + this.f7910b.getName(), th);
        }

        private RuntimeException a(Throwable th, int i, String str, Object... objArr) {
            return a(th, str + " (parameter #" + (i + 1) + ")", objArr);
        }

        private RuntimeException a(int i, String str, Object... objArr) {
            return a(str + " (parameter #" + (i + 1) + ")", objArr);
        }
    }

    static Set<String> a(String str) {
        Matcher matcher = f7904a.matcher(str);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (matcher.find()) {
            linkedHashSet.add(matcher.group(1));
        }
        return linkedHashSet;
    }

    static Class<?> a(Class<?> cls) {
        return Boolean.TYPE == cls ? Boolean.class : Byte.TYPE == cls ? Byte.class : Character.TYPE == cls ? Character.class : Double.TYPE == cls ? Double.class : Float.TYPE == cls ? Float.class : Integer.TYPE == cls ? Integer.class : Long.TYPE == cls ? Long.class : Short.TYPE == cls ? Short.class : cls;
    }
}
