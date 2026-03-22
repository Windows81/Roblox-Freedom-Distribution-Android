package com.google.android.gms.internal.measurement;

import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class bw extends ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static bw f4107a;

    public bw(ae aeVar) {
        super(aeVar);
    }

    private static String a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (!(obj instanceof Long)) {
            return obj instanceof Boolean ? String.valueOf(obj) : obj instanceof Throwable ? obj.getClass().getCanonicalName() : "-";
        }
        Long l = (Long) obj;
        long jAbs = Math.abs(l.longValue());
        String strValueOf = String.valueOf(obj);
        if (jAbs < 100) {
            return strValueOf;
        }
        String str = strValueOf.charAt(0) != '-' ? "" : "-";
        String strValueOf2 = String.valueOf(Math.abs(l.longValue()));
        return str + Math.round(Math.pow(10.0d, strValueOf2.length() - 1)) + "..." + str + Math.round(Math.pow(10.0d, strValueOf2.length()) - 1.0d);
    }

    public static bw b() {
        return f4107a;
    }

    @Override // com.google.android.gms.internal.measurement.ac
    protected final void a() {
        synchronized (bw.class) {
            f4107a = this;
        }
    }

    public final synchronized void a(int i, String str, Object obj, Object obj2, Object obj3) {
        com.google.android.gms.common.internal.aa.a(str);
        if (i < 0) {
            i = 0;
        }
        if (i >= 9) {
            i = 8;
        }
        char c2 = l().a() ? 'C' : 'c';
        char cCharAt = "01VDIWEA?".charAt(i);
        String str2 = ad.f4008a;
        String strC = c(str, a(obj), a(obj2), a(obj3));
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(strC).length());
        sb.append("3");
        sb.append(cCharAt);
        sb.append(c2);
        sb.append(str2);
        sb.append(":");
        sb.append(strC);
        String string = sb.toString();
        if (string.length() > 1024) {
            string = string.substring(0, 1024);
        }
        ca caVarM = h().m();
        if (caVarM != null) {
            caVarM.g().a(string);
        }
    }

    public final void a(br brVar, String str) {
        String string = brVar != null ? brVar.toString() : "no hit data";
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
