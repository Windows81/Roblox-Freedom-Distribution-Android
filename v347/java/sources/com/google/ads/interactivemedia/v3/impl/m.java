package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.impl.g;

/* JADX INFO: loaded from: classes.dex */
final class m extends g.b {
    private final int appVersion;
    private final String packageName;

    m(int i, String str) {
        this.appVersion = i;
        if (str == null) {
            throw new NullPointerException("Null packageName");
        }
        this.packageName = str;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.g.b
    public int appVersion() {
        return this.appVersion;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.g.b
    public String packageName() {
        return this.packageName;
    }

    public String toString() {
        int i = this.appVersion;
        String str = this.packageName;
        return new StringBuilder(String.valueOf(str).length() + 51).append("MarketAppInfo{appVersion=").append(i).append(", packageName=").append(str).append("}").toString();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g.b)) {
            return false;
        }
        g.b bVar = (g.b) obj;
        return this.appVersion == bVar.appVersion() && this.packageName.equals(bVar.packageName());
    }

    public int hashCode() {
        return ((this.appVersion ^ 1000003) * 1000003) ^ this.packageName.hashCode();
    }
}
