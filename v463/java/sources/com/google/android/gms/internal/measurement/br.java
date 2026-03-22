package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class br {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, String> f4096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<zzbo> f4097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f4098c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f4099d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4100e;
    private final boolean f;
    private final String g;

    public br(ab abVar, Map<String, String> map, long j, boolean z) {
        this(abVar, map, j, z, 0L, 0, null);
    }

    public br(ab abVar, Map<String, String> map, long j, boolean z, long j2, int i) {
        this(abVar, map, j, z, j2, i, null);
    }

    public br(ab abVar, Map<String, String> map, long j, boolean z, long j2, int i, List<zzbo> list) {
        String strB;
        String strA;
        String strA2;
        com.google.android.gms.common.internal.aa.a(abVar);
        com.google.android.gms.common.internal.aa.a(map);
        this.f4099d = j;
        this.f = z;
        this.f4098c = j2;
        this.f4100e = i;
        this.f4097b = list != null ? list : Collections.emptyList();
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
            if (a(entry.getKey()) && (strA2 = a(abVar, entry.getKey())) != null) {
                map2.put(strA2, b(abVar, entry.getValue()));
            }
        }
        for (Map.Entry<String, String> entry2 : map.entrySet()) {
            if (!a(entry2.getKey()) && (strA = a(abVar, entry2.getKey())) != null) {
                map2.put(strA, b(abVar, entry2.getValue()));
            }
        }
        if (!TextUtils.isEmpty(this.g)) {
            cn.a(map2, "_v", this.g);
            if (this.g.equals("ma4.0.0") || this.g.equals("ma4.0.1")) {
                map2.remove("adid");
            }
        }
        this.f4096a = Collections.unmodifiableMap(map2);
    }

    private static String a(ab abVar, Object obj) {
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
            abVar.c("Hit param name is too long and will be trimmed", Integer.valueOf(length), string);
        }
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    private final String a(String str, String str2) {
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.b(!str.startsWith("&"), "Short param name required");
        String str3 = this.f4096a.get(str);
        return str3 != null ? str3 : str2;
    }

    private static boolean a(Object obj) {
        if (obj == null) {
            return false;
        }
        return obj.toString().startsWith("&");
    }

    private static String b(ab abVar, Object obj) {
        String string = obj == null ? "" : obj.toString();
        int length = string.length();
        if (length <= 8192) {
            return string;
        }
        String strSubstring = string.substring(0, 8192);
        abVar.c("Hit param value is too long and will be trimmed", Integer.valueOf(length), strSubstring);
        return strSubstring;
    }

    public final int a() {
        return this.f4100e;
    }

    public final Map<String, String> b() {
        return this.f4096a;
    }

    public final long c() {
        return this.f4098c;
    }

    public final long d() {
        return this.f4099d;
    }

    public final List<zzbo> e() {
        return this.f4097b;
    }

    public final boolean f() {
        return this.f;
    }

    public final long g() {
        return cn.a(a("_s", "0"));
    }

    public final String h() {
        return a("_m", "");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ht=");
        sb.append(this.f4099d);
        if (this.f4098c != 0) {
            sb.append(", dbId=");
            sb.append(this.f4098c);
        }
        if (this.f4100e != 0) {
            sb.append(", appUID=");
            sb.append(this.f4100e);
        }
        ArrayList arrayList = new ArrayList(this.f4096a.keySet());
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
            sb.append(this.f4096a.get(str));
        }
        return sb.toString();
    }
}
