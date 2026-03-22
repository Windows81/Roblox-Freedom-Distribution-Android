package com.google.ads.interactivemedia.v3.a;

import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class l {
    public boolean g() {
        return this instanceof i;
    }

    public boolean h() {
        return this instanceof o;
    }

    public boolean i() {
        return this instanceof q;
    }

    public boolean j() {
        return this instanceof n;
    }

    public o k() {
        if (h()) {
            return (o) this;
        }
        String strValueOf = String.valueOf(this);
        throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 19).append("Not a JSON Object: ").append(strValueOf).toString());
    }

    public i l() {
        if (g()) {
            return (i) this;
        }
        throw new IllegalStateException("This is not a JSON Array.");
    }

    public q m() {
        if (i()) {
            return (q) this;
        }
        throw new IllegalStateException("This is not a JSON Primitive.");
    }

    public boolean f() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    Boolean n() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public Number a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public long d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int e() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            com.google.ads.interactivemedia.v3.a.d.c cVar = new com.google.ads.interactivemedia.v3.a.d.c(stringWriter);
            cVar.b(true);
            com.google.ads.interactivemedia.v3.a.b.j.a(this, cVar);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
