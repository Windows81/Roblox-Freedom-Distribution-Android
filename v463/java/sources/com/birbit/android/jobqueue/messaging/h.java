package com.birbit.android.jobqueue.messaging;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final AtomicInteger f3029d = new AtomicInteger(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f3031b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f3032c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c f3033e;

    public h(c cVar, String str) {
        this.f3033e = cVar;
        this.f3030a = str + "_" + f3029d.incrementAndGet();
    }

    b a() {
        b bVar = this.f3031b;
        com.birbit.android.jobqueue.log.a.a("[%s] remove message %s", this.f3030a, bVar);
        if (bVar != null) {
            this.f3031b = bVar.f3011b;
            if (this.f3032c == bVar) {
                this.f3032c = null;
            }
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void post(b bVar) {
        com.birbit.android.jobqueue.log.a.a("[%s] post message %s", this.f3030a, bVar);
        b bVar2 = this.f3032c;
        if (bVar2 == null) {
            this.f3031b = bVar;
            this.f3032c = bVar;
        } else {
            bVar2.f3011b = bVar;
            this.f3032c = bVar;
        }
    }

    protected void a(MessagePredicate messagePredicate) {
        b bVar = this.f3031b;
        b bVar2 = null;
        while (bVar != null) {
            if (messagePredicate.onMessage(bVar)) {
                b bVar3 = bVar.f3011b;
                a(bVar2, bVar);
                bVar = bVar3;
            } else {
                bVar2 = bVar;
                bVar = bVar.f3011b;
            }
        }
    }

    private void a(b bVar, b bVar2) {
        if (this.f3032c == bVar2) {
            this.f3032c = bVar;
        }
        if (bVar == null) {
            this.f3031b = bVar2.f3011b;
        } else {
            bVar.f3011b = bVar2.f3011b;
        }
        this.f3033e.a(bVar2);
    }

    public void clear() {
        while (true) {
            b bVar = this.f3031b;
            if (bVar != null) {
                this.f3031b = bVar.f3011b;
                this.f3033e.a(bVar);
            } else {
                this.f3032c = null;
                return;
            }
        }
    }
}
