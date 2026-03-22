package com.roblox.client.components;

import android.view.MotionEvent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f5884a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f5885b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f5886c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f5887d = f5884a;

    public void a(int i) {
        this.f5887d = i;
    }

    public boolean a(MotionEvent motionEvent) {
        int i = this.f5887d;
        if (i > f5884a) {
            if (i == f5885b && (motionEvent.getFlags() & 1) == 1) {
                com.roblox.client.ae.k.c("rbx.input", "WINDOW_IS_OBSCURED");
                return false;
            }
            if (this.f5887d == f5886c && (motionEvent.getFlags() & 2) == 2) {
                com.roblox.client.ae.k.c("rbx.input", "WINDOW_IS_PARTIALLY_OBSCURED");
                return false;
            }
        }
        return true;
    }
}
