package org.a.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d extends g implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f8209a = "*";

    @Override // org.a.e.b
    public void a(String str) throws IllegalArgumentException {
        if (str == null) {
            throw new IllegalArgumentException("http resource descriptor must not be null");
        }
        this.f8209a = str;
    }

    @Override // org.a.e.a
    public String a() {
        return this.f8209a;
    }
}
