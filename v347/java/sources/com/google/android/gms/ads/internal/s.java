package com.google.android.gms.ads.internal;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.google.android.gms.internal.ads.ast;
import com.google.android.gms.internal.ads.asv;
import com.google.android.gms.internal.ads.aub;
import com.google.android.gms.internal.ads.auc;
import com.google.android.gms.internal.ads.bbl;
import com.google.android.gms.internal.ads.bcg;
import com.google.android.gms.internal.ads.bck;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.ii;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.rm;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import javax.annotation.ParametersAreNonnullByDefault;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class s {
    public static View a(ii iiVar) {
        if (iiVar == null) {
            jd.c("AdState is null");
            return null;
        }
        if (b(iiVar) && iiVar.f5114b != null) {
            return iiVar.f5114b.getView();
        }
        try {
            com.google.android.gms.b.a aVarA = iiVar.p != null ? iiVar.p.a() : null;
            if (aVarA != null) {
                return (View) com.google.android.gms.b.b.a(aVarA);
            }
            jd.e("View in mediation adapter is null.");
            return null;
        } catch (RemoteException e) {
            jd.c("Could not get View from mediation adapter.", e);
            return null;
        }
    }

    static com.google.android.gms.ads.internal.gmsg.ae<qd> a(bcg bcgVar, bck bckVar, d dVar) {
        return new x(bcgVar, dVar, bckVar);
    }

    private static aub a(Object obj) {
        if (obj instanceof IBinder) {
            return auc.a((IBinder) obj);
        }
        return null;
    }

    private static String a(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap == null) {
            jd.e("Bitmap is null. Returning empty string");
            return "";
        }
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        String strValueOf = String.valueOf("data:image/png;base64,");
        String strValueOf2 = String.valueOf(strEncodeToString);
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    private static String a(aub aubVar) {
        if (aubVar == null) {
            jd.e("Image is null. Returning empty string");
            return "";
        }
        try {
            Uri uriB = aubVar.b();
            if (uriB != null) {
                return uriB.toString();
            }
        } catch (RemoteException e) {
            jd.e("Unable to get image uri. Trying data uri next");
        }
        return b(aubVar);
    }

    private static JSONObject a(Bundle bundle, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (bundle == null || TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject(str);
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (bundle.containsKey(next)) {
                if ("image".equals(jSONObject2.getString(next))) {
                    Object obj = bundle.get(next);
                    if (obj instanceof Bitmap) {
                        jSONObject.put(next, a((Bitmap) obj));
                    } else {
                        jd.e("Invalid type. An image type extra should return a bitmap");
                    }
                } else if (bundle.get(next) instanceof Bitmap) {
                    jd.e("Invalid asset type. Bitmap should be returned only for image type");
                } else {
                    jSONObject.put(next, String.valueOf(bundle.get(next)));
                }
            }
        }
        return jSONObject;
    }

    static final /* synthetic */ void a(ast astVar, String str, qd qdVar, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("headline", astVar.a());
            jSONObject.put("body", astVar.c());
            jSONObject.put("call_to_action", astVar.e());
            jSONObject.put("price", astVar.h());
            jSONObject.put("star_rating", String.valueOf(astVar.f()));
            jSONObject.put("store", astVar.g());
            jSONObject.put("icon", a(astVar.d()));
            JSONArray jSONArray = new JSONArray();
            List listB = astVar.b();
            if (listB != null) {
                Iterator it = listB.iterator();
                while (it.hasNext()) {
                    jSONArray.put(a(a(it.next())));
                }
            }
            jSONObject.put("images", jSONArray);
            jSONObject.put("extras", a(astVar.n(), str));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("assets", jSONObject);
            jSONObject2.put("template_id", "2");
            qdVar.b("google.afma.nativeExpressAds.loadAssets", jSONObject2);
        } catch (JSONException e) {
            jd.c("Exception occurred when loading assets", e);
        }
    }

    static final /* synthetic */ void a(asv asvVar, String str, qd qdVar, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("headline", asvVar.a());
            jSONObject.put("body", asvVar.e());
            jSONObject.put("call_to_action", asvVar.g());
            jSONObject.put("advertiser", asvVar.h());
            jSONObject.put("logo", a(asvVar.f()));
            JSONArray jSONArray = new JSONArray();
            List listB = asvVar.b();
            if (listB != null) {
                Iterator it = listB.iterator();
                while (it.hasNext()) {
                    jSONArray.put(a(a(it.next())));
                }
            }
            jSONObject.put("images", jSONArray);
            jSONObject.put("extras", a(asvVar.n(), str));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("assets", jSONObject);
            jSONObject2.put("template_id", "1");
            qdVar.b("google.afma.nativeExpressAds.loadAssets", jSONObject2);
        } catch (JSONException e) {
            jd.c("Exception occurred when loading assets", e);
        }
    }

    public static boolean a(final qd qdVar, bbl bblVar, CountDownLatch countDownLatch) {
        boolean z;
        try {
            View view = qdVar.getView();
            if (view == null) {
                jd.e("AdWebView is null");
                z = false;
            } else {
                view.setVisibility(4);
                List<String> list = bblVar.f4764b.r;
                if (list == null || list.isEmpty()) {
                    jd.e("No template ids present in mediation response");
                    z = false;
                } else {
                    qdVar.a("/nativeExpressAssetsLoaded", new v(countDownLatch));
                    qdVar.a("/nativeExpressAssetsLoadingFailed", new w(countDownLatch));
                    bcg bcgVarH = bblVar.f4765c.h();
                    bck bckVarI = bblVar.f4765c.i();
                    if (list.contains("2") && bcgVarH != null) {
                        final ast astVar = new ast(bcgVarH.a(), bcgVarH.b(), bcgVarH.c(), bcgVarH.d(), bcgVarH.e(), bcgVarH.f(), bcgVarH.g(), bcgVarH.h(), null, bcgVarH.l(), null, bcgVarH.p() != null ? (View) com.google.android.gms.b.b.a(bcgVarH.p()) : null, bcgVarH.q(), null);
                        final String str = bblVar.f4764b.q;
                        qdVar.v().a(new rm(astVar, str, qdVar) { // from class: com.google.android.gms.ads.internal.t

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            private final ast f3188a;

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            private final String f3189b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            private final qd f3190c;

                            {
                                this.f3188a = astVar;
                                this.f3189b = str;
                                this.f3190c = qdVar;
                            }

                            @Override // com.google.android.gms.internal.ads.rm
                            public final void a(boolean z2) {
                                s.a(this.f3188a, this.f3189b, this.f3190c, z2);
                            }
                        });
                    } else if (!list.contains("1") || bckVarI == null) {
                        jd.e("No matching template id and mapper");
                        z = false;
                    } else {
                        final asv asvVar = new asv(bckVarI.a(), bckVarI.b(), bckVarI.c(), bckVarI.d(), bckVarI.e(), bckVarI.f(), null, bckVarI.j(), null, bckVarI.n() != null ? (View) com.google.android.gms.b.b.a(bckVarI.n()) : null, bckVarI.o(), null);
                        final String str2 = bblVar.f4764b.q;
                        qdVar.v().a(new rm(asvVar, str2, qdVar) { // from class: com.google.android.gms.ads.internal.u

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            private final asv f3191a;

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            private final String f3192b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            private final qd f3193c;

                            {
                                this.f3191a = asvVar;
                                this.f3192b = str2;
                                this.f3193c = qdVar;
                            }

                            @Override // com.google.android.gms.internal.ads.rm
                            public final void a(boolean z2) {
                                s.a(this.f3191a, this.f3192b, this.f3193c, z2);
                            }
                        });
                    }
                    String str3 = bblVar.f4764b.o;
                    String str4 = bblVar.f4764b.p;
                    if (str4 != null) {
                        qdVar.loadDataWithBaseURL(str4, str3, "text/html", Constants.UTF8_NAME, null);
                    } else {
                        qdVar.loadData(str3, "text/html", Constants.UTF8_NAME);
                    }
                    z = true;
                }
            }
        } catch (RemoteException e) {
            jd.c("Unable to invoke load assets", e);
            z = false;
        } catch (RuntimeException e2) {
            countDownLatch.countDown();
            throw e2;
        }
        if (!z) {
            countDownLatch.countDown();
        }
        return z;
    }

    private static String b(aub aubVar) {
        String strA;
        try {
            com.google.android.gms.b.a aVarA = aubVar.a();
            if (aVarA == null) {
                jd.e("Drawable is null. Returning empty string");
                strA = "";
            } else {
                Drawable drawable = (Drawable) com.google.android.gms.b.b.a(aVarA);
                if (drawable instanceof BitmapDrawable) {
                    strA = a(((BitmapDrawable) drawable).getBitmap());
                } else {
                    jd.e("Drawable is not an instance of BitmapDrawable. Returning empty string");
                    strA = "";
                }
            }
            return strA;
        } catch (RemoteException e) {
            jd.e("Unable to get drawable. Returning empty string");
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(qd qdVar) {
        View.OnClickListener onClickListener = qdVar.getOnClickListener();
        if (onClickListener != null) {
            onClickListener.onClick(qdVar.getView());
        }
    }

    public static boolean b(ii iiVar) {
        return (iiVar == null || !iiVar.n || iiVar.o == null || iiVar.o.o == null) ? false : true;
    }
}
