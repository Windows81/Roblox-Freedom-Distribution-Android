package com.google.gson;

import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class k {
    public boolean h() {
        return this instanceof h;
    }

    public boolean i() {
        return this instanceof n;
    }

    public boolean j() {
        return this instanceof q;
    }

    public boolean k() {
        return this instanceof m;
    }

    public n l() {
        if (i()) {
            return (n) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public h m() {
        if (h()) {
            return (h) this;
        }
        throw new IllegalStateException("This is not a JSON Array.");
    }

    public q n() {
        if (j()) {
            return (q) this;
        }
        throw new IllegalStateException("This is not a JSON Primitive.");
    }

    public boolean g() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    Boolean o() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public Number b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public long e() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int f() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            com.google.gson.c.c cVar = new com.google.gson.c.c(stringWriter);
            cVar.b(true);
            com.google.gson.internal.i.a(this, cVar);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
