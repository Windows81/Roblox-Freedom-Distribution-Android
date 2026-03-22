package com.google.ads.interactivemedia.v3.impl.data;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@com.google.b.a(a = f.class)
public abstract class CompanionData {
    private String companionId;

    public enum a {
        Html,
        Static,
        IFrame
    }

    public abstract String clickThroughUrl();

    public abstract String size();

    public abstract String src();

    public abstract a type();

    public static CompanionData create(String str, String str2, String str3, String str4, a aVar) {
        CompanionData companionDataCreate = create(str2, str3, str4, aVar);
        companionDataCreate.companionId = str;
        return companionDataCreate;
    }

    private static CompanionData create(String str, String str2, String str3, a aVar) {
        return new f(str, str2, str3, aVar);
    }

    public String companionId() {
        return this.companionId;
    }

    public String toString() {
        String strValueOf = String.valueOf(companionId());
        String strValueOf2 = String.valueOf(size());
        String strValueOf3 = String.valueOf(src());
        String strValueOf4 = String.valueOf(clickThroughUrl());
        String strValueOf5 = String.valueOf(type());
        return new StringBuilder(String.valueOf(strValueOf).length() + 66 + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length() + String.valueOf(strValueOf4).length() + String.valueOf(strValueOf5).length()).append("CompanionData [companionId=").append(strValueOf).append(", size=").append(strValueOf2).append(", src=").append(strValueOf3).append(", clickThroughUrl=").append(strValueOf4).append(", type=").append(strValueOf5).append("]").toString();
    }
}
