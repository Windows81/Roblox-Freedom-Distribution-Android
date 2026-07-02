package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class gy extends iy implements gx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ij f5067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f5068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<go> f5069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<gr> f5070d;
    private final HashSet<String> e;
    private final Object f;
    private final fq g;
    private final long h;

    public gy(Context context, ij ijVar, fq fqVar) {
        this(context, ijVar, fqVar, ((Long) aoo.f().a(aro.aE)).longValue());
    }

    private gy(Context context, ij ijVar, fq fqVar, long j) {
        this.f5069c = new ArrayList<>();
        this.f5070d = new ArrayList();
        this.e = new HashSet<>();
        this.f = new Object();
        this.f5068b = context;
        this.f5067a = ijVar;
        this.g = fqVar;
        this.h = j;
    }

    private final ii a(int i, String str, bbd bbdVar) {
        String strSubstring;
        int i2;
        zzjj zzjjVar = this.f5067a.f5117a.f5760c;
        List<String> list = this.f5067a.f5118b.f5764c;
        List<String> list2 = this.f5067a.f5118b.e;
        List<String> list3 = this.f5067a.f5118b.i;
        int i3 = this.f5067a.f5118b.k;
        long j = this.f5067a.f5118b.j;
        String str2 = this.f5067a.f5117a.i;
        boolean z = this.f5067a.f5118b.g;
        bbe bbeVar = this.f5067a.f5119c;
        long j2 = this.f5067a.f5118b.h;
        zzjn zzjnVar = this.f5067a.f5120d;
        long j3 = this.f5067a.f5118b.f;
        long j4 = this.f5067a.f;
        long j5 = this.f5067a.f5118b.m;
        String str3 = this.f5067a.f5118b.n;
        JSONObject jSONObject = this.f5067a.h;
        zzaig zzaigVar = this.f5067a.f5118b.A;
        List<String> list4 = this.f5067a.f5118b.B;
        List<String> list5 = this.f5067a.f5118b.C;
        boolean z2 = this.f5067a.f5118b.D;
        zzael zzaelVar = this.f5067a.f5118b.E;
        StringBuilder sb = new StringBuilder("");
        if (this.f5070d == null) {
            strSubstring = sb.toString();
        } else {
            for (gr grVar : this.f5070d) {
                if (grVar != null && !TextUtils.isEmpty(grVar.f5055a)) {
                    String str4 = grVar.f5055a;
                    switch (grVar.f5056b) {
                        case 3:
                            i2 = 1;
                            break;
                        case 4:
                            i2 = 2;
                            break;
                        case 5:
                            i2 = 4;
                            break;
                        case 6:
                            i2 = 0;
                            break;
                        case 7:
                            i2 = 3;
                            break;
                        default:
                            i2 = 6;
                            break;
                    }
                    sb.append(String.valueOf(new StringBuilder(String.valueOf(str4).length() + 33).append(str4).append(".").append(i2).append(".").append(grVar.f5057c).toString()).concat("_"));
                }
            }
            strSubstring = sb.substring(0, Math.max(0, sb.length() - 1));
        }
        return new ii(zzjjVar, null, list, i, list2, list3, i3, j, str2, z, bbdVar, null, str, bbeVar, null, j2, zzjnVar, j3, j4, j5, str3, jSONObject, null, zzaigVar, list4, list5, z2, zzaelVar, strSubstring, this.f5067a.f5118b.H, this.f5067a.f5118b.L, this.f5067a.i, this.f5067a.f5118b.O, this.f5067a.j, this.f5067a.f5118b.Q, this.f5067a.f5118b.R, this.f5067a.f5118b.S, this.f5067a.f5118b.T);
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        String string;
        for (bbd bbdVar : this.f5067a.f5119c.f4745a) {
            String str = bbdVar.k;
            for (String str2 : bbdVar.f4743c) {
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str2) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str2)) {
                    try {
                        string = new JSONObject(str).getString("class_name");
                    } catch (JSONException e) {
                        jd.b("Unable to determine custom event class name, skipping...", e);
                    }
                } else {
                    string = str2;
                }
                synchronized (this.f) {
                    hd hdVarA = this.g.a(string);
                    if (hdVarA == null || hdVarA.b() == null || hdVarA.a() == null) {
                        this.f5070d.add(new gt().b(bbdVar.f4744d).a(string).a(0L).a(7).a());
                    } else {
                        go goVar = new go(this.f5068b, string, str, bbdVar, this.f5067a, hdVarA, this, this.h);
                        goVar.a(this.g.a());
                        this.f5069c.add(goVar);
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList<go> arrayList = this.f5069c;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            go goVar2 = arrayList.get(i);
            i++;
            go goVar3 = goVar2;
            if (hashSet.add(goVar3.f5044a)) {
                goVar3.d();
            }
        }
        ArrayList<go> arrayList2 = this.f5069c;
        int size2 = arrayList2.size();
        int i2 = 0;
        while (i2 < size2) {
            int i3 = i2 + 1;
            go goVar4 = arrayList2.get(i2);
            try {
                try {
                    goVar4.d().get();
                    synchronized (this.f) {
                        if (!TextUtils.isEmpty(goVar4.f5044a)) {
                            this.f5070d.add(goVar4.e());
                        }
                    }
                    synchronized (this.f) {
                        if (this.e.contains(goVar4.f5044a)) {
                            final ii iiVarA = a(-2, goVar4.f5044a, goVar4.f());
                            ly.f5287a.post(new Runnable(this, iiVarA) { // from class: com.google.android.gms.internal.ads.gz

                                /* JADX INFO: renamed from: a, reason: collision with root package name */
                                private final gy f5071a;

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                private final ii f5072b;

                                {
                                    this.f5071a = this;
                                    this.f5072b = iiVarA;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f5071a.b(this.f5072b);
                                }
                            });
                            return;
                        }
                    }
                    i2 = i3;
                } catch (Throwable th) {
                    synchronized (this.f) {
                        if (!TextUtils.isEmpty(goVar4.f5044a)) {
                            this.f5070d.add(goVar4.e());
                        }
                        throw th;
                    }
                }
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                synchronized (this.f) {
                    if (!TextUtils.isEmpty(goVar4.f5044a)) {
                        this.f5070d.add(goVar4.e());
                    }
                    final ii iiVarA2 = a(3, null, null);
                    ly.f5287a.post(new Runnable(this, iiVarA2) { // from class: com.google.android.gms.internal.ads.ha

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        private final gy f5076a;

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        private final ii f5077b;

                        {
                            this.f5076a = this;
                            this.f5077b = iiVarA2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f5076a.a(this.f5077b);
                        }
                    });
                }
            } catch (Exception e3) {
                jd.c("Unable to resolve rewarded adapter.", e3);
                synchronized (this.f) {
                    if (!TextUtils.isEmpty(goVar4.f5044a)) {
                        this.f5070d.add(goVar4.e());
                    }
                    i2 = i3;
                }
            }
        }
        final ii iiVarA22 = a(3, null, null);
        ly.f5287a.post(new Runnable(this, iiVarA22) { // from class: com.google.android.gms.internal.ads.ha

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final gy f5076a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final ii f5077b;

            {
                this.f5076a = this;
                this.f5077b = iiVarA22;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5076a.a(this.f5077b);
            }
        });
    }

    final /* synthetic */ void a(ii iiVar) {
        this.g.b().b(iiVar);
    }

    @Override // com.google.android.gms.internal.ads.gx
    public final void a(String str) {
        synchronized (this.f) {
            this.e.add(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.gx
    public final void a(String str, int i) {
    }

    final /* synthetic */ void b(ii iiVar) {
        this.g.b().b(iiVar);
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void b_() {
    }
}
