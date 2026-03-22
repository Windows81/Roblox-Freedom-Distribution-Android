package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.c;
import com.google.android.gms.internal.ads.cm;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public class l {
    private Bundle extras = new Bundle();
    private com.google.android.gms.ads.j zzbkz;
    private String zzceo;
    private String zzdfq;
    private List<c.b> zzdfr;
    private c.b zzdfs;
    private String zzdft;
    private String zzdfu;
    private Double zzdfv;
    private String zzdfw;
    private String zzdfx;
    private boolean zzdfy;
    private View zzdfz;
    private View zzdga;
    private Object zzdgb;
    private boolean zzdgc;
    private boolean zzdgd;

    public View getAdChoicesContent() {
        return this.zzdfz;
    }

    public final String getAdvertiser() {
        return this.zzdfu;
    }

    public final String getBody() {
        return this.zzceo;
    }

    public final String getCallToAction() {
        return this.zzdft;
    }

    public final Bundle getExtras() {
        return this.extras;
    }

    public final String getHeadline() {
        return this.zzdfq;
    }

    public final c.b getIcon() {
        return this.zzdfs;
    }

    public final List<c.b> getImages() {
        return this.zzdfr;
    }

    public final boolean getOverrideClickHandling() {
        return this.zzdgd;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.zzdgc;
    }

    public final String getPrice() {
        return this.zzdfx;
    }

    public final Double getStarRating() {
        return this.zzdfv;
    }

    public final String getStore() {
        return this.zzdfw;
    }

    public final com.google.android.gms.ads.j getVideoController() {
        return this.zzbkz;
    }

    public void handleClick(View view) {
    }

    public boolean hasVideoContent() {
        return this.zzdfy;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(View view) {
        this.zzdfz = view;
    }

    public final void setAdvertiser(String str) {
        this.zzdfu = str;
    }

    public final void setBody(String str) {
        this.zzceo = str;
    }

    public final void setCallToAction(String str) {
        this.zzdft = str;
    }

    public final void setExtras(Bundle bundle) {
        this.extras = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.zzdfy = z;
    }

    public final void setHeadline(String str) {
        this.zzdfq = str;
    }

    public final void setIcon(c.b bVar) {
        this.zzdfs = bVar;
    }

    public final void setImages(List<c.b> list) {
        this.zzdfr = list;
    }

    public void setMediaView(View view) {
        this.zzdga = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.zzdgd = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.zzdgc = z;
    }

    public final void setPrice(String str) {
        this.zzdfx = str;
    }

    public final void setStarRating(Double d2) {
        this.zzdfv = d2;
    }

    public final void setStore(String str) {
        this.zzdfw = str;
    }

    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
    }

    public void untrackView(View view) {
    }

    public final void zza(com.google.android.gms.ads.j jVar) {
        this.zzbkz = jVar;
    }

    public final Object zzbh() {
        return this.zzdgb;
    }

    public final void zzl(Object obj) {
        this.zzdgb = obj;
    }

    public final View zzvy() {
        return this.zzdga;
    }
}
