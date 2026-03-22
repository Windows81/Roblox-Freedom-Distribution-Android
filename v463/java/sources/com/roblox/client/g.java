package com.roblox.client;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum g {
    ERROR_APK_FILE_NOT_FOUND("apk_file_not_found"),
    ERROR_APK_ZIP_FILE_CANT_OPEN("apk_file_cant_open"),
    ERROR_COPYING_FILE_TO_CACHE("copying_file_to_cache"),
    ERROR_SO_FILE_MISSING("so_file_missing");


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6206e;

    g(String str) {
        this.f6206e = str;
    }

    public String a() {
        return this.f6206e;
    }
}
