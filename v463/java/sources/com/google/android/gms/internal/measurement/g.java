package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.f;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class g<M extends f<M>, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Class<T> f4378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final boolean f4380c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4381d;

    private final Object a(c cVar) {
        Class componentType = this.f4380c ? this.f4378a.getComponentType() : this.f4378a;
        try {
            int i = this.f4381d;
            if (i == 10) {
                m mVar = (m) componentType.newInstance();
                cVar.a(mVar, this.f4379b >>> 3);
                return mVar;
            }
            if (i == 11) {
                m mVar2 = (m) componentType.newInstance();
                cVar.a(mVar2);
                return mVar2;
            }
            int i2 = this.f4381d;
            StringBuilder sb = new StringBuilder(24);
            sb.append("Unknown type ");
            sb.append(i2);
            throw new IllegalArgumentException(sb.toString());
        } catch (IOException e2) {
            throw new IllegalArgumentException("Error reading extension field", e2);
        } catch (IllegalAccessException e3) {
            String strValueOf = String.valueOf(componentType);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 33);
            sb2.append("Error creating instance of class ");
            sb2.append(strValueOf);
            throw new IllegalArgumentException(sb2.toString(), e3);
        } catch (InstantiationException e4) {
            String strValueOf2 = String.valueOf(componentType);
            StringBuilder sb3 = new StringBuilder(String.valueOf(strValueOf2).length() + 33);
            sb3.append("Error creating instance of class ");
            sb3.append(strValueOf2);
            throw new IllegalArgumentException(sb3.toString(), e4);
        }
    }

    protected final int a(Object obj) {
        int i = this.f4379b >>> 3;
        int i2 = this.f4381d;
        if (i2 == 10) {
            return (d.b(i) << 1) + ((m) obj).d();
        }
        if (i2 == 11) {
            return d.b(i, (m) obj);
        }
        int i3 = this.f4381d;
        StringBuilder sb = new StringBuilder(24);
        sb.append("Unknown type ");
        sb.append(i3);
        throw new IllegalArgumentException(sb.toString());
    }

    final T a(List<o> list) {
        if (list == null) {
            return null;
        }
        if (!this.f4380c) {
            if (list.isEmpty()) {
                return null;
            }
            return this.f4378a.cast(a(c.a(list.get(list.size() - 1).f4672b)));
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            o oVar = list.get(i);
            if (oVar.f4672b.length != 0) {
                arrayList.add(a(c.a(oVar.f4672b)));
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        Class<T> cls = this.f4378a;
        T tCast = cls.cast(Array.newInstance(cls.getComponentType(), size));
        for (int i2 = 0; i2 < size; i2++) {
            Array.set(tCast, i2, arrayList.get(i2));
        }
        return tCast;
    }

    protected final void a(Object obj, d dVar) {
        try {
            dVar.c(this.f4379b);
            int i = this.f4381d;
            if (i == 10) {
                int i2 = this.f4379b >>> 3;
                ((m) obj).a(dVar);
                dVar.c(i2, 4);
            } else {
                if (i == 11) {
                    dVar.a((m) obj);
                    return;
                }
                int i3 = this.f4381d;
                StringBuilder sb = new StringBuilder(24);
                sb.append("Unknown type ");
                sb.append(i3);
                throw new IllegalArgumentException(sb.toString());
            }
        } catch (IOException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f4381d == gVar.f4381d && this.f4378a == gVar.f4378a && this.f4379b == gVar.f4379b && this.f4380c == gVar.f4380c;
    }

    public final int hashCode() {
        return ((((((this.f4381d + 1147) * 31) + this.f4378a.hashCode()) * 31) + this.f4379b) * 31) + (this.f4380c ? 1 : 0);
    }
}
