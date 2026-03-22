package com.google.ads.interactivemedia.v3.a.b;

import java.math.BigDecimal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class f extends Number {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2698a;

    public f(String str) {
        this.f2698a = str;
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            return Integer.parseInt(this.f2698a);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.f2698a);
            } catch (NumberFormatException e2) {
                return new BigDecimal(this.f2698a).intValue();
            }
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.f2698a);
        } catch (NumberFormatException e) {
            return new BigDecimal(this.f2698a).longValue();
        }
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.f2698a);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.f2698a);
    }

    public String toString() {
        return this.f2698a;
    }

    public int hashCode() {
        return this.f2698a.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f2698a == fVar.f2698a || this.f2698a.equals(fVar.f2698a);
    }
}
