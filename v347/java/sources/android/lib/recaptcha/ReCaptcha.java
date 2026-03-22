package android.lib.recaptcha;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import java.io.IOException;
import java.util.HashMap;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ReCaptcha extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, String> f162b;

    public interface a {
        void a(boolean z, String str);
    }

    public ReCaptcha(Context context) {
        super(context);
        this.f162b = new HashMap<>();
    }

    public ReCaptcha(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f162b = new HashMap<>();
    }

    public ReCaptcha(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f162b = new HashMap<>();
    }

    protected HttpClient a() {
        return new DefaultHttpClient();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.lib.recaptcha.ReCaptcha$2] */
    public final void a(String str, final a aVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("publicKey cannot be null or empty");
        }
        setImageDrawable(null);
        this.f161a = null;
        final Handler handler = new Handler() { // from class: android.lib.recaptcha.ReCaptcha.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Bitmap bitmap = (Bitmap) message.obj;
                if (bitmap != null) {
                    Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth() * 2, bitmap.getHeight() * 2, true);
                    bitmap.recycle();
                    ReCaptcha.this.setImageBitmap(bitmapCreateScaledBitmap);
                }
                if (aVar != null) {
                    aVar.a(bitmap != null, ReCaptcha.this.f161a);
                }
            }
        };
        new AsyncTask<String, Void, Bitmap>() { // from class: android.lib.recaptcha.ReCaptcha.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Bitmap doInBackground(String... strArr) {
                try {
                    return ReCaptcha.this.a(strArr[0]);
                } catch (android.lib.recaptcha.a e) {
                    Log.e("ReCaptcha", "The downloaded CAPTCHA content is malformed", e);
                    return null;
                } catch (IOException e2) {
                    Log.e("ReCaptcha", "A protocol or network connection problem has occurred", e2);
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onPostExecute(Bitmap bitmap) {
                handler.sendMessage(handler.obtainMessage(0, bitmap));
            }
        }.execute(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap a(String str) throws android.lib.recaptcha.a, IOException {
        HttpClient httpClientA = a();
        try {
            try {
                String strB = b(str);
                Log.d("ReCaptcha", "challenge = " + strB);
                if (strB == null) {
                    throw new android.lib.recaptcha.a("ReCaptcha challenge not found");
                }
                String strA = a(strB, str);
                Log.d("ReCaptcha", "imageToken = " + strA);
                if (strA == null) {
                    throw new android.lib.recaptcha.a("Image token not found");
                }
                this.f161a = strA;
                HttpResponse httpResponseExecute = httpClientA.execute(new HttpGet(String.format("https://www.google.com/recaptcha/api/image?c=%s", strA)));
                try {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpResponseExecute.getEntity().getContent());
                    if (bitmapDecodeStream == null) {
                        throw new android.lib.recaptcha.a("Invalid CAPTCHA image");
                    }
                    return bitmapDecodeStream;
                } finally {
                    if (httpResponseExecute.getEntity() != null) {
                        httpResponseExecute.getEntity().consumeContent();
                    }
                }
            } catch (JSONException e) {
                throw new android.lib.recaptcha.a("Unable to parse challenge response", e);
            }
        } finally {
            httpClientA.getConnectionManager().shutdown();
        }
    }

    private String a(String str, String str2) throws IOException {
        HttpClient httpClientA = a();
        try {
            String str3 = (String) httpClientA.execute(new HttpGet(String.format("https://www.google.com/recaptcha/api/reload?c=%s&k=%s&type=%s", str, str2, "image")), new BasicResponseHandler());
            Log.d("ReCaptcha", "imageTokenResponse = " + str3);
            return a(str3, "('", "',");
        } finally {
            httpClientA.getConnectionManager().shutdown();
        }
    }

    private String b(String str) throws JSONException, IOException {
        if (this.f162b.containsKey(str)) {
            return this.f162b.get(str);
        }
        HttpClient httpClientA = a();
        try {
            String str2 = (String) httpClientA.execute(new HttpGet(String.format("https://www.google.com/recaptcha/api/challenge?k=%s", str)), new BasicResponseHandler());
            Log.d("ReCaptcha", "challengeResponse = " + str2);
            String string = new JSONObject(a(str2, "RecaptchaState = ", "}") + "}").getString("challenge");
            this.f162b.put(str, string);
            return string;
        } finally {
            httpClientA.getConnectionManager().shutdown();
        }
    }

    private static String a(String str, String str2, String str3) {
        int iIndexOf;
        int iIndexOf2;
        if (str == null || str2 == null || str3 == null || (iIndexOf = str.indexOf(str2)) == -1 || (iIndexOf2 = str.indexOf(str3, str2.length() + iIndexOf)) == -1) {
            return null;
        }
        return str.substring(str2.length() + iIndexOf, iIndexOf2);
    }
}
