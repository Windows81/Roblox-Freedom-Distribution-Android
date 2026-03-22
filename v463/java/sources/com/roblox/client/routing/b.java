package com.roblox.client.routing;

import com.roblox.client.p;
import com.roblox.client.s.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {
    public void a() {
        f.b().a("Android-AppRouter-ParseRouteCalled");
    }

    public void a(String str) {
        f.b().a("Android-AppRouter-ErrorInvalidJson");
        p.e("appRouter", "invalidJson", str);
    }

    public void b() {
        f.b().a("Android-AppRouter-RouteHandledNatively");
    }

    public void b(String str) {
        f.b().a("Android-AppRouter-ErrorNoRoutesParsed");
        p.e("appRouter", "noRoutesParsed", str);
    }

    public void c() {
        f.b().a("Android-AppRouter-PostEventWithParams");
    }

    public void d() {
        f.b().a("Android-AppRouter-PostEventWithoutParams");
    }

    public void e() {
        f.b().a("Android-AppRouter-RouteHandledByLua");
    }

    public void a(String str, String str2) {
        f.b().a("Android-AppRouter-ErrorNoParamsFoundForEvent");
        p.e("appRouter", "noParamsFoundForEvent", "Event:" + str + ". URL:" + str2);
    }

    public void b(String str, String str2) {
        f.b().a("Android-AppRouter-ErrorIncorrectParamName");
        p.e("appRouter", "incorrectParamName", "Event:" + str + ". URL:" + str2);
    }

    public void c(String str, String str2) {
        f.b().a("Android-AppRouter-ErrorIncorrectParamValue");
        p.e("appRouter", "incorrectParamValue", "Event:" + str + ". URL:" + str2);
    }
}
