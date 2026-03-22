package com.birbit.android.jobqueue.messaging;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f2991a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final c f2992b;

    a(c cVar) {
        this.f2992b = cVar;
    }

    Long a(long j, MessageQueue messageQueue) {
        com.birbit.android.jobqueue.log.a.a("flushing messages at time %s", Long.valueOf(j));
        while (true) {
            b bVar = this.f2991a;
            if (bVar == null || bVar.f3012c > j) {
                break;
            }
            b bVar2 = this.f2991a;
            this.f2991a = bVar2.f3011b;
            bVar2.f3011b = null;
            messageQueue.post(bVar2);
        }
        b bVar3 = this.f2991a;
        if (bVar3 == null) {
            return null;
        }
        com.birbit.android.jobqueue.log.a.a("returning next ready at %d ns", Long.valueOf(bVar3.f3012c - j));
        return Long.valueOf(this.f2991a.f3012c);
    }

    void a(b bVar, long j) {
        com.birbit.android.jobqueue.log.a.a("add delayed message %s at time %s", bVar, Long.valueOf(j));
        bVar.f3012c = j;
        b bVar2 = this.f2991a;
        if (bVar2 == null) {
            this.f2991a = bVar;
            return;
        }
        b bVar3 = null;
        while (bVar2 != null && bVar2.f3012c <= j) {
            bVar3 = bVar2;
            bVar2 = bVar2.f3011b;
        }
        if (bVar3 == null) {
            bVar.f3011b = this.f2991a;
            this.f2991a = bVar;
        } else {
            bVar3.f3011b = bVar;
            bVar.f3011b = bVar2;
        }
    }

    public void a(MessagePredicate messagePredicate) {
        b bVar = this.f2991a;
        b bVar2 = null;
        while (bVar != null) {
            boolean zOnMessage = messagePredicate.onMessage(bVar);
            b bVar3 = bVar.f3011b;
            if (zOnMessage) {
                if (bVar2 == null) {
                    this.f2991a = bVar.f3011b;
                } else {
                    bVar2.f3011b = bVar.f3011b;
                }
                this.f2992b.a(bVar);
            } else {
                bVar2 = bVar;
            }
            bVar = bVar3;
        }
    }
}
