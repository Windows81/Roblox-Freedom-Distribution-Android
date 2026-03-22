package com.c.a;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import com.c.a.t;
import com.c.a.y;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class o extends g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f3156b = {"orientation"};

    o(Context context) {
        super(context);
    }

    @Override // com.c.a.g, com.c.a.y
    public boolean a(w wVar) {
        Uri uri = wVar.f3207d;
        return "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    @Override // com.c.a.g, com.c.a.y
    public y.a a(w wVar, int i) throws IOException {
        Bitmap thumbnail;
        ContentResolver contentResolver = this.f3128a.getContentResolver();
        int iA = a(contentResolver, wVar.f3207d);
        String type = contentResolver.getType(wVar.f3207d);
        boolean z = type != null && type.startsWith("video/");
        if (wVar.d()) {
            a aVarA = a(wVar.h, wVar.i);
            if (!z && aVarA == a.FULL) {
                return new y.a(null, b(wVar), t.d.DISK, iA);
            }
            long id = ContentUris.parseId(wVar.f3207d);
            BitmapFactory.Options optionsC = c(wVar);
            optionsC.inJustDecodeBounds = true;
            a(wVar.h, wVar.i, aVarA.f3161e, aVarA.f, optionsC, wVar);
            if (z) {
                thumbnail = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, id, aVarA == a.FULL ? 1 : aVarA.f3160d, optionsC);
            } else {
                thumbnail = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, id, aVarA.f3160d, optionsC);
            }
            if (thumbnail != null) {
                return new y.a(thumbnail, null, t.d.DISK, iA);
            }
        }
        return new y.a(null, b(wVar), t.d.DISK, iA);
    }

    static a a(int i, int i2) {
        if (i <= a.MICRO.f3161e && i2 <= a.MICRO.f) {
            return a.MICRO;
        }
        if (i <= a.MINI.f3161e && i2 <= a.MINI.f) {
            return a.MINI;
        }
        return a.FULL;
    }

    static int a(ContentResolver contentResolver, Uri uri) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = contentResolver.query(uri, f3156b, null, null, null);
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                int i = cursorQuery.getInt(0);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return i;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return 0;
        } catch (RuntimeException unused) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return 0;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    enum a {
        MICRO(3, 96, 96),
        MINI(1, 512, 384),
        FULL(2, -1, -1);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f3160d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f3161e;
        final int f;

        a(int i, int i2, int i3) {
            this.f3160d = i;
            this.f3161e = i2;
            this.f = i3;
        }
    }
}
