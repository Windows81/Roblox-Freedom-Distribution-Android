package com.roblox.client.pushnotification;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.d.a.ac;
import com.d.a.t;
import com.roblox.client.RobloxSettings;
import com.roblox.client.util.f;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class s extends AsyncTask<Void, Void, String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ac f7713a = new f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f7714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f7715c;

    public abstract void a(Bitmap bitmap);

    public s(Context context, long j) {
        this.f7714b = context;
        this.f7715c = j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String doInBackground(Void... voidArr) {
        String strA = o.a().a(this.f7715c);
        if (strA == null && this.f7715c > 0) {
            com.roblox.client.http.j jVarB = com.roblox.client.http.b.b(RobloxSettings.NotificationUserProfileImageUrl(this.f7715c), null, null);
            if (jVarB.b() == 200) {
                try {
                    return new JSONObject(jVarB.a()).getString("Url");
                } catch (JSONException e) {
                    e.printStackTrace();
                    return strA;
                }
            }
            return strA;
        }
        return strA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        if (str != null) {
            o.a().a(this.f7715c, str);
            a(this.f7714b, str);
        } else {
            a((Bitmap) null);
        }
    }

    private void a(Context context, String str) {
        final ImageView imageView = new ImageView(context);
        t.a(context).a(str).a(this.f7713a).a(imageView, new com.d.a.e() { // from class: com.roblox.client.pushnotification.s.1
            @Override // com.d.a.e
            public void a() {
                Bitmap bitmap = ((BitmapDrawable) imageView.getDrawable()).getBitmap();
                if (bitmap != null) {
                    s.this.a(bitmap);
                } else {
                    s.this.a((Bitmap) null);
                }
            }

            @Override // com.d.a.e
            public void b() {
                s.this.a((Bitmap) null);
            }
        });
    }
}
