package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class ajp implements axc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, List<avg<?>>> f4088a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ahn f4089b;

    ajp(ahn ahnVar) {
        this.f4089b = ahnVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized boolean b(avg<?> avgVar) {
        boolean z = false;
        synchronized (this) {
            String strE = avgVar.e();
            if (this.f4088a.containsKey(strE)) {
                List<avg<?>> arrayList = this.f4088a.get(strE);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                avgVar.b("waiting-for-response");
                arrayList.add(avgVar);
                this.f4088a.put(strE, arrayList);
                if (eb.f4947a) {
                    eb.b("Request for cacheKey=%s is in flight, putting on hold.", strE);
                }
                z = true;
            } else {
                this.f4088a.put(strE, null);
                avgVar.a((axc) this);
                if (eb.f4947a) {
                    eb.b("new request, sending to network %s", strE);
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.axc
    public final synchronized void a(avg<?> avgVar) {
        String strE = avgVar.e();
        List<avg<?>> listRemove = this.f4088a.remove(strE);
        if (listRemove != null && !listRemove.isEmpty()) {
            if (eb.f4947a) {
                eb.a("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(listRemove.size()), strE);
            }
            avg<?> avgVarRemove = listRemove.remove(0);
            this.f4088a.put(strE, listRemove);
            avgVarRemove.a((axc) this);
            try {
                this.f4089b.f4010c.put(avgVarRemove);
            } catch (InterruptedException e) {
                eb.c("Couldn't add request to queue. %s", e.toString());
                Thread.currentThread().interrupt();
                this.f4089b.a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.axc
    public final void a(avg<?> avgVar, bbg<?> bbgVar) {
        List<avg<?>> listRemove;
        if (bbgVar.f4750b == null || bbgVar.f4750b.a()) {
            a(avgVar);
            return;
        }
        String strE = avgVar.e();
        synchronized (this) {
            listRemove = this.f4088a.remove(strE);
        }
        if (listRemove != null) {
            if (eb.f4947a) {
                eb.a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(listRemove.size()), strE);
            }
            Iterator<avg<?>> it = listRemove.iterator();
            while (it.hasNext()) {
                this.f4089b.e.a(it.next(), bbgVar);
            }
        }
    }
}
