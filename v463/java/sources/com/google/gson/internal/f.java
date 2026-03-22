package com.google.gson.internal;

import java.math.BigDecimal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class f extends Number {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5478a;

    public f(String str) {
        this.f5478a = str;
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            try {
                return Integer.parseInt(this.f5478a);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.f5478a);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(this.f5478a).intValue();
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.f5478a);
        } catch (NumberFormatException unused) {
            return new BigDecimal(this.f5478a).longValue();
        }
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.f5478a);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.f5478a);
    }

    public String toString() {
        return this.f5478a;
    }

    public int hashCode() {
        return this.f5478a.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        String str = this.f5478a;
        String str2 = ((f) obj).f5478a;
        return str == str2 || str.equals(str2);
    }
}
