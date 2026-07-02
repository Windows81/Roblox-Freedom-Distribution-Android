package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ay implements Callable<ii> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f4598a = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f4599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final kw f4600c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.ad f4601d;
    private final agv e;
    private final bq f;
    private final ij h;
    private final asb i;
    private JSONObject m;
    private final Object g = new Object();
    private boolean j = false;
    private int k = -2;
    private List<String> l = null;
    private String n = null;
    private String o = null;

    public ay(Context context, com.google.android.gms.ads.internal.ad adVar, kw kwVar, agv agvVar, ij ijVar, asb asbVar) {
        this.f4599b = context;
        this.f4601d = adVar;
        this.f4600c = kwVar;
        this.h = ijVar;
        this.e = agvVar;
        this.i = asbVar;
        this.f = adVar.I();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003f A[Catch: CancellationException -> 0x018d, ExecutionException -> 0x01a5, TimeoutException -> 0x020b, Exception -> 0x0212, InterruptedException -> 0x021a, JSONException -> 0x021d, TryCatch #2 {InterruptedException -> 0x021a, CancellationException -> 0x018d, ExecutionException -> 0x01a5, TimeoutException -> 0x020b, JSONException -> 0x021d, Exception -> 0x0212, blocks: (B:3:0x0002, B:5:0x000e, B:7:0x002a, B:9:0x0032, B:11:0x0039, B:14:0x0043, B:16:0x005c, B:17:0x006d, B:19:0x0075, B:20:0x007b, B:43:0x00e8, B:45:0x00f6, B:46:0x00ff, B:48:0x0107, B:49:0x0110, B:51:0x0118, B:24:0x0084, B:79:0x01a7, B:84:0x01b9, B:29:0x008f, B:31:0x0093, B:32:0x00a3, B:89:0x0206, B:85:0x01f0, B:86:0x01f7, B:88:0x01fd, B:54:0x0128, B:56:0x0130, B:57:0x013c, B:59:0x0144, B:61:0x0163, B:62:0x016b, B:64:0x017d, B:65:0x0181, B:67:0x0187, B:76:0x01a1, B:36:0x00b5, B:38:0x00bd, B:39:0x00c4, B:41:0x00d0, B:42:0x00d7, B:13:0x003f), top: B:99:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005c A[Catch: CancellationException -> 0x018d, ExecutionException -> 0x01a5, TimeoutException -> 0x020b, Exception -> 0x0212, InterruptedException -> 0x021a, JSONException -> 0x021d, TryCatch #2 {InterruptedException -> 0x021a, CancellationException -> 0x018d, ExecutionException -> 0x01a5, TimeoutException -> 0x020b, JSONException -> 0x021d, Exception -> 0x0212, blocks: (B:3:0x0002, B:5:0x000e, B:7:0x002a, B:9:0x0032, B:11:0x0039, B:14:0x0043, B:16:0x005c, B:17:0x006d, B:19:0x0075, B:20:0x007b, B:43:0x00e8, B:45:0x00f6, B:46:0x00ff, B:48:0x0107, B:49:0x0110, B:51:0x0118, B:24:0x0084, B:79:0x01a7, B:84:0x01b9, B:29:0x008f, B:31:0x0093, B:32:0x00a3, B:89:0x0206, B:85:0x01f0, B:86:0x01f7, B:88:0x01fd, B:54:0x0128, B:56:0x0130, B:57:0x013c, B:59:0x0144, B:61:0x0163, B:62:0x016b, B:64:0x017d, B:65:0x0181, B:67:0x0187, B:76:0x01a1, B:36:0x00b5, B:38:0x00bd, B:39:0x00c4, B:41:0x00d0, B:42:0x00d7, B:13:0x003f), top: B:99:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0197  */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.ads.ii call() {
        /*
            Method dump skipped, instruction units count: 544
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ay.call():com.google.android.gms.internal.ads.ii");
    }

    private final ii a(ath athVar, boolean z) {
        int i;
        synchronized (this.g) {
            i = this.k;
            if (athVar == null && this.k == -2) {
                i = 0;
            }
        }
        return new ii(this.h.f5117a.f5760c, null, this.h.f5118b.f5764c, i, this.h.f5118b.e, this.l, this.h.f5118b.k, this.h.f5118b.j, this.h.f5117a.i, false, null, null, null, null, null, 0L, this.h.f5120d, this.h.f5118b.f, this.h.f, this.h.g, this.h.f5118b.n, this.m, i != -2 ? null : athVar, null, null, null, this.h.f5118b.D, this.h.f5118b.E, null, this.h.f5118b.H, this.n, this.h.i, this.h.f5118b.O, this.h.j, z, this.h.f5118b.R, this.h.f5118b.S, this.o);
    }

    private final nd<ass> a(JSONObject jSONObject, boolean z, boolean z2) throws JSONException {
        String string = z ? jSONObject.getString("url") : jSONObject.optString("url");
        double dOptDouble = jSONObject.optDouble("scale", 1.0d);
        boolean zOptBoolean = jSONObject.optBoolean("is_transparent", true);
        if (!TextUtils.isEmpty(string)) {
            return z2 ? ms.a(new ass(null, Uri.parse(string), dOptDouble)) : this.f4600c.a(string, new bf(this, z, dOptDouble, zOptBoolean, string));
        }
        a(0, z);
        return ms.a((Object) null);
    }

    static qd a(nd<qd> ndVar) {
        try {
            return ndVar.get(((Integer) aoo.f().a(aro.cc)).intValue(), TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            jd.c("InterruptedException occurred while waiting for video to load", e);
            Thread.currentThread().interrupt();
            return null;
        } catch (CancellationException e2) {
            e = e2;
            jd.c("Exception occurred while waiting for video to load", e);
            return null;
        } catch (ExecutionException e3) {
            e = e3;
            jd.c("Exception occurred while waiting for video to load", e);
            return null;
        } catch (TimeoutException e4) {
            e = e4;
            jd.c("Exception occurred while waiting for video to load", e);
            return null;
        }
    }

    private final void a(int i) {
        synchronized (this.g) {
            this.j = true;
            this.k = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(auy auyVar, String str) {
        try {
            avj avjVarB = this.f4601d.b(auyVar.l());
            if (avjVarB != null) {
                avjVarB.a(auyVar, str);
            }
        } catch (RemoteException e) {
            jd.c(new StringBuilder(String.valueOf(str).length() + 40).append("Failed to call onCustomClick for asset ").append(str).append(".").toString(), e);
        }
    }

    private static qd b(nd<qd> ndVar) {
        try {
            return ndVar.get(((Integer) aoo.f().a(aro.cd)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            mj.c("", e);
            Thread.currentThread().interrupt();
            return null;
        } catch (CancellationException e2) {
            e = e2;
            mj.c("", e);
            return null;
        } catch (ExecutionException e3) {
            e = e3;
            mj.c("", e);
            return null;
        } catch (TimeoutException e4) {
            e = e4;
            mj.c("", e);
            return null;
        }
    }

    private static Integer b(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <V> List<V> b(List<nd<V>> list) throws ExecutionException, InterruptedException {
        ArrayList arrayList = new ArrayList();
        Iterator<nd<V>> it = list.iterator();
        while (it.hasNext()) {
            V v = it.next().get();
            if (v != null) {
                arrayList.add(v);
            }
        }
        return arrayList;
    }

    private final boolean b() {
        boolean z;
        synchronized (this.g) {
            z = this.j;
        }
        return z;
    }

    public final nd<aso> a(JSONObject jSONObject) throws JSONException {
        List<nd<ass>> listA;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("attribution");
        if (jSONObjectOptJSONObject == null) {
            return ms.a((Object) null);
        }
        String strOptString = jSONObjectOptJSONObject.optString("text");
        int iOptInt = jSONObjectOptJSONObject.optInt("text_size", -1);
        Integer numB = b(jSONObjectOptJSONObject, "text_color");
        Integer numB2 = b(jSONObjectOptJSONObject, "bg_color");
        int iOptInt2 = jSONObjectOptJSONObject.optInt("animation_ms", 1000);
        int iOptInt3 = jSONObjectOptJSONObject.optInt("presentation_ms", 4000);
        int i = (this.h.f5117a.y == null || this.h.f5117a.y.f5812a < 2) ? 1 : this.h.f5117a.y.e;
        boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("allow_pub_rendering");
        ArrayList arrayList = new ArrayList();
        if (jSONObjectOptJSONObject.optJSONArray("images") != null) {
            listA = a(jSONObjectOptJSONObject, "images", false, false, true);
        } else {
            arrayList.add(a(jSONObjectOptJSONObject, "image", false, false));
            listA = arrayList;
        }
        no noVar = new no();
        int size = listA.size();
        AtomicInteger atomicInteger = new AtomicInteger(0);
        Iterator<nd<ass>> it = listA.iterator();
        while (it.hasNext()) {
            it.next().a(new bg(atomicInteger, size, noVar, listA), jk.f5180a);
        }
        return ms.a(noVar, new be(this, strOptString, numB2, numB, iOptInt, iOptInt3, iOptInt2, i, zOptBoolean), jk.f5180a);
    }

    public final nd<qd> a(JSONObject jSONObject, String str) throws JSONException {
        final JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject == null) {
            return ms.a((Object) null);
        }
        if (TextUtils.isEmpty(jSONObjectOptJSONObject.optString("vast_xml"))) {
            jd.e("Required field 'vast_xml' is missing");
            return ms.a((Object) null);
        }
        final bi biVar = new bi(this.f4599b, this.e, this.h, this.i, this.f4601d);
        final no noVar = new no();
        nj.f5346a.execute(new Runnable(biVar, jSONObjectOptJSONObject, noVar) { // from class: com.google.android.gms.internal.ads.bj

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final bi f4852a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final JSONObject f4853b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final no f4854c;

            {
                this.f4852a = biVar;
                this.f4853b = jSONObjectOptJSONObject;
                this.f4854c = noVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4852a.a(this.f4853b, this.f4854c);
            }
        });
        return noVar;
    }

    public final nd<ass> a(JSONObject jSONObject, String str, boolean z, boolean z2) throws JSONException {
        JSONObject jSONObject2 = z ? jSONObject.getJSONObject(str) : jSONObject.optJSONObject(str);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return a(jSONObject2, z, z2);
    }

    public final List<nd<ass>> a(JSONObject jSONObject, String str, boolean z, boolean z2, boolean z3) throws JSONException {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
            a(0, false);
            return arrayList;
        }
        int length = z3 ? jSONArrayOptJSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            arrayList.add(a(jSONObject2, false, z2));
        }
        return arrayList;
    }

    public final Future<ass> a(JSONObject jSONObject, String str, boolean z) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        boolean zOptBoolean = jSONObject2.optBoolean("require", true);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return a(jSONObject2, zOptBoolean, z);
    }

    public final void a(int i, boolean z) {
        if (z) {
            a(i);
        }
    }

    final /* synthetic */ void a(final no noVar, String str) {
        try {
            com.google.android.gms.ads.internal.aw.f();
            final qd qdVarA = qk.a(this.f4599b, rr.a(), "native-omid", false, false, this.e, this.h.f5117a.k, this.i, null, this.f4601d.h(), this.h.i);
            qdVarA.v().a(new rm(noVar, qdVarA) { // from class: com.google.android.gms.internal.ads.ba

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final no f4702a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final qd f4703b;

                {
                    this.f4702a = noVar;
                    this.f4703b = qdVarA;
                }

                @Override // com.google.android.gms.internal.ads.rm
                public final void a(boolean z) {
                    this.f4702a.b(this.f4703b);
                }
            });
            qdVarA.loadData(str, "text/html", Constants.UTF8_NAME);
        } catch (Exception e) {
            noVar.b(null);
            mj.c("", e);
        }
    }
}
