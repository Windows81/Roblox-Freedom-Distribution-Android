package com.google.android.gms.internal.measurement;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class bj extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static bj f5912a;

    public bj(r rVar) {
        super(rVar);
    }

    private static String a(Object obj) {
        if (obj == null) {
            return null;
        }
        Object objValueOf = obj instanceof Integer ? Long.valueOf(((Integer) obj).intValue()) : obj;
        if (!(objValueOf instanceof Long)) {
            return objValueOf instanceof Boolean ? String.valueOf(objValueOf) : objValueOf instanceof Throwable ? objValueOf.getClass().getCanonicalName() : "-";
        }
        if (Math.abs(((Long) objValueOf).longValue()) < 100) {
            return String.valueOf(objValueOf);
        }
        String str = String.valueOf(objValueOf).charAt(0) == '-' ? "-" : "";
        String strValueOf = String.valueOf(Math.abs(((Long) objValueOf).longValue()));
        return str + Math.round(Math.pow(10.0d, strValueOf.length() - 1)) + "..." + str + Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
    }

    public static bj b() {
        return f5912a;
    }

    @Override // com.google.android.gms.internal.measurement.p
    protected final void a() {
        synchronized (bj.class) {
            f5912a = this;
        }
    }

    public final synchronized void a(int i, String str, Object obj, Object obj2, Object obj3) {
        synchronized (this) {
            com.google.android.gms.common.internal.w.a(str);
            int i2 = i >= 0 ? i : 0;
            int i3 = i2 >= 9 ? 8 : i2;
            char c2 = l().a() ? 'C' : 'c';
            char cCharAt = "01VDIWEA?".charAt(i3);
            String str2 = q.f6007a;
            String strC = c(str, a(obj), a(obj2), a(obj3));
            String string = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(strC).length()).append("3").append(cCharAt).append(c2).append(str2).append(":").append(strC).toString();
            if (string.length() > 1024) {
                string = string.substring(0, 1024);
            }
            bn bnVarM = h().m();
            if (bnVarM != null) {
                bnVarM.g().a(string);
            }
        }
    }

    public final void a(be beVar, String str) {
        String string = beVar != null ? beVar.toString() : "no hit data";
        String strValueOf = String.valueOf(str);
        d(strValueOf.length() != 0 ? "Discarding hit. ".concat(strValueOf) : new String("Discarding hit. "), string);
    }

    public final void a(Map<String, String> map, String str) {
        String string;
        if (map != null) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append(entry.getKey());
                sb.append('=');
                sb.append(entry.getValue());
            }
            string = sb.toString();
        } else {
            string = "no hit data";
        }
        String strValueOf = String.valueOf(str);
        d(strValueOf.length() != 0 ? "Discarding hit. ".concat(strValueOf) : new String("Discarding hit. "), string);
    }
}
