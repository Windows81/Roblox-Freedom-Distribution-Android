package com.roblox.client.ae;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader;
import com.c.a.ac;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    public static class a implements ac {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f5643a;

        public a() {
            this("CircularBitmapImage:0");
        }

        public a(String str) {
            this.f5643a = str;
        }

        @Override // com.c.a.ac
        public Bitmap a(Bitmap bitmap) {
            return i.a(bitmap, 0);
        }

        @Override // com.c.a.ac
        public String a() {
            return this.f5643a;
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
        float f = iMin;
        float f2 = f / 2.0f;
        if (i == 0) {
            canvas.drawCircle(f2, f2, f2, paint);
        } else if (i == 1) {
            canvas.translate((-iMin) / 4, 0.0f);
            canvas.drawCircle((f2 / 2.0f) + f2, f2, f2, paint);
        } else if (i == 2) {
            canvas.translate((-iMin) / 4, 0.0f);
            canvas.drawCircle(f2 - (f2 / 2.0f), f2, f2, paint);
        } else if (i == 3) {
            canvas.drawCircle(f, f, f, paint);
        } else if (i == 4) {
            canvas.drawCircle(f, 0.0f, f, paint);
        } else if (i == 5) {
            canvas.drawCircle(0.0f, f, f, paint);
        } else if (i == 6) {
            canvas.drawCircle(0.0f, 0.0f, f, paint);
        }
        bitmapCreateBitmap.recycle();
        return bitmapCreateBitmap2;
    }
}
