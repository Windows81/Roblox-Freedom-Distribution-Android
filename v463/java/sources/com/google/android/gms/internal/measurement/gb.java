package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class gb extends fy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected gu f4383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f4384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AppMeasurement.b f4385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<AppMeasurement.c> f4386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4387e;
    private final AtomicReference<String> f;

    protected gb(fc fcVar) {
        super(fcVar);
        this.f4386d = new CopyOnWriteArraySet();
        this.f4384b = true;
        this.f = new AtomicReference<>();
    }

    private final void a(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        Bundle bundle2;
        if (bundle == null) {
            bundle2 = new Bundle();
        } else {
            Bundle bundle3 = new Bundle(bundle);
            for (String str4 : bundle3.keySet()) {
                Object obj = bundle3.get(str4);
                if (obj instanceof Bundle) {
                    bundle3.putBundle(str4, new Bundle((Bundle) obj));
                } else {
                    int i = 0;
                    if (obj instanceof Parcelable[]) {
                        Parcelable[] parcelableArr = (Parcelable[]) obj;
                        while (i < parcelableArr.length) {
                            if (parcelableArr[i] instanceof Bundle) {
                                parcelableArr[i] = new Bundle((Bundle) parcelableArr[i]);
                            }
                            i++;
                        }
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList = (ArrayList) obj;
                        while (i < arrayList.size()) {
                            Object obj2 = arrayList.get(i);
                            if (obj2 instanceof Bundle) {
                                arrayList.set(i, new Bundle((Bundle) obj2));
                            }
                            i++;
                        }
                    }
                }
            }
            bundle2 = bundle3;
        }
        p().a(new gt(this, str, str2, j, bundle2, z, z2, z3, str3));
    }

    private final void a(String str, String str2, long j, Object obj) {
        p().a(new gd(this, str, str2, obj, j));
    }

    private final void a(String str, String str2, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        a(str, str2, j().a(), bundle, true, z2, z3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, String str2, Object obj, long j) {
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(str2);
        c();
        F();
        if (!this.q.x()) {
            q().B().a("User property not set since app measurement is disabled");
        } else if (this.q.B()) {
            q().B().a("Setting user property (FE)", m().a(str2), obj);
            h().a(new zzjx(str2, j, obj, str));
        }
    }

    private final List<AppMeasurement.ConditionalUserProperty> b(String str, String str2, String str3) {
        dz dzVarV;
        String str4;
        if (p().w()) {
            dzVarV = q().v();
            str4 = "Cannot get conditional user properties from analytics worker thread";
        } else {
            p();
            if (!ex.v()) {
                AtomicReference atomicReference = new AtomicReference();
                synchronized (atomicReference) {
                    this.q.p().a(new gk(this, atomicReference, str, str2, str3));
                    try {
                        atomicReference.wait(5000L);
                    } catch (InterruptedException e2) {
                        q().y().a("Interrupted waiting for get conditional user properties", str, e2);
                    }
                }
                List<zzed> list = (List) atomicReference.get();
                if (list == null) {
                    q().y().a("Timed out waiting for get conditional user properties", str);
                    return Collections.emptyList();
                }
                ArrayList arrayList = new ArrayList(list.size());
                for (zzed zzedVar : list) {
                    AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
                    conditionalUserProperty.mAppId = str;
                    conditionalUserProperty.mOrigin = str2;
                    conditionalUserProperty.mCreationTimestamp = zzedVar.f4721d;
                    conditionalUserProperty.mName = zzedVar.f4720c.f4728a;
                    conditionalUserProperty.mValue = zzedVar.f4720c.a();
                    conditionalUserProperty.mActive = zzedVar.f4722e;
                    conditionalUserProperty.mTriggerEventName = zzedVar.f;
                    if (zzedVar.g != null) {
                        conditionalUserProperty.mTimedOutEventName = zzedVar.g.f4724a;
                        if (zzedVar.g.f4725b != null) {
                            conditionalUserProperty.mTimedOutEventParams = zzedVar.g.f4725b.b();
                        }
                    }
                    conditionalUserProperty.mTriggerTimeout = zzedVar.h;
                    if (zzedVar.i != null) {
                        conditionalUserProperty.mTriggeredEventName = zzedVar.i.f4724a;
                        if (zzedVar.i.f4725b != null) {
                            conditionalUserProperty.mTriggeredEventParams = zzedVar.i.f4725b.b();
                        }
                    }
                    conditionalUserProperty.mTriggeredTimestamp = zzedVar.f4720c.f4729b;
                    conditionalUserProperty.mTimeToLive = zzedVar.j;
                    if (zzedVar.k != null) {
                        conditionalUserProperty.mExpiredEventName = zzedVar.k.f4724a;
                        if (zzedVar.k.f4725b != null) {
                            conditionalUserProperty.mExpiredEventParams = zzedVar.k.f4725b.b();
                        }
                    }
                    arrayList.add(conditionalUserProperty);
                }
                return arrayList;
            }
            dzVarV = q().v();
            str4 = "Cannot get conditional user properties from main thread";
        }
        dzVarV.a(str4);
        return Collections.emptyList();
    }

    private final Map<String, Object> b(String str, String str2, String str3, boolean z) {
        dz dzVarY;
        String str4;
        if (p().w()) {
            dzVarY = q().v();
            str4 = "Cannot get user properties from analytics worker thread";
        } else {
            p();
            if (ex.v()) {
                dzVarY = q().v();
                str4 = "Cannot get user properties from main thread";
            } else {
                AtomicReference atomicReference = new AtomicReference();
                synchronized (atomicReference) {
                    this.q.p().a(new gl(this, atomicReference, str, str2, str3, z));
                    try {
                        atomicReference.wait(5000L);
                    } catch (InterruptedException e2) {
                        q().y().a("Interrupted waiting for get user properties", e2);
                    }
                }
                List<zzjx> list = (List) atomicReference.get();
                if (list != null) {
                    androidx.c.a aVar = new androidx.c.a(list.size());
                    for (zzjx zzjxVar : list) {
                        aVar.put(zzjxVar.f4728a, zzjxVar.a());
                    }
                    return aVar;
                }
                dzVarY = q().y();
                str4 = "Timed out waiting for get user properties";
            }
        }
        dzVarY.a(str4);
        return Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        String[] strArr;
        Bundle bundle2;
        int length;
        long j2;
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(str2);
        com.google.android.gms.common.internal.aa.a(bundle);
        c();
        F();
        if (!this.q.x()) {
            q().B().a("Event not sent since app measurement is disabled");
            return;
        }
        if (!this.f4387e) {
            this.f4387e = true;
            try {
                try {
                    Class.forName("com.google.android.gms.tagmanager.TagManagerService").getDeclaredMethod("initialize", Context.class).invoke(null, k());
                } catch (Exception e2) {
                    q().y().a("Failed to invoke Tag Manager's initialize() method", e2);
                }
            } catch (ClassNotFoundException unused) {
                q().A().a("Tag Manager is not found and thus will not be used");
            }
        }
        if (z3 && !"_iap".equals(str2)) {
            iq iqVarM = this.q.m();
            int i = 2;
            if (iqVarM.a("event", str2)) {
                if (!iqVarM.a("event", AppMeasurement.a.f4733a, str2)) {
                    i = 13;
                } else if (iqVarM.a("event", 40, str2)) {
                    i = 0;
                }
            }
            if (i != 0) {
                q().x().a("Invalid public event name. Event will not be logged (FE)", m().a(str2));
                this.q.m();
                this.q.m().a(i, "_ev", iq.a(str2, 40, true), str2 != null ? str2.length() : 0);
                return;
            }
        }
        gv gvVarV = i().v();
        if (gvVarV != null && !bundle.containsKey("_sc")) {
            gvVarV.f4440d = true;
        }
        gw.a(gvVarV, bundle, z && z3);
        boolean zEquals = "am".equals(str);
        boolean zH = iq.h(str2);
        if (z && this.f4385c != null && !zH && !zEquals) {
            q().B().a("Passing event to registered event handler (FE)", m().a(str2), m().a(bundle));
            this.f4385c.a(str, str2, bundle, j);
            return;
        }
        if (this.q.B()) {
            int iB = n().b(str2);
            if (iB != 0) {
                q().x().a("Invalid event name. Event will not be logged (FE)", m().a(str2));
                n();
                this.q.m().a(str3, iB, "_ev", iq.a(str2, 40, true), str2 != null ? str2.length() : 0);
                return;
            }
            List<String> listA = com.google.android.gms.common.util.e.a((Object[]) new String[]{"_o", "_sn", "_sc", "_si"});
            Bundle bundleA = n().a(str2, bundle, listA, z3, true);
            gv gvVar = (bundleA != null && bundleA.containsKey("_sc") && bundleA.containsKey("_si")) ? new gv(bundleA.getString("_sn"), bundleA.getString("_sc"), Long.valueOf(bundleA.getLong("_si")).longValue()) : null;
            if (gvVar != null) {
                gvVarV = gvVar;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(bundleA);
            long jNextLong = n().w().nextLong();
            String[] strArr2 = (String[]) bundleA.keySet().toArray(new String[bundle.size()]);
            Arrays.sort(strArr2);
            int length2 = strArr2.length;
            int i2 = 0;
            int i3 = 0;
            while (i3 < length2) {
                String str4 = strArr2[i3];
                Object obj = bundleA.get(str4);
                n();
                Bundle[] bundleArrA = iq.a(obj);
                if (bundleArrA != null) {
                    String str5 = "_eid";
                    bundleA.putInt(str4, bundleArrA.length);
                    int i4 = 0;
                    while (i4 < bundleArrA.length) {
                        Bundle bundle3 = bundleArrA[i4];
                        int i5 = i4;
                        gw.a(gvVarV, bundle3, true);
                        String str6 = str5;
                        long j3 = jNextLong;
                        Bundle bundleA2 = n().a("_ep", bundle3, listA, z3, false);
                        bundleA2.putString("_en", str2);
                        bundleA2.putLong(str6, j3);
                        bundleA2.putString("_gn", str4);
                        bundleA2.putInt("_ll", bundleArrA.length);
                        bundleA2.putInt("_i", i5);
                        arrayList.add(bundleA2);
                        bundleA = bundleA;
                        strArr2 = strArr2;
                        str5 = str6;
                        jNextLong = j3;
                        i2 = i2;
                        i4 = i5 + 1;
                    }
                    j2 = jNextLong;
                    strArr = strArr2;
                    bundle2 = bundleA;
                    length = bundleArrA.length + i2;
                } else {
                    strArr = strArr2;
                    bundle2 = bundleA;
                    length = i2;
                    j2 = jNextLong;
                }
                i3++;
                bundleA = bundle2;
                strArr2 = strArr;
                i2 = length;
                jNextLong = j2;
            }
            Bundle bundle4 = bundleA;
            long j4 = jNextLong;
            int i6 = i2;
            if (i6 != 0) {
                bundle4.putLong("_eid", j4);
                bundle4.putInt("_epc", i6);
            }
            int i7 = 0;
            while (i7 < arrayList.size()) {
                Bundle bundleA3 = (Bundle) arrayList.get(i7);
                String str7 = i7 != 0 ? "_ep" : str2;
                bundleA3.putString("_o", str);
                if (z2) {
                    bundleA3 = n().a(bundleA3);
                }
                Bundle bundle5 = bundleA3;
                q().B().a("Logging event (FE)", m().a(str2), m().a(bundle5));
                h().a(new zzeu(str7, new zzer(bundle5), str, j), str3);
                if (!zEquals) {
                    Iterator<AppMeasurement.c> it = this.f4386d.iterator();
                    while (it.hasNext()) {
                        it.next().a(str, str2, new Bundle(bundle5), j);
                    }
                }
                i7++;
            }
            if (i().v() == null || !"_ae".equals(str2)) {
                return;
            }
            o().a(true);
        }
    }

    private final void b(String str, String str2, String str3, Bundle bundle) {
        long jA = j().a();
        com.google.android.gms.common.internal.aa.a(str2);
        AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
        conditionalUserProperty.mAppId = str;
        conditionalUserProperty.mName = str2;
        conditionalUserProperty.mCreationTimestamp = jA;
        if (str3 != null) {
            conditionalUserProperty.mExpiredEventName = str3;
            conditionalUserProperty.mExpiredEventParams = bundle;
        }
        p().a(new gj(this, conditionalUserProperty));
    }

    private final void c(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        long jA = j().a();
        com.google.android.gms.common.internal.aa.a(conditionalUserProperty);
        com.google.android.gms.common.internal.aa.a(conditionalUserProperty.mName);
        com.google.android.gms.common.internal.aa.a(conditionalUserProperty.mOrigin);
        com.google.android.gms.common.internal.aa.a(conditionalUserProperty.mValue);
        conditionalUserProperty.mCreationTimestamp = jA;
        String str = conditionalUserProperty.mName;
        Object obj = conditionalUserProperty.mValue;
        if (n().d(str) != 0) {
            q().v().a("Invalid conditional user property name", m().c(str));
            return;
        }
        if (n().b(str, obj) != 0) {
            q().v().a("Invalid conditional user property value", m().c(str), obj);
            return;
        }
        Object objC = n().c(str, obj);
        if (objC == null) {
            q().v().a("Unable to normalize conditional user property value", m().c(str), obj);
            return;
        }
        conditionalUserProperty.mValue = objC;
        long j = conditionalUserProperty.mTriggerTimeout;
        if (!TextUtils.isEmpty(conditionalUserProperty.mTriggerEventName) && (j > 15552000000L || j < 1)) {
            q().v().a("Invalid conditional user property timeout", m().c(str), Long.valueOf(j));
            return;
        }
        long j2 = conditionalUserProperty.mTimeToLive;
        if (j2 > 15552000000L || j2 < 1) {
            q().v().a("Invalid conditional user property time to live", m().c(str), Long.valueOf(j2));
        } else {
            p().a(new gi(this, conditionalUserProperty));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(boolean z) {
        c();
        F();
        q().B().a("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        r().b(z);
        if (!s().i(f().w())) {
            h().w();
        } else if (!this.q.x() || !this.f4384b) {
            h().w();
        } else {
            q().B().a("Recording app launch after enabling measurement for the first time (FE)");
            D();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        c();
        F();
        com.google.android.gms.common.internal.aa.a(conditionalUserProperty);
        com.google.android.gms.common.internal.aa.a(conditionalUserProperty.mName);
        com.google.android.gms.common.internal.aa.a(conditionalUserProperty.mOrigin);
        com.google.android.gms.common.internal.aa.a(conditionalUserProperty.mValue);
        if (!this.q.x()) {
            q().B().a("Conditional property not sent since Firebase Analytics is disabled");
            return;
        }
        zzjx zzjxVar = new zzjx(conditionalUserProperty.mName, conditionalUserProperty.mTriggeredTimestamp, conditionalUserProperty.mValue, conditionalUserProperty.mOrigin);
        try {
            zzeu zzeuVarA = n().a(conditionalUserProperty.mTriggeredEventName, conditionalUserProperty.mTriggeredEventParams, conditionalUserProperty.mOrigin, 0L, true, false);
            h().a(new zzed(conditionalUserProperty.mAppId, conditionalUserProperty.mOrigin, zzjxVar, conditionalUserProperty.mCreationTimestamp, false, conditionalUserProperty.mTriggerEventName, n().a(conditionalUserProperty.mTimedOutEventName, conditionalUserProperty.mTimedOutEventParams, conditionalUserProperty.mOrigin, 0L, true, false), conditionalUserProperty.mTriggerTimeout, zzeuVarA, conditionalUserProperty.mTimeToLive, n().a(conditionalUserProperty.mExpiredEventName, conditionalUserProperty.mExpiredEventParams, conditionalUserProperty.mOrigin, 0L, true, false)));
        } catch (IllegalArgumentException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        c();
        F();
        com.google.android.gms.common.internal.aa.a(conditionalUserProperty);
        com.google.android.gms.common.internal.aa.a(conditionalUserProperty.mName);
        if (!this.q.x()) {
            q().B().a("Conditional property not cleared since Firebase Analytics is disabled");
            return;
        }
        try {
            h().a(new zzed(conditionalUserProperty.mAppId, conditionalUserProperty.mOrigin, new zzjx(conditionalUserProperty.mName, 0L, null, null), conditionalUserProperty.mCreationTimestamp, conditionalUserProperty.mActive, conditionalUserProperty.mTriggerEventName, null, conditionalUserProperty.mTriggerTimeout, null, conditionalUserProperty.mTimeToLive, n().a(conditionalUserProperty.mExpiredEventName, conditionalUserProperty.mExpiredEventParams, conditionalUserProperty.mOrigin, conditionalUserProperty.mCreationTimestamp, true, false)));
        } catch (IllegalArgumentException unused) {
        }
    }

    public final com.google.android.gms.f.g<String> A() {
        try {
            String strW = r().w();
            return strW != null ? com.google.android.gms.f.j.a(strW) : com.google.android.gms.f.j.a(p().x(), new gf(this));
        } catch (Exception e2) {
            q().y().a("Failed to schedule task for getAppInstanceId");
            return com.google.android.gms.f.j.a(e2);
        }
    }

    public final String B() {
        return this.f.get();
    }

    public final void C() {
        p().a(new gh(this, j().a()));
    }

    public final void D() {
        c();
        F();
        if (this.q.B()) {
            h().y();
            this.f4384b = false;
            String strZ = r().z();
            if (TextUtils.isEmpty(strZ)) {
                return;
            }
            g().F();
            if (strZ.equals(Build.VERSION.RELEASE)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", strZ);
            a("auto", "_ou", bundle);
        }
    }

    public final List<AppMeasurement.ConditionalUserProperty> a(String str, String str2) {
        return b((String) null, str, str2);
    }

    public final List<AppMeasurement.ConditionalUserProperty> a(String str, String str2, String str3) {
        com.google.android.gms.common.internal.aa.a(str);
        a();
        return b(str, str2, str3);
    }

    public final Map<String, Object> a(String str, String str2, String str3, boolean z) {
        com.google.android.gms.common.internal.aa.a(str);
        a();
        return b(str, str2, str3, z);
    }

    public final Map<String, Object> a(String str, String str2, boolean z) {
        return b((String) null, str, str2, z);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    public final void a(long j) {
        p().a(new gr(this, j));
    }

    public final void a(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        com.google.android.gms.common.internal.aa.a(conditionalUserProperty);
        AppMeasurement.ConditionalUserProperty conditionalUserProperty2 = new AppMeasurement.ConditionalUserProperty(conditionalUserProperty);
        if (!TextUtils.isEmpty(conditionalUserProperty2.mAppId)) {
            q().y().a("Package name should be null when calling setConditionalUserProperty");
        }
        conditionalUserProperty2.mAppId = null;
        c(conditionalUserProperty2);
    }

    public final void a(AppMeasurement.b bVar) {
        AppMeasurement.b bVar2;
        c();
        F();
        if (bVar != null && bVar != (bVar2 = this.f4385c)) {
            com.google.android.gms.common.internal.aa.a(bVar2 == null, "EventInterceptor already set.");
        }
        this.f4385c = bVar;
    }

    public final void a(AppMeasurement.c cVar) {
        F();
        com.google.android.gms.common.internal.aa.a(cVar);
        if (this.f4386d.add(cVar)) {
            return;
        }
        q().y().a("OnEventListener already registered");
    }

    final void a(String str) {
        this.f.set(str);
    }

    public final void a(String str, String str2, Bundle bundle) {
        a(str, str2, bundle, true, this.f4385c == null || iq.h(str2), false, null);
    }

    public final void a(String str, String str2, Bundle bundle, long j) {
        a(str, str2, j, bundle, false, true, true, null);
    }

    public final void a(String str, String str2, Bundle bundle, boolean z) {
        a(str, str2, bundle, true, this.f4385c == null || iq.h(str2), true, null);
    }

    public final void a(String str, String str2, Object obj) {
        com.google.android.gms.common.internal.aa.a(str);
        long jA = j().a();
        int iD = n().d(str2);
        if (iD != 0) {
            n();
            this.q.m().a(iD, "_ev", iq.a(str2, 24, true), str2 != null ? str2.length() : 0);
            return;
        }
        if (obj == null) {
            a(str, str2, jA, (Object) null);
            return;
        }
        int iB = n().b(str2, obj);
        if (iB != 0) {
            n();
            this.q.m().a(iB, "_ev", iq.a(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0);
        } else {
            Object objC = n().c(str2, obj);
            if (objC != null) {
                a(str, str2, jA, objC);
            }
        }
    }

    public final void a(String str, String str2, String str3, Bundle bundle) {
        com.google.android.gms.common.internal.aa.a(str);
        a();
        b(str, str2, str3, bundle);
    }

    public final void a(boolean z) {
        F();
        p().a(new gq(this, z));
    }

    public final List<zzjx> b(boolean z) {
        dz dzVarY;
        String str;
        F();
        q().B().a("Fetching user attributes (FE)");
        if (p().w()) {
            dzVarY = q().v();
            str = "Cannot get all user properties from analytics worker thread";
        } else {
            p();
            if (ex.v()) {
                dzVarY = q().v();
                str = "Cannot get all user properties from main thread";
            } else {
                AtomicReference atomicReference = new AtomicReference();
                synchronized (atomicReference) {
                    this.q.p().a(new ge(this, atomicReference, z));
                    try {
                        atomicReference.wait(5000L);
                    } catch (InterruptedException e2) {
                        q().y().a("Interrupted waiting for get user properties", e2);
                    }
                }
                List<zzjx> list = (List) atomicReference.get();
                if (list != null) {
                    return list;
                }
                dzVarY = q().y();
                str = "Timed out waiting for get user properties";
            }
        }
        dzVarY.a(str);
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    public final void b(long j) {
        p().a(new gs(this, j));
    }

    public final void b(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        com.google.android.gms.common.internal.aa.a(conditionalUserProperty);
        com.google.android.gms.common.internal.aa.a(conditionalUserProperty.mAppId);
        a();
        c(new AppMeasurement.ConditionalUserProperty(conditionalUserProperty));
    }

    public final void b(AppMeasurement.c cVar) {
        F();
        com.google.android.gms.common.internal.aa.a(cVar);
        if (this.f4386d.remove(cVar)) {
            return;
        }
        q().y().a("OnEventListener had not been registered");
    }

    final void b(String str, String str2, Bundle bundle) {
        c();
        b(str, str2, j().a(), bundle, true, this.f4385c == null || iq.h(str2), false, null);
    }

    final String c(long j) {
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            p().a(new gg(this, atomicReference));
            try {
                atomicReference.wait(j);
            } catch (InterruptedException unused) {
                q().y().a("Interrupted waiting for app instance id");
                return null;
            }
        }
        return (String) atomicReference.get();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    public final void c(String str, String str2, Bundle bundle) {
        b((String) null, str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cp d() {
        return super.d();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gb e() {
        return super.e();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ds f() {
        return super.f();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dh g() {
        return super.g();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gz h() {
        return super.h();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gw i() {
        return super.i();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ com.google.android.gms.common.util.d j() {
        return super.j();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ Context k() {
        return super.k();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dt l() {
        return super.l();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dv m() {
        return super.m();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ iq n() {
        return super.n();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ hy o() {
        return super.o();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ ex p() {
        return super.p();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ dx q() {
        return super.q();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ei r() {
        return super.r();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cy s() {
        return super.s();
    }

    @Override // com.google.android.gms.internal.measurement.fy
    protected final boolean t() {
        return false;
    }

    public final Boolean v() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) p().a(atomicReference, 15000L, "boolean test flag value", new gc(this, atomicReference));
    }

    public final String w() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) p().a(atomicReference, 15000L, "String test flag value", new gm(this, atomicReference));
    }

    public final Long x() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) p().a(atomicReference, 15000L, "long test flag value", new gn(this, atomicReference));
    }

    public final Integer y() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) p().a(atomicReference, 15000L, "int test flag value", new go(this, atomicReference));
    }

    public final Double z() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) p().a(atomicReference, 15000L, "double test flag value", new gp(this, atomicReference));
    }
}
