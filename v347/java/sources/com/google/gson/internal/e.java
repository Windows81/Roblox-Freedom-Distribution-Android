package com.google.gson.internal;

import java.math.BigDecimal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class e extends Number {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6309a;

    public e(String str) {
        this.f6309a = str;
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            return Integer.parseInt(this.f6309a);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.f6309a);
            } catch (NumberFormatException e2) {
                return new BigDecimal(this.f6309a).intValue();
            }
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.f6309a);
        } catch (NumberFormatException e) {
            return new BigDecimal(this.f6309a).longValue();
        }
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.f6309a);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.f6309a);
    }

    public String toString() {
        return this.f6309a;
    }

    public int hashCode() {
        return this.f6309a.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f6309a == eVar.f6309a || this.f6309a.equals(eVar.f6309a);
    }
}
