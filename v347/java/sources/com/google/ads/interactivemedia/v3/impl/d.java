package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d implements AdEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AdEvent.AdEventType f2837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Ad f2838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, String> f2839c;

    d(AdEvent.AdEventType adEventType, Ad ad, Map<String, String> map) {
        this.f2837a = adEventType;
        this.f2838b = ad;
        this.f2839c = map;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdEvent
    public AdEvent.AdEventType getType() {
        return this.f2837a;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdEvent
    public Ad getAd() {
        return this.f2838b;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdEvent
    public Map<String, String> getAdData() {
        return this.f2839c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f2837a == dVar.f2837a && com.google.c.a.d.a(this.f2838b, dVar.f2838b) && com.google.c.a.d.a(this.f2839c, dVar.f2839c);
    }

    public int hashCode() {
        return com.google.c.a.d.a(this.f2837a, this.f2838b, this.f2839c);
    }

    public String toString() {
        String strValueOf = String.valueOf(String.format("AdEvent[type=%s, ad=%s", this.f2837a, this.f2838b));
        String strValueOf2 = String.valueOf(this.f2839c == null ? "]" : String.format(", adData=%s]", a()));
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    private String a() {
        if (this.f2839c == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder("{");
        Iterator<Map.Entry<String, String>> it = this.f2839c.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            sb.append(next.getKey());
            sb.append(": ");
            sb.append(next.getValue());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("}");
        return sb.toString();
    }
}
