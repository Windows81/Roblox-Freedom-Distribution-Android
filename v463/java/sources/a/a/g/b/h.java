package a.a.g.b;

import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @com.google.gson.a.c(a = "name")
    public String f449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @com.google.gson.a.c(a = "fault")
    private Boolean f450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @com.google.gson.a.c(a = "stack")
    private ArrayList<a.a.g.d> f451c;

    private h(String str, Boolean bool, ArrayList<a.a.g.d> arrayList) {
        this.f451c = arrayList == null ? new ArrayList<>() : arrayList;
        this.f449a = str;
        this.f450b = bool;
    }

    h(Thread thread, ArrayList<a.a.g.d> arrayList, Boolean bool) {
        this(thread.getName().toLowerCase(), bool, arrayList);
    }
}
