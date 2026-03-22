package com.appsflyer.internal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class w {

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private boolean f304;

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    public String f305;

    w(String str, boolean z) {
        this.f305 = str;
        this.f304 = z;
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    public final boolean m200() {
        return this.f304;
    }

    public final String toString() {
        return String.format("%s,%s", this.f305, Boolean.valueOf(this.f304));
    }

    enum e {
        GOOGLE(0),
        AMAZON(1);


        /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
        private int f309;

        e(int i) {
            this.f309 = i;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return String.valueOf(this.f309);
        }
    }
}
