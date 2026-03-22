package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.c;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h extends f {
    private String zzbhw;
    private List<c.b> zzbhx;
    private String zzbhy;
    private String zzbia;
    private String zzbim;
    private c.b zzdfp;

    public final String getAdvertiser() {
        return this.zzbim;
    }

    public final String getBody() {
        return this.zzbhy;
    }

    public final String getCallToAction() {
        return this.zzbia;
    }

    public final String getHeadline() {
        return this.zzbhw;
    }

    public final List<c.b> getImages() {
        return this.zzbhx;
    }

    public final c.b getLogo() {
        return this.zzdfp;
    }

    public final void setAdvertiser(String str) {
        this.zzbim = str;
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

    public final void setImages(List<c.b> list) {
        this.zzbhx = list;
    }

    public final void setLogo(c.b bVar) {
        this.zzdfp = bVar;
    }
}
