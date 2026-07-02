package com.roblox.client.feature;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {
    protected String e;

    public abstract void a();

    public abstract void a(FeatureState featureState);

    public abstract void c();

    public abstract boolean d();

    public abstract String g();

    public l(String str) {
        this.e = str;
    }

    public String j() {
        return this.e;
    }

    public void v_() {
    }

    public FeatureState i() {
        return new FeatureState(j());
    }
}
