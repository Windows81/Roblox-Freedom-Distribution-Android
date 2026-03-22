package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class apn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4355b;

    public apn(String str, String str2) {
        this.f4354a = str;
        this.f4355b = str2;
    }

    public final String a() {
        return this.f4354a;
    }

    public final String b() {
        return this.f4355b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        apn apnVar = (apn) obj;
        return TextUtils.equals(this.f4354a, apnVar.f4354a) && TextUtils.equals(this.f4355b, apnVar.f4355b);
    }

    public final int hashCode() {
        return (this.f4354a.hashCode() * 31) + this.f4355b.hashCode();
    }

    public final String toString() {
        String str = this.f4354a;
        String str2 = this.f4355b;
        return new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length()).append("Header[name=").append(str).append(",value=").append(str2).append("]").toString();
    }
}
