package com.google.firebase.components;

import com.google.android.gms.common.internal.aa;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class n implements com.google.firebase.a.c, com.google.firebase.a.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, ConcurrentHashMap<com.google.firebase.a.b<Object>, Executor>> f5159a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Queue<com.google.firebase.a.a<?>> f5160b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f5161c;

    n(Executor executor) {
        this.f5161c = executor;
    }

    public void a(final com.google.firebase.a.a<?> aVar) {
        aa.a(aVar);
        synchronized (this) {
            if (this.f5160b != null) {
                this.f5160b.add(aVar);
                return;
            }
            for (final Map.Entry<com.google.firebase.a.b<Object>, Executor> entry : b(aVar)) {
                entry.getValue().execute(new Runnable(entry, aVar) { // from class: com.google.firebase.components.o

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    private final Map.Entry f5162a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    private final com.google.firebase.a.a f5163b;

                    {
                        this.f5162a = entry;
                        this.f5163b = aVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        ((com.google.firebase.a.b) this.f5162a.getKey()).a(this.f5163b);
                    }
                });
            }
        }
    }

    private synchronized Set<Map.Entry<com.google.firebase.a.b<Object>, Executor>> b(com.google.firebase.a.a<?> aVar) {
        ConcurrentHashMap<com.google.firebase.a.b<Object>, Executor> concurrentHashMap = this.f5159a.get(aVar.a());
        if (concurrentHashMap == null) {
            return Collections.emptySet();
        }
        return concurrentHashMap.entrySet();
    }

    public synchronized <T> void a(Class<T> cls, Executor executor, com.google.firebase.a.b<? super T> bVar) {
        aa.a(cls);
        aa.a(bVar);
        aa.a(executor);
        if (!this.f5159a.containsKey(cls)) {
            this.f5159a.put(cls, new ConcurrentHashMap<>());
        }
        this.f5159a.get(cls).put(bVar, executor);
    }

    @Override // com.google.firebase.a.d
    public <T> void a(Class<T> cls, com.google.firebase.a.b<? super T> bVar) {
        a(cls, this.f5161c, bVar);
    }

    final void a() {
        Queue<com.google.firebase.a.a<?>> queue;
        synchronized (this) {
            queue = null;
            if (this.f5160b != null) {
                Queue<com.google.firebase.a.a<?>> queue2 = this.f5160b;
                this.f5160b = null;
                queue = queue2;
            }
        }
        if (queue != null) {
            Iterator<com.google.firebase.a.a<?>> it = queue.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
        }
    }
}
