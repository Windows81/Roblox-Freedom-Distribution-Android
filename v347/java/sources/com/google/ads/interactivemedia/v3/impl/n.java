package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.impl.ae;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class n extends ae.a {
    private final String TXXX;

    n(String str) {
        if (str == null) {
            throw new NullPointerException("Null TXXX");
        }
        this.TXXX = str;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.ae.a
    String TXXX() {
        return this.TXXX;
    }

    public String toString() {
        String str = this.TXXX;
        return new StringBuilder(String.valueOf(str).length() + 28).append("TimedMetadataWithKeys{TXXX=").append(str).append("}").toString();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ae.a) {
            return this.TXXX.equals(((ae.a) obj).TXXX());
        }
        return false;
    }

    public int hashCode() {
        return 1000003 ^ this.TXXX.hashCode();
    }
}
