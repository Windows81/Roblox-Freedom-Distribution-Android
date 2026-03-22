package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class y {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f3827a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Object f3828b;

        private a(Object obj) {
            this.f3828b = aa.a(obj);
            this.f3827a = new ArrayList();
        }

        public final a a(String str, Object obj) {
            List<String> list = this.f3827a;
            String str2 = (String) aa.a(str);
            String strValueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(strValueOf).length());
            sb.append(str2);
            sb.append("=");
            sb.append(strValueOf);
            list.add(sb.toString());
            return this;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f3828b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f3827a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f3827a.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    public static int a(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static a a(Object obj) {
        return new a(obj);
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
