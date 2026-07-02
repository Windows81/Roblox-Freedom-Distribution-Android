package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class be {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, String> f5903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<zzbo> f5904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f5905c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f5906d;
    private final int e;
    private final boolean f;
    private final String g;

    public be(o oVar, Map<String, String> map, long j, boolean z) {
        this(oVar, map, j, z, 0L, 0, null);
    }

    public be(o oVar, Map<String, String> map, long j, boolean z, long j2, int i) {
        this(oVar, map, j, z, j2, i, null);
    }

    public be(o oVar, Map<String, String> map, long j, boolean z, long j2, int i, List<zzbo> list) {
        String strB;
        String strA;
        String strA2;
        com.google.android.gms.common.internal.w.a(oVar);
        com.google.android.gms.common.internal.w.a(map);
        this.f5906d = j;
        this.f = z;
        this.f5905c = j2;
        this.e = i;
        this.f5904b = list != null ? list : Collections.emptyList();
        if (list != null) {
            for (zzbo zzboVar : list) {
                if ("appendVersion".equals(zzboVar.a())) {
                    strB = zzboVar.b();
                    break;
                }
            }
            strB = null;
        } else {
            strB = null;
        }
        this.g = TextUtils.isEmpty(strB) ? null : strB;
        HashMap map2 = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (a(entry.getKey()) && (strA2 = a(oVar, entry.getKey())) != null) {
                map2.put(strA2, b(oVar, entry.getValue()));
            }
        }
        for (Map.Entry<String, String> entry2 : map.entrySet()) {
            if (!a(entry2.getKey()) && (strA = a(oVar, entry2.getKey())) != null) {
                map2.put(strA, b(oVar, entry2.getValue()));
            }
        }
        if (!TextUtils.isEmpty(this.g)) {
            ca.a(map2, "_v", this.g);
            if (this.g.equals("ma4.0.0") || this.g.equals("ma4.0.1")) {
                map2.remove("adid");
            }
        }
        this.f5903a = Collections.unmodifiableMap(map2);
    }

    private static String a(o oVar, Object obj) {
        if (obj == null) {
            return null;
        }
        String string = obj.toString();
        if (string.startsWith("&")) {
            string = string.substring(1);
        }
        int length = string.length();
        if (length > 256) {
            string = string.substring(0, 256);
            oVar.c("Hit param name is too long and will be trimmed", Integer.valueOf(length), string);
        }
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    private final String a(String str, String str2) {
        com.google.android.gms.common.internal.w.a(str);
        com.google.android.gms.common.internal.w.b(!str.startsWith("&"), "Short param name required");
        String str3 = this.f5903a.get(str);
        return str3 != null ? str3 : str2;
    }

    private static boolean a(Object obj) {
        if (obj == null) {
            return false;
        }
        return obj.toString().startsWith("&");
    }

    private static String b(o oVar, Object obj) {
        String string = obj == null ? "" : obj.toString();
        int length = string.length();
        if (length <= 8192) {
            return string;
        }
        String strSubstring = string.substring(0, 8192);
        oVar.c("Hit param value is too long and will be trimmed", Integer.valueOf(length), strSubstring);
        return strSubstring;
    }

    public final int a() {
        return this.e;
    }

    public final Map<String, String> b() {
        return this.f5903a;
    }

    public final long c() {
        return this.f5905c;
    }

    public final long d() {
        return this.f5906d;
    }

    public final List<zzbo> e() {
        return this.f5904b;
    }

    public final boolean f() {
        return this.f;
    }

    public final long g() {
        return ca.a(a("_s", "0"));
    }

    public final String h() {
        return a("_m", "");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ht=").append(this.f5906d);
        if (this.f5905c != 0) {
            sb.append(", dbId=").append(this.f5905c);
        }
        if (this.e != 0) {
            sb.append(", appUID=").append(this.e);
        }
        ArrayList arrayList = new ArrayList(this.f5903a.keySet());
        Collections.sort(arrayList);
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            String str = (String) obj;
            sb.append(", ");
            sb.append(str);
            sb.append("=");
            sb.append(this.f5903a.get(str));
        }
        return sb.toString();
    }
}
