package com.d.a;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import com.d.a.t;
import com.d.a.y;

/* JADX INFO: loaded from: classes.dex */
class o extends g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f2499b = {"orientation"};

    o(Context context) {
        super(context);
    }

    @Override // com.d.a.g, com.d.a.y
    public boolean a(w wVar) {
        Uri uri = wVar.f2544d;
        return "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    @Override // com.d.a.g, com.d.a.y
    public y.a a(w wVar, int i) throws Throwable {
        Bitmap thumbnail;
        ContentResolver contentResolver = this.f2474a.getContentResolver();
        int iA = a(contentResolver, wVar.f2544d);
        String type = contentResolver.getType(wVar.f2544d);
        boolean z = type != null && type.startsWith("video/");
        if (wVar.d()) {
            a aVarA = a(wVar.h, wVar.i);
            if (!z && aVarA == a.FULL) {
                return new y.a(null, b(wVar), t.d.DISK, iA);
            }
            long id = ContentUris.parseId(wVar.f2544d);
            BitmapFactory.Options optionsC = c(wVar);
            optionsC.inJustDecodeBounds = true;
            a(wVar.h, wVar.i, aVarA.e, aVarA.f, optionsC, wVar);
            if (z) {
                thumbnail = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, id, aVarA == a.FULL ? 1 : aVarA.f2503d, optionsC);
            } else {
                thumbnail = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, id, aVarA.f2503d, optionsC);
            }
            if (thumbnail != null) {
                return new y.a(thumbnail, null, t.d.DISK, iA);
            }
        }
        return new y.a(null, b(wVar), t.d.DISK, iA);
    }

    static a a(int i, int i2) {
        if (i <= a.MICRO.e && i2 <= a.MICRO.f) {
            return a.MICRO;
        }
        if (i <= a.MINI.e && i2 <= a.MINI.f) {
            return a.MINI;
        }
        return a.FULL;
    }

    static int a(ContentResolver contentResolver, Uri uri) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor;
        try {
            cursorQuery = contentResolver.query(uri, f2499b, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        int i = cursorQuery.getInt(0);
                        if (cursorQuery == null) {
                            return i;
                        }
                        cursorQuery.close();
                        return i;
                    }
                } catch (RuntimeException e) {
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    return 0;
                } catch (Throwable th) {
                    th = th;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return 0;
        } catch (RuntimeException e2) {
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
    }

    enum a {
        MICRO(3, 96, 96),
        MINI(1, 512, 384),
        FULL(2, -1, -1);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f2503d;
        final int e;
        final int f;

        a(int i, int i2, int i3) {
            this.f2503d = i;
            this.e = i2;
            this.f = i3;
        }
    }
}
