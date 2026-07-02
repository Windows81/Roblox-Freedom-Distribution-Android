package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.internal.measurement.bi;
import com.google.android.gms.internal.measurement.ca;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class e {

    public static class a extends c<a> {
        public a() {
            a("&t", "event");
        }

        public a a(long j) {
            a("&ev", Long.toString(j));
            return this;
        }

        public a a(String str) {
            a("&ec", str);
            return this;
        }

        public a b(String str) {
            a("&ea", str);
            return this;
        }

        public a c(String str) {
            a("&el", str);
            return this;
        }
    }

    public static class b extends c<b> {
        public b() {
            a("&t", "exception");
        }

        public b a(String str) {
            a("&exd", str);
            return this;
        }

        public b a(boolean z) {
            a("&exf", ca.a(z));
            return this;
        }
    }

    public static class c<T extends c> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.google.android.gms.analytics.a.b f3244b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Map<String, String> f3243a = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Map<String, List<com.google.android.gms.analytics.a.a>> f3245c = new HashMap();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<com.google.android.gms.analytics.a.c> f3246d = new ArrayList();
        private List<com.google.android.gms.analytics.a.a> e = new ArrayList();

        protected c() {
        }

        public final T a(String str, String str2) {
            if (str != null) {
                this.f3243a.put(str, str2);
            } else {
                bi.b("HitBuilder.set() called with a null paramName.");
            }
            return this;
        }

        public Map<String, String> a() {
            HashMap map = new HashMap(this.f3243a);
            if (this.f3244b != null) {
                map.putAll(this.f3244b.a());
            }
            Iterator<com.google.android.gms.analytics.a.c> it = this.f3246d.iterator();
            int i = 1;
            while (it.hasNext()) {
                map.putAll(it.next().a(l.e(i)));
                i++;
            }
            Iterator<com.google.android.gms.analytics.a.a> it2 = this.e.iterator();
            int i2 = 1;
            while (it2.hasNext()) {
                map.putAll(it2.next().a(l.c(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry<String, List<com.google.android.gms.analytics.a.a>> entry : this.f3245c.entrySet()) {
                List<com.google.android.gms.analytics.a.a> value = entry.getValue();
                String strH = l.h(i3);
                int i4 = 1;
                for (com.google.android.gms.analytics.a.a aVar : value) {
                    String strValueOf = String.valueOf(strH);
                    String strValueOf2 = String.valueOf(l.g(i4));
                    map.putAll(aVar.a(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf)));
                    i4++;
                }
                if (!TextUtils.isEmpty(entry.getKey())) {
                    String strValueOf3 = String.valueOf(strH);
                    String strValueOf4 = String.valueOf("nm");
                    map.put(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3), entry.getKey());
                }
                i3++;
            }
            return map;
        }
    }

    public static class d extends c<d> {
        public d() {
            a("&t", "timing");
        }

        public d a(long j) {
            a("&utt", Long.toString(j));
            return this;
        }

        public d a(String str) {
            a("&utv", str);
            return this;
        }

        public d b(String str) {
            a("&utc", str);
            return this;
        }
    }
}
