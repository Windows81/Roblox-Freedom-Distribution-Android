package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.c;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class g extends f {
    private String zzbhw;
    private List<c.b> zzbhx;
    private String zzbhy;
    private String zzbia;
    private double zzbib;
    private String zzbic;
    private String zzbid;
    private c.b zzdfo;

    public final String getBody() {
        return this.zzbhy;
    }

    public final String getCallToAction() {
        return this.zzbia;
    }

    public final String getHeadline() {
        return this.zzbhw;
    }

    public final c.b getIcon() {
        return this.zzdfo;
    }

    public final List<c.b> getImages() {
        return this.zzbhx;
    }

    public final String getPrice() {
        return this.zzbid;
    }

    public final double getStarRating() {
        return this.zzbib;
    }

    public final String getStore() {
        return this.zzbic;
    }

    public final void setBody(String str) {
        this.zzbhy = str;
    }

    public final void setCallToAction(String str) {
        this.zzbia = str;
    }

    public final void setHeadline(String str) {
        this.zzbhw = str;
    }

    public final void setIcon(c.b bVar) {
        this.zzdfo = bVar;
    }

    public final void setImages(List<c.b> list) {
        this.zzbhx = list;
    }

    public final void setPrice(String str) {
        this.zzbid = str;
    }

    public final void setStarRating(double d2) {
        this.zzbib = d2;
    }

    public final void setStore(String str) {
        this.zzbic = str;
    }
}
