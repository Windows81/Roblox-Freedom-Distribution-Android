package com.google.gson;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class v<T> {
    public abstract void a(com.google.gson.c.c cVar, T t) throws IOException;

    public abstract T b(com.google.gson.c.a aVar) throws IOException;

    public final v<T> a() {
        return new v<T>() { // from class: com.google.gson.v.1
            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, T t) throws IOException {
                if (t == null) {
                    cVar.f();
                } else {
                    v.this.a(cVar, t);
                }
            }

            @Override // com.google.gson.v
            public T b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                return (T) v.this.b(aVar);
            }
        };
    }

    public final l a(T t) {
        try {
            com.google.gson.internal.bind.d dVar = new com.google.gson.internal.bind.d();
            a(dVar, t);
            return dVar.a();
        } catch (IOException e2) {
            throw new m(e2);
        }
    }
}
