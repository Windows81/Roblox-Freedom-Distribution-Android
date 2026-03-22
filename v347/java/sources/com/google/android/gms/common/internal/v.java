package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class v {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f3521a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Object f3522b;

        private a(Object obj) {
            this.f3522b = w.a(obj);
            this.f3521a = new ArrayList();
        }

        public final a a(String str, Object obj) {
            List<String> list = this.f3521a;
            String str2 = (String) w.a(str);
            String strValueOf = String.valueOf(obj);
            list.add(new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(strValueOf).length()).append(str2).append("=").append(strValueOf).toString());
            return this;
        }

        public final String toString() {
            StringBuilder sbAppend = new StringBuilder(100).append(this.f3522b.getClass().getSimpleName()).append('{');
            int size = this.f3521a.size();
            for (int i = 0; i < size; i++) {
                sbAppend.append(this.f3521a.get(i));
                if (i < size - 1) {
                    sbAppend.append(", ");
                }
            }
            return sbAppend.append('}').toString();
        }
    }

    public static int a(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static a a(Object obj) {
        return new a(obj);
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
