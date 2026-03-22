package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.impl.data.CompanionData;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class f extends CompanionData {
    private final String clickThroughUrl;
    private final String size;
    private final String src;
    private final CompanionData.a type;

    f(String str, String str2, String str3, CompanionData.a aVar) {
        if (str == null) {
            throw new NullPointerException("Null size");
        }
        this.size = str;
        if (str2 == null) {
            throw new NullPointerException("Null src");
        }
        this.src = str2;
        if (str3 == null) {
            throw new NullPointerException("Null clickThroughUrl");
        }
        this.clickThroughUrl = str3;
        if (aVar == null) {
            throw new NullPointerException("Null type");
        }
        this.type = aVar;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.CompanionData
    public String size() {
        return this.size;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.CompanionData
    public String src() {
        return this.src;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.CompanionData
    public String clickThroughUrl() {
        return this.clickThroughUrl;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.CompanionData
    public CompanionData.a type() {
        return this.type;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CompanionData)) {
            return false;
        }
        CompanionData companionData = (CompanionData) obj;
        return this.size.equals(companionData.size()) && this.src.equals(companionData.src()) && this.clickThroughUrl.equals(companionData.clickThroughUrl()) && this.type.equals(companionData.type());
    }

    public int hashCode() {
        return ((((((this.size.hashCode() ^ 1000003) * 1000003) ^ this.src.hashCode()) * 1000003) ^ this.clickThroughUrl.hashCode()) * 1000003) ^ this.type.hashCode();
    }
}
