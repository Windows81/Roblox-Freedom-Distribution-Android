package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.b.a.i;
import com.google.ads.interactivemedia.v3.a.w;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: classes.dex */
final class l<T> extends w<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.ads.interactivemedia.v3.a.f f2636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w<T> f2637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Type f2638c;

    l(com.google.ads.interactivemedia.v3.a.f fVar, w<T> wVar, Type type) {
        this.f2636a = fVar;
        this.f2637b = wVar;
        this.f2638c = type;
    }

    @Override // com.google.ads.interactivemedia.v3.a.w
    public T read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
        return this.f2637b.read(aVar);
    }

    @Override // com.google.ads.interactivemedia.v3.a.w
    public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, T t) throws IOException {
        w<T> wVarA = this.f2637b;
        Type typeA = a(this.f2638c, t);
        if (typeA != this.f2638c) {
            wVarA = this.f2636a.a((com.google.ads.interactivemedia.v3.a.c.a) com.google.ads.interactivemedia.v3.a.c.a.a(typeA));
            if ((wVarA instanceof i.a) && !(this.f2637b instanceof i.a)) {
                wVarA = this.f2637b;
            }
        }
        wVarA.write(cVar, t);
    }

    private Type a(Type type, Object obj) {
        if (obj == null) {
            return type;
        }
        if (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) {
            return obj.getClass();
        }
        return type;
    }
}
