package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Base64;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.ParametersAreNonnullByDefault;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class axz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<aya, ayb> f4595a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedList<aya> f4596b = new LinkedList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private awu f4597c;

    static Set<String> a(zzjj zzjjVar) {
        HashSet hashSet = new HashSet();
        hashSet.addAll(zzjjVar.f5801c.keySet());
        Bundle bundle = zzjjVar.m.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle != null) {
            hashSet.addAll(bundle.keySet());
        }
        return hashSet;
    }

    private static void a(Bundle bundle, String str) {
        while (true) {
            String[] strArrSplit = str.split("/", 2);
            if (strArrSplit.length == 0) {
                return;
            }
            String str2 = strArrSplit[0];
            if (strArrSplit.length == 1) {
                bundle.remove(str2);
                return;
            }
            bundle = bundle.getBundle(str2);
            if (bundle == null) {
                return;
            } else {
                str = strArrSplit[1];
            }
        }
    }

    private static void a(String str, aya ayaVar) {
        if (jd.a(2)) {
            jd.a(String.format(str, ayaVar));
        }
    }

    private static String[] a(String str) {
        try {
            String[] strArrSplit = str.split("\u0000");
            for (int i = 0; i < strArrSplit.length; i++) {
                strArrSplit[i] = new String(Base64.decode(strArrSplit[i], 0), Constants.UTF8_NAME);
            }
            return strArrSplit;
        } catch (UnsupportedEncodingException e) {
            return new String[0];
        }
    }

    static zzjj b(zzjj zzjjVar) {
        zzjj zzjjVarD = d(zzjjVar);
        Bundle bundle = zzjjVarD.m.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle != null) {
            bundle.putBoolean("_skipMediation", true);
        }
        zzjjVarD.f5801c.putBoolean("_skipMediation", true);
        return zzjjVarD;
    }

    private final String b() {
        try {
            StringBuilder sb = new StringBuilder();
            Iterator<aya> it = this.f4596b.iterator();
            while (it.hasNext()) {
                sb.append(Base64.encodeToString(it.next().toString().getBytes(Constants.UTF8_NAME), 0));
                if (it.hasNext()) {
                    sb.append("\u0000");
                }
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            return "";
        }
    }

    private static boolean b(String str) {
        try {
            return Pattern.matches((String) aoo.f().a(aro.ba), str);
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.aw.i().a(e, "InterstitialAdPool.isExcludedAdUnit");
            return false;
        }
    }

    private static zzjj c(zzjj zzjjVar) {
        zzjj zzjjVarD = d(zzjjVar);
        for (String str : ((String) aoo.f().a(aro.aW)).split(",")) {
            a(zzjjVarD.m, str);
            if (str.startsWith("com.google.ads.mediation.admob.AdMobAdapter/")) {
                a(zzjjVarD.f5801c, str.replaceFirst("com.google.ads.mediation.admob.AdMobAdapter/", ""));
            }
        }
        return zzjjVarD;
    }

    private static String c(String str) {
        try {
            Matcher matcher = Pattern.compile("([^/]+/[0-9]+).*").matcher(str);
            return matcher.matches() ? matcher.group(1) : str;
        } catch (RuntimeException e) {
            return str;
        }
    }

    private static zzjj d(zzjj zzjjVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzjjVar.writeToParcel(parcelObtain, 0);
        parcelObtain.setDataPosition(0);
        zzjj zzjjVarCreateFromParcel = zzjj.CREATOR.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return ((Boolean) aoo.f().a(aro.aN)).booleanValue() ? zzjjVarCreateFromParcel.a() : zzjjVarCreateFromParcel;
    }

    final ayc a(zzjj zzjjVar, String str) {
        ayb aybVar;
        if (b(str)) {
            return null;
        }
        int i = new fd(this.f4597c.a()).a().n;
        zzjj zzjjVarC = c(zzjjVar);
        String strC = c(str);
        aya ayaVar = new aya(zzjjVarC, strC, i);
        ayb aybVar2 = this.f4595a.get(ayaVar);
        if (aybVar2 == null) {
            a("Interstitial pool created at %s.", ayaVar);
            ayb aybVar3 = new ayb(zzjjVarC, strC, i);
            this.f4595a.put(ayaVar, aybVar3);
            aybVar = aybVar3;
        } else {
            aybVar = aybVar2;
        }
        this.f4596b.remove(ayaVar);
        this.f4596b.add(ayaVar);
        aybVar.g();
        while (this.f4596b.size() > ((Integer) aoo.f().a(aro.aX)).intValue()) {
            aya ayaVarRemove = this.f4596b.remove();
            ayb aybVar4 = this.f4595a.get(ayaVarRemove);
            a("Evicting interstitial queue for %s.", ayaVarRemove);
            while (aybVar4.d() > 0) {
                ayc aycVarA = aybVar4.a((zzjj) null);
                if (aycVarA.e) {
                    aye.a().c();
                }
                aycVarA.f4607a.J();
            }
            this.f4595a.remove(ayaVarRemove);
        }
        while (aybVar.d() > 0) {
            ayc aycVarA2 = aybVar.a(zzjjVarC);
            if (aycVarA2.e) {
                if (com.google.android.gms.ads.internal.aw.l().a() - aycVarA2.f4610d > 1000 * ((long) ((Integer) aoo.f().a(aro.aZ)).intValue())) {
                    a("Expired interstitial at %s.", ayaVar);
                    aye.a().b();
                }
            }
            String str2 = aycVarA2.f4608b != null ? " (inline) " : " ";
            a(new StringBuilder(String.valueOf(str2).length() + 34).append("Pooled interstitial").append(str2).append("returned at %s.").toString(), ayaVar);
            return aycVarA2;
        }
        return null;
    }

    final void a() {
        int iD;
        int iE;
        if (this.f4597c == null) {
            return;
        }
        for (Map.Entry<aya, ayb> entry : this.f4595a.entrySet()) {
            aya key = entry.getKey();
            ayb value = entry.getValue();
            if (jd.a(2) && (iE = value.e()) < (iD = value.d())) {
                jd.a(String.format("Loading %s/%s pooled interstitials for %s.", Integer.valueOf(iD - iE), Integer.valueOf(iD), key));
            }
            int iF = value.f() + 0;
            while (value.d() < ((Integer) aoo.f().a(aro.aY)).intValue()) {
                a("Pooling and loading one new interstitial for %s.", key);
                if (value.a(this.f4597c)) {
                    iF++;
                }
            }
            aye.a().a(iF);
        }
        if (this.f4597c != null) {
            SharedPreferences.Editor editorEdit = this.f4597c.a().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0).edit();
            editorEdit.clear();
            for (Map.Entry<aya, ayb> entry2 : this.f4595a.entrySet()) {
                aya key2 = entry2.getKey();
                ayb value2 = entry2.getValue();
                if (value2.h()) {
                    editorEdit.putString(key2.toString(), new ayg(value2).a());
                    a("Saved interstitial queue for %s.", key2);
                }
            }
            editorEdit.putString("PoolKeys", b());
            editorEdit.apply();
        }
    }

    final void a(awu awuVar) {
        if (this.f4597c == null) {
            this.f4597c = awuVar.b();
            if (this.f4597c != null) {
                SharedPreferences sharedPreferences = this.f4597c.a().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0);
                while (this.f4596b.size() > 0) {
                    aya ayaVarRemove = this.f4596b.remove();
                    ayb aybVar = this.f4595a.get(ayaVarRemove);
                    a("Flushing interstitial queue for %s.", ayaVarRemove);
                    while (aybVar.d() > 0) {
                        aybVar.a((zzjj) null).f4607a.J();
                    }
                    this.f4595a.remove(ayaVarRemove);
                }
                try {
                    HashMap map = new HashMap();
                    for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                        if (!entry.getKey().equals("PoolKeys")) {
                            ayg aygVarA = ayg.a((String) entry.getValue());
                            aya ayaVar = new aya(aygVarA.f4623a, aygVarA.f4624b, aygVarA.f4625c);
                            if (!this.f4595a.containsKey(ayaVar)) {
                                this.f4595a.put(ayaVar, new ayb(aygVarA.f4623a, aygVarA.f4624b, aygVarA.f4625c));
                                map.put(ayaVar.toString(), ayaVar);
                                a("Restored interstitial queue for %s.", ayaVar);
                            }
                        }
                    }
                    for (String str : a(sharedPreferences.getString("PoolKeys", ""))) {
                        aya ayaVar2 = (aya) map.get(str);
                        if (this.f4595a.containsKey(ayaVar2)) {
                            this.f4596b.add(ayaVar2);
                        }
                    }
                } catch (IOException | RuntimeException e) {
                    com.google.android.gms.ads.internal.aw.i().a(e, "InterstitialAdPool.restore");
                    jd.c("Malformed preferences value for InterstitialAdPool.", e);
                    this.f4595a.clear();
                    this.f4596b.clear();
                }
            }
        }
    }

    final void b(zzjj zzjjVar, String str) {
        if (this.f4597c == null) {
            return;
        }
        int i = new fd(this.f4597c.a()).a().n;
        zzjj zzjjVarC = c(zzjjVar);
        String strC = c(str);
        aya ayaVar = new aya(zzjjVarC, strC, i);
        ayb aybVar = this.f4595a.get(ayaVar);
        if (aybVar == null) {
            a("Interstitial pool created at %s.", ayaVar);
            aybVar = new ayb(zzjjVarC, strC, i);
            this.f4595a.put(ayaVar, aybVar);
        }
        aybVar.a(this.f4597c, zzjjVar);
        aybVar.g();
        a("Inline entry added to the queue at %s.", ayaVar);
    }
}
