package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bbt extends bbv {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final bdx f4780b = new bdx();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<Class<? extends Object>, Object> f4781a;

    private final <NetworkExtrasT extends NetworkExtras, ServerParametersT extends MediationServerParameters> bbx d(String str) throws RemoteException {
        try {
            Class<?> cls = Class.forName(str, false, bbt.class.getClassLoader());
            if (MediationAdapter.class.isAssignableFrom(cls)) {
                MediationAdapter mediationAdapter = (MediationAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                return new bcx(mediationAdapter, (NetworkExtras) this.f4781a.get(mediationAdapter.getAdditionalParametersType()));
            }
            if (com.google.android.gms.ads.mediation.b.class.isAssignableFrom(cls)) {
                return new bcs((com.google.android.gms.ads.mediation.b) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            }
            mj.e(new StringBuilder(String.valueOf(str).length() + 64).append("Could not instantiate mediation adapter: ").append(str).append(" (not a valid adapter).").toString());
            throw new RemoteException();
        } catch (Throwable th) {
            return e(str);
        }
    }

    private final bbx e(String str) throws RemoteException {
        try {
            mj.b("Reflection failed, retrying using direct instantiation");
        } catch (Throwable th) {
            mj.c(new StringBuilder(String.valueOf(str).length() + 43).append("Could not instantiate mediation adapter: ").append(str).append(". ").toString(), th);
        }
        if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
            return new bcs(new AdMobAdapter());
        }
        if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
            return new bcs(new AdUrlAdapter());
        }
        if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            return new bcs(new CustomEventAdapter());
        }
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            com.google.ads.mediation.customevent.CustomEventAdapter customEventAdapter = new com.google.ads.mediation.customevent.CustomEventAdapter();
            return new bcx(customEventAdapter, (com.google.android.gms.ads.mediation.customevent.c) this.f4781a.get(customEventAdapter.getAdditionalParametersType()));
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.bbu
    public final bbx a(String str) throws RemoteException {
        return d(str);
    }

    public final void a(Map<Class<? extends Object>, Object> map) {
        this.f4781a = map;
    }

    @Override // com.google.android.gms.internal.ads.bbu
    public final boolean b(String str) throws RemoteException {
        try {
            return com.google.android.gms.ads.mediation.customevent.a.class.isAssignableFrom(Class.forName(str, false, bbt.class.getClassLoader()));
        } catch (Throwable th) {
            mj.e(new StringBuilder(String.valueOf(str).length() + 80).append("Could not load custom event implementation class: ").append(str).append(", assuming old implementation.").toString());
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.bbu
    public final bds c(String str) throws RemoteException {
        return bdx.a(str);
    }
}
