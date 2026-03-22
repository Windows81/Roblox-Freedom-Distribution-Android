package com.roblox.platform;

import android.graphics.Point;
import com.roblox.client.contacts.model.ContactRequestObject;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class k {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f7745a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Point f7746b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Point f7747c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Point f7748d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f7749e;
        String f;
        String g;
        String h;
        String i;
        String j;
        boolean k;
        boolean l;

        public a a(int i) {
            this.f7745a = i;
            return this;
        }

        public a a(Point point) {
            this.f7746b = point;
            return this;
        }

        public a b(Point point) {
            this.f7747c = point;
            return this;
        }

        public a c(Point point) {
            this.f7748d = point;
            return this;
        }

        public a a(String str) {
            this.f7749e = str;
            return this;
        }

        public a b(String str) {
            this.f = str;
            return this;
        }

        public a c(String str) {
            this.g = str;
            return this;
        }

        public a d(String str) {
            this.h = str;
            return this;
        }

        public a e(String str) {
            this.i = str;
            return this;
        }

        public a f(String str) {
            this.j = str;
            return this;
        }

        public a a(boolean z) {
            this.k = z;
            return this;
        }

        public a b(boolean z) {
            this.l = z;
            return this;
        }

        public String a() {
            String str = this.k ? ContactRequestObject.JSON_FIELD_PHONE : "Tablet";
            Locale locale = Locale.ROOT;
            String str2 = this.j;
            String str3 = String.format(Locale.ROOT, "Mozilla/5.0 (%dMB; %dx%d; %dx%d; %dx%d; %s; %s) %s (KHTML, like Gecko)  ROBLOX Android App %s %s Hybrid()  %s", Integer.valueOf(this.f7745a), Integer.valueOf(this.f7746b.x), Integer.valueOf(this.f7746b.y), Integer.valueOf(this.f7747c.x), Integer.valueOf(this.f7747c.y), Integer.valueOf(this.f7748d.x), Integer.valueOf(this.f7748d.y), g(this.f7749e), this.f, this.g, this.h, str, String.format(locale, "%s RobloxApp/%s (%s; %s)", str2, this.h, this.i, str2));
            if (!this.l) {
                return str3;
            }
            return str3 + " ChromeOS";
        }

        public String g(String str) {
            StringBuilder sb = new StringBuilder(str.length());
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt <= 31 || cCharAt >= 127) {
                    sb.append('_');
                } else {
                    sb.append(cCharAt);
                }
            }
            return sb.toString();
        }
    }
}
