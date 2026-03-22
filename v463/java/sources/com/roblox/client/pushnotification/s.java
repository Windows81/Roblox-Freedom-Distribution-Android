package com.roblox.client.pushnotification;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.c.a.ac;
import com.c.a.t;
import com.roblox.client.ae.i;
import com.roblox.platform.http.returntypes.thumbnails.ThumbnailResponseBody;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class s extends AsyncTask<Void, Void, String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ac f6869a = new i.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f6870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f6871c;

    public abstract void a(Bitmap bitmap);

    public s(Context context, long j) {
        this.f6870b = context;
        this.f6871c = j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String doInBackground(Void... voidArr) {
        ThumbnailResponseBody thumbnailResponseBodyE;
        String strA = o.a().a(this.f6871c);
        if (strA != null || this.f6871c <= 0) {
            return strA;
        }
        try {
            e.l<ThumbnailResponseBody> lVarA = com.roblox.platform.i.a().i().a(Long.toString(this.f6871c), "150x150", "Png", false).a();
            return (!lVarA.d() || (thumbnailResponseBodyE = lVarA.e()) == null || thumbnailResponseBodyE.data == null || thumbnailResponseBodyE.data.get(0) == null) ? strA : thumbnailResponseBodyE.data.get(0).imageUrl;
        } catch (IOException e2) {
            e2.printStackTrace();
            return strA;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        if (str != null) {
            o.a().a(this.f6871c, str);
            a(this.f6870b, str);
        } else {
            a((Bitmap) null);
        }
    }

    private void a(Context context, String str) {
        final ImageView imageView = new ImageView(context);
        t.a(context).a(str).a(this.f6869a).a(imageView, new com.c.a.e() { // from class: com.roblox.client.pushnotification.s.1
            @Override // com.c.a.e
            public void a() {
                Bitmap bitmap = ((BitmapDrawable) imageView.getDrawable()).getBitmap();
                if (bitmap != null) {
                    s.this.a(bitmap);
                } else {
                    s.this.a((Bitmap) null);
                }
            }

            @Override // com.c.a.e
            public void b() {
                s.this.a((Bitmap) null);
            }
        });
    }
}
