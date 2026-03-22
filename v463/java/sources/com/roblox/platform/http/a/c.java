package com.roblox.platform.http.a;

import android.os.Handler;
import android.os.Looper;
import e.c;
import e.m;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Executor f7692a;

    public static c a() {
        return new c(new a());
    }

    private c(Executor executor) {
        this.f7692a = executor;
    }

    @Override // e.c.a
    public e.c<?> a(Type type, Annotation[] annotationArr, m mVar) {
        if (a(type) != e.b.class) {
            return null;
        }
        final Type typeA = a(0, (ParameterizedType) type);
        return new e.c<e.b<?>>() { // from class: com.roblox.platform.http.a.c.1
            @Override // e.c
            public Type a() {
                return typeA;
            }

            @Override // e.c
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public <R> e.b<R> b(e.b<R> bVar) {
                return new b(c.this.f7692a, bVar);
            }
        };
    }

    private static class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f7695a;

        private a() {
            this.f7695a = new Handler(Looper.getMainLooper());
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f7695a.post(runnable);
        }
    }
}
