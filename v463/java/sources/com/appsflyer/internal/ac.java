package com.appsflyer.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ac extends ContentFetcher<String> {
    public ac(Context context) {
        super(context, "com.facebook.katana.provider.AttributionIdProvider", "e3f9e1e0cf99d0e56a055ba65e241b3399f7cea524326b0cdd6ec1327ed0fdc1", 500L);
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    public final String m122() {
        start();
        return (String) super.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.appsflyer.internal.ContentFetcher
    /* JADX INFO: renamed from: ı, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public String query() throws Throwable {
        Cursor cursorQuery;
        Throwable th;
        try {
            ContentResolver contentResolver = this.context.getContentResolver();
            StringBuilder sb = new StringBuilder("content://");
            sb.append(this.authority);
            cursorQuery = contentResolver.query(Uri.parse(sb.toString()), new String[]{"aid"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("aid"));
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th3) {
            cursorQuery = null;
            th = th3;
        }
    }

    @Override // com.appsflyer.internal.ContentFetcher
    public final /* synthetic */ String get() {
        start();
        return (String) super.get();
    }
}
