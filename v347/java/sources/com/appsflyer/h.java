package com.appsflyer;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static h f2218b = new h();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<a> f2219a = new ArrayList();

    public static h a() {
        return f2218b;
    }

    private h() {
    }

    public void a(String str) {
        this.f2219a.add(new a(str));
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f2220a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f2221b = new Date().getTime();

        public a(String str) {
            this.f2220a = str;
        }
    }
}
