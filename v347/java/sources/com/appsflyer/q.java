package com.appsflyer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f2235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2237c;

    q(a aVar, String str, boolean z) {
        this.f2235a = aVar;
        this.f2236b = str;
        this.f2237c = z;
    }

    final String a() {
        return this.f2236b;
    }

    final boolean b() {
        return this.f2237c;
    }

    public final String toString() {
        return String.format("%s,%s", this.f2236b, Boolean.valueOf(this.f2237c));
    }

    enum a {
        GOOGLE(0),
        AMAZON(1);


        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f2241c;

        a(int i) {
            this.f2241c = i;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return String.valueOf(this.f2241c);
        }
    }
}
