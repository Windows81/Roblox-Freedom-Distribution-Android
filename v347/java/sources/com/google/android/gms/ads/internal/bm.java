package com.google.android.gms.ads.internal;

import android.os.Bundle;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.zzjj;
import com.google.android.gms.internal.ads.zzjn;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class bm {
    private static String a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            sb.append(obj == null ? "null" : obj instanceof Bundle ? a((Bundle) obj) : obj.toString());
        }
        return sb.toString();
    }

    public static Object[] a(String str, zzjj zzjjVar, String str2, int i, zzjn zzjnVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(str2);
        if (hashSet.contains("formatString")) {
            arrayList.add(null);
        }
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzjjVar.f5800b));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(a(zzjjVar.f5801c));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(zzjjVar.f5802d));
        }
        if (hashSet.contains("keywords")) {
            if (zzjjVar.e != null) {
                arrayList.add(zzjjVar.e.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzjjVar.f));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(zzjjVar.g));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzjjVar.h));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzjjVar.i);
        }
        if (hashSet.contains("location")) {
            if (zzjjVar.k != null) {
                arrayList.add(zzjjVar.k.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(zzjjVar.l);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(a(zzjjVar.m));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(a(zzjjVar.n));
        }
        if (hashSet.contains("categoryExclusions")) {
            if (zzjjVar.o != null) {
                arrayList.add(zzjjVar.o.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzjjVar.p);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzjjVar.q);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzjjVar.r));
        }
        return arrayList.toArray();
    }
}
