package com.roblox.client.util;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader;
import com.d.a.ac;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class f {

    public static class a implements ac {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f7923a;

        public a() {
            this("CircularBitmapImage:0");
        }

        public a(String str) {
            this.f7923a = str;
        }

        @Override // com.d.a.ac
        public Bitmap a(Bitmap bitmap) {
            return f.a(bitmap, 0);
        }

        @Override // com.d.a.ac
        public String a() {
            return this.f7923a;
        }
    }

    public static Bitmap a(Bitmap bitmap, int i) {
        int iMin = Math.min(bitmap.getWidth(), bitmap.getHeight());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, (bitmap.getWidth() - iMin) / 2, (bitmap.getHeight() - iMin) / 2, iMin, iMin);
        if (bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
        }
        Paint paint = new Paint();
        paint.setShader(new BitmapShader(bitmapCreateBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
        paint.setAntiAlias(true);
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap((i == 1 || i == 2) ? iMin / 2 : iMin, iMin, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap2);
        float f = iMin / 2.0f;
        if (i == 0) {
            canvas.drawCircle(f, f, f, paint);
        } else if (i == 1) {
            canvas.translate((-iMin) / 4, 0.0f);
            canvas.drawCircle((f / 2.0f) + f, f, f, paint);
        } else if (i == 2) {
            canvas.translate((-iMin) / 4, 0.0f);
            canvas.drawCircle(f - (f / 2.0f), f, f, paint);
        } else if (i == 3) {
            canvas.drawCircle(iMin, iMin, iMin, paint);
        } else if (i == 4) {
            canvas.drawCircle(iMin, 0.0f, iMin, paint);
        } else if (i == 5) {
            canvas.drawCircle(0.0f, iMin, iMin, paint);
        } else if (i == 6) {
            canvas.drawCircle(0.0f, 0.0f, iMin, paint);
        }
        bitmapCreateBitmap.recycle();
        return bitmapCreateBitmap2;
    }
}
