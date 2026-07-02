package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public abstract class ayw<ReferenceT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, CopyOnWriteArrayList<com.google.android.gms.ads.internal.gmsg.ae<? super ReferenceT>>> f4642a = new HashMap();

    private final synchronized void a(String str, final Map<String, String> map) {
        if (jd.a(2)) {
            String strValueOf = String.valueOf(str);
            jd.a(strValueOf.length() != 0 ? "Received GMSG: ".concat(strValueOf) : new String("Received GMSG: "));
            for (String str2 : map.keySet()) {
                String str3 = map.get(str2);
                jd.a(new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(str3).length()).append("  ").append(str2).append(": ").append(str3).toString());
            }
        }
        CopyOnWriteArrayList<com.google.android.gms.ads.internal.gmsg.ae<? super ReferenceT>> copyOnWriteArrayList = this.f4642a.get(str);
        if (copyOnWriteArrayList != null) {
            for (final com.google.android.gms.ads.internal.gmsg.ae<? super ReferenceT> aeVar : copyOnWriteArrayList) {
                nj.f5346a.execute(new Runnable(this, aeVar, map) { // from class: com.google.android.gms.internal.ads.ayx

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    private final ayw f4643a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    private final com.google.android.gms.ads.internal.gmsg.ae f4644b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    private final Map f4645c;

                    {
                        this.f4643a = this;
                        this.f4644b = aeVar;
                        this.f4645c = map;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        ayw aywVar = this.f4643a;
                        this.f4644b.zza(aywVar.o(), this.f4645c);
                    }
                });
            }
        }
    }

    public final synchronized void a(String str, com.google.android.gms.ads.internal.gmsg.ae<? super ReferenceT> aeVar) {
        CopyOnWriteArrayList<com.google.android.gms.ads.internal.gmsg.ae<? super ReferenceT>> copyOnWriteArrayList = this.f4642a.get(str);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f4642a.put(str, copyOnWriteArrayList);
        }
        copyOnWriteArrayList.add(aeVar);
    }

    public final synchronized void a(String str, com.google.android.gms.common.util.o<com.google.android.gms.ads.internal.gmsg.ae<? super ReferenceT>> oVar) {
        CopyOnWriteArrayList<com.google.android.gms.ads.internal.gmsg.ae<? super ReferenceT>> copyOnWriteArrayList = this.f4642a.get(str);
        if (copyOnWriteArrayList != null) {
            ArrayList arrayList = new ArrayList();
            for (com.google.android.gms.ads.internal.gmsg.ae<? super ReferenceT> aeVar : copyOnWriteArrayList) {
                if (oVar.a(aeVar)) {
                    arrayList.add(aeVar);
                }
            }
            copyOnWriteArrayList.removeAll(arrayList);
        }
    }

    public final boolean a(Uri uri) {
        if (!"gmsg".equalsIgnoreCase(uri.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            return false;
        }
        String path = uri.getPath();
        com.google.android.gms.ads.internal.aw.e();
        a(path, jm.a(uri));
        return true;
    }

    public final synchronized void b(String str, com.google.android.gms.ads.internal.gmsg.ae<? super ReferenceT> aeVar) {
        CopyOnWriteArrayList<com.google.android.gms.ads.internal.gmsg.ae<? super ReferenceT>> copyOnWriteArrayList = this.f4642a.get(str);
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.remove(aeVar);
        }
    }

    public synchronized void k() {
        this.f4642a.clear();
    }

    public abstract ReferenceT o();
}
