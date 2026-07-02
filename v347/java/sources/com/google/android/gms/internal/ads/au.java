package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class au extends ak {
    protected bbl g;
    private bbu h;
    private bbc i;
    private bbe j;
    private final asb k;
    private final qd l;
    private boolean m;

    au(Context context, ij ijVar, bbu bbuVar, ap apVar, asb asbVar, qd qdVar) {
        super(context, ijVar, apVar);
        this.h = bbuVar;
        this.j = ijVar.f5119c;
        this.k = asbVar;
        this.l = qdVar;
    }

    @Override // com.google.android.gms.internal.ads.ak
    protected final ii a(int i) {
        String strSubstring;
        int i2;
        zzaef zzaefVar = this.e.f5117a;
        zzjj zzjjVar = zzaefVar.f5760c;
        qd qdVar = this.l;
        List<String> list = this.f.f5764c;
        List<String> list2 = this.f.e;
        List<String> list3 = this.f.i;
        int i3 = this.f.k;
        long j = this.f.j;
        String str = zzaefVar.i;
        boolean z = this.f.g;
        bbd bbdVar = this.g != null ? this.g.f4764b : null;
        bbx bbxVar = this.g != null ? this.g.f4765c : null;
        String name = this.g != null ? this.g.f4766d : AdMobAdapter.class.getName();
        bbe bbeVar = this.j;
        bbh bbhVar = this.g != null ? this.g.e : null;
        long j2 = this.f.h;
        zzjn zzjnVar = this.e.f5120d;
        long j3 = this.f.f;
        long j4 = this.e.f;
        long j5 = this.f.m;
        String str2 = this.f.n;
        JSONObject jSONObject = this.e.h;
        zzaig zzaigVar = this.f.A;
        List<String> list4 = this.f.B;
        List<String> list5 = this.f.C;
        boolean z2 = this.j != null ? this.j.o : false;
        zzael zzaelVar = this.f.E;
        if (this.i != null) {
            List<bbl> listB = this.i.b();
            if (listB == null) {
                strSubstring = "".toString();
            } else {
                String string = "";
                for (bbl bblVar : listB) {
                    if (bblVar != null && bblVar.f4764b != null && !TextUtils.isEmpty(bblVar.f4764b.f4744d)) {
                        String strValueOf = String.valueOf(string);
                        String str3 = bblVar.f4764b.f4744d;
                        switch (bblVar.f4763a) {
                            case -1:
                                i2 = 4;
                                break;
                            case 0:
                                i2 = 0;
                                break;
                            case 1:
                                i2 = 1;
                                break;
                            case 2:
                            default:
                                i2 = 6;
                                break;
                            case 3:
                                i2 = 2;
                                break;
                            case 4:
                                i2 = 3;
                                break;
                            case 5:
                                i2 = 5;
                                break;
                        }
                        String string2 = new StringBuilder(String.valueOf(str3).length() + 33).append(str3).append(".").append(i2).append(".").append(bblVar.g).toString();
                        string = new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(string2).length()).append(strValueOf).append(string2).append("_").toString();
                    }
                }
                strSubstring = string.substring(0, Math.max(0, string.length() - 1));
            }
        } else {
            strSubstring = null;
        }
        return new ii(zzjjVar, qdVar, list, i, list2, list3, i3, j, str, z, bbdVar, bbxVar, name, bbeVar, bbhVar, j2, zzjnVar, j3, j4, j5, str2, jSONObject, null, zzaigVar, list4, list5, z2, zzaelVar, strSubstring, this.f.H, this.f.L, this.e.i, this.f.O, this.e.j, this.f.Q, this.f.R, this.f.S, this.f.T);
    }

    @Override // com.google.android.gms.internal.ads.ak
    protected final void a(long j) throws an {
        Bundle bundle;
        synchronized (this.f4108d) {
            this.i = this.j.m != -1 ? new bbo(this.f4106b, this.e.f5117a, this.h, this.j, this.f.s, this.f.z, this.f.J, j, ((Long) aoo.f().a(aro.bB)).longValue(), 2, this.e.j) : new bbr(this.f4106b, this.e.f5117a, this.h, this.j, this.f.s, this.f.z, this.f.J, j, ((Long) aoo.f().a(aro.bB)).longValue(), this.k, this.e.j);
        }
        ArrayList arrayList = new ArrayList(this.j.f4745a);
        boolean z = false;
        Bundle bundle2 = this.e.f5117a.f5760c.m;
        if (bundle2 != null && (bundle = bundle2.getBundle("com.google.ads.mediation.admob.AdMobAdapter")) != null) {
            z = bundle.getBoolean("_skipMediation");
        }
        if (z) {
            ListIterator listIterator = arrayList.listIterator();
            while (listIterator.hasNext()) {
                if (!((bbd) listIterator.next()).f4743c.contains("com.google.ads.mediation.admob.AdMobAdapter")) {
                    listIterator.remove();
                }
            }
        }
        this.g = this.i.a(arrayList);
        switch (this.g.f4763a) {
            case 0:
                if (this.g.f4764b == null || this.g.f4764b.o == null) {
                    return;
                }
                CountDownLatch countDownLatch = new CountDownLatch(1);
                jm.f5184a.post(new av(this, countDownLatch));
                try {
                    countDownLatch.await(10L, TimeUnit.SECONDS);
                    synchronized (this.f4108d) {
                        if (!this.m) {
                            throw new an("View could not be prepared", 0);
                        }
                        if (this.l.A()) {
                            throw new an("Assets not loaded, web view is destroyed", 0);
                        }
                    }
                    return;
                } catch (InterruptedException e) {
                    String strValueOf = String.valueOf(e);
                    throw new an(new StringBuilder(String.valueOf(strValueOf).length() + 38).append("Interrupted while waiting for latch : ").append(strValueOf).toString(), 0);
                }
            case 1:
                throw new an("No fill from any mediation ad networks.", 3);
            default:
                throw new an(new StringBuilder(40).append("Unexpected mediation result: ").append(this.g.f4763a).toString(), 0);
        }
    }

    @Override // com.google.android.gms.internal.ads.ak, com.google.android.gms.internal.ads.iy
    public final void b_() {
        synchronized (this.f4108d) {
            super.b_();
            if (this.i != null) {
                this.i.a();
            }
        }
    }
}
