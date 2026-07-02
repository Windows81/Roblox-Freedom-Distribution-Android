package com.google.gson.internal;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static <T> T a(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }
}
