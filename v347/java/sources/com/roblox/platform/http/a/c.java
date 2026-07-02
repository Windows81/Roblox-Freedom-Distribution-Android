package com.roblox.platform.http.a;

import android.os.Handler;
import android.os.Looper;
import d.c;
import d.m;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class c extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Executor f8043a;

    public static c a() {
        return new c(new a());
    }

    private c(Executor executor) {
        this.f8043a = executor;
    }

    @Override // d.c.a
    public d.c<?> a(Type type, Annotation[] annotationArr, m mVar) {
        if (a(type) != d.b.class) {
            return null;
        }
        final Type typeA = a(0, (ParameterizedType) type);
        return new d.c<d.b<?>>() { // from class: com.roblox.platform.http.a.c.1
            @Override // d.c
            public Type a() {
                return typeA;
            }

            @Override // d.c
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public <R> d.b<R> b(d.b<R> bVar) {
                return new b(c.this.f8043a, bVar);
            }
        };
    }

    private static class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f8046a;

        private a() {
            this.f8046a = new Handler(Looper.getMainLooper());
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f8046a.post(runnable);
        }
    }
}
