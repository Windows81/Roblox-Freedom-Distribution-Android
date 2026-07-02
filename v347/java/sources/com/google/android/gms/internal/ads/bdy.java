package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class bdy extends bdt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final sq f4821a;

    public bdy(sq sqVar) {
        this.f4821a = sqVar;
    }

    private static Bundle a(String str) throws RemoteException {
        String strValueOf = String.valueOf(str);
        mj.e(strValueOf.length() != 0 ? "Server parameters: ".concat(strValueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str == null) {
                return bundle;
            }
            JSONObject jSONObject = new JSONObject(str);
            Bundle bundle2 = new Bundle();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                bundle2.putString(next, jSONObject.getString(next));
            }
            return bundle2;
        } catch (JSONException e) {
            mj.b("", e);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bds
    public final zzzt a() throws RemoteException {
        return zzzt.a(this.f4821a.b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.beb, com.google.android.gms.internal.ads.st] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.bds
    public final void a(com.google.android.gms.b.a aVar, String str, Bundle bundle, bdv bdvVar) throws RemoteException {
        int i;
        try {
            ?? bebVar = new beb(this, bdvVar);
            sq sqVar = this.f4821a;
            Context context = (Context) com.google.android.gms.b.b.a(aVar);
            switch (str) {
                case "banner":
                    i = sr.f5560a;
                    break;
                case "interstitial":
                    i = sr.f5561b;
                    break;
                case "rewarded":
                    i = sr.f5562c;
                    break;
                case "native":
                    i = sr.f5563d;
                    break;
                default:
                    throw new IllegalArgumentException("Internal Error");
            }
            sqVar.a(new ss(context, i, bundle), bebVar);
        } catch (Throwable th) {
            mj.b("Error generating signals for RTB", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bds
    public final void a(byte[] bArr, String str, Bundle bundle, com.google.android.gms.b.a aVar, bdo bdoVar, bca bcaVar, zzjn zzjnVar) throws RemoteException {
        try {
            bdz bdzVar = new bdz(this, bdoVar, bcaVar);
            sq sqVar = this.f4821a;
            new sp((Context) com.google.android.gms.b.b.a(aVar), bArr, a(str), bundle);
            com.google.android.gms.ads.m.a(zzjnVar.e, zzjnVar.f5804b, zzjnVar.f5803a);
            bdzVar.a(String.valueOf(sqVar.getClass().getSimpleName()).concat(" does not support banner."));
        } catch (Throwable th) {
            mj.b("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bds
    public final void a(byte[] bArr, String str, Bundle bundle, com.google.android.gms.b.a aVar, bdq bdqVar, bca bcaVar) throws RemoteException {
        try {
            bea beaVar = new bea(this, bdqVar, bcaVar);
            sq sqVar = this.f4821a;
            new sp((Context) com.google.android.gms.b.b.a(aVar), bArr, a(str), bundle);
            beaVar.a(String.valueOf(sqVar.getClass().getSimpleName()).concat(" does not support interstitial."));
        } catch (Throwable th) {
            mj.b("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.bds
    public final zzzt b() throws RemoteException {
        return zzzt.a(this.f4821a.a());
    }

    @Override // com.google.android.gms.internal.ads.bds
    public final aqc c() {
        if (!(this.f4821a instanceof com.google.android.gms.ads.mediation.m)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.m) this.f4821a).getVideoController();
        } catch (Throwable th) {
            mj.b("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.bds
    public final void d() throws RemoteException {
        so soVar = null;
        try {
            soVar.a();
        } catch (Throwable th) {
            mj.b("", th);
            throw new RemoteException();
        }
    }
}
