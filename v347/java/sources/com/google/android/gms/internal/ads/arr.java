package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class arr {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ExecutorService f4410b;
    private String e;
    private Context f;
    private String g;
    private AtomicBoolean h;
    private File i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BlockingQueue<asb> f4409a = new ArrayBlockingQueue(100);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LinkedHashMap<String, String> f4411c = new LinkedHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, arv> f4412d = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    public final void a() throws Throwable {
        FileOutputStream fileOutputStream;
        while (true) {
            try {
                asb asbVarTake = this.f4409a.take();
                String strB = asbVarTake.b();
                if (!TextUtils.isEmpty(strB)) {
                    Map<String, String> mapA = a(this.f4411c, asbVarTake.c());
                    Uri.Builder builderBuildUpon = Uri.parse(this.e).buildUpon();
                    for (Map.Entry<String, String> entry : mapA.entrySet()) {
                        builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
                    }
                    StringBuilder sb = new StringBuilder(builderBuildUpon.build().toString());
                    sb.append("&it=").append(strB);
                    String string = sb.toString();
                    if (this.h.get()) {
                        File file = this.i;
                        if (file != null) {
                            try {
                                fileOutputStream = new FileOutputStream(file, true);
                                try {
                                    try {
                                        fileOutputStream.write(string.getBytes());
                                        fileOutputStream.write(10);
                                        try {
                                            fileOutputStream.close();
                                        } catch (IOException e) {
                                            jd.c("CsiReporter: Cannot close file: sdk_csi_data.txt.", e);
                                        }
                                    } catch (IOException e2) {
                                        e = e2;
                                        jd.c("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (IOException e3) {
                                                jd.c("CsiReporter: Cannot close file: sdk_csi_data.txt.", e3);
                                            }
                                        }
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                        } catch (IOException e4) {
                                            jd.c("CsiReporter: Cannot close file: sdk_csi_data.txt.", e4);
                                        }
                                    }
                                    throw th;
                                }
                            } catch (IOException e5) {
                                e = e5;
                                fileOutputStream = null;
                            } catch (Throwable th2) {
                                th = th2;
                                fileOutputStream = null;
                            }
                        } else {
                            jd.e("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
                        }
                    } else {
                        com.google.android.gms.ads.internal.aw.e();
                        jm.a(this.f, this.g, string);
                    }
                }
            } catch (InterruptedException e6) {
                jd.c("CsiReporter:reporter interrupted", e6);
                return;
            }
        }
    }

    public final arv a(String str) {
        arv arvVar = this.f4412d.get(str);
        return arvVar != null ? arvVar : arv.f4414a;
    }

    final Map<String, String> a(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, a(key).a((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    public final void a(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.f = context;
        this.g = str;
        this.e = str2;
        this.h = new AtomicBoolean(false);
        this.h.set(((Boolean) aoo.f().a(aro.P)).booleanValue());
        if (this.h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.i = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f4411c.put(entry.getKey(), entry.getValue());
        }
        this.f4410b = Executors.newSingleThreadExecutor();
        this.f4410b.execute(new ars(this));
        this.f4412d.put("action", arv.f4415b);
        this.f4412d.put("ad_format", arv.f4415b);
        this.f4412d.put("e", arv.f4416c);
    }

    public final void a(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f4411c.put("e", TextUtils.join(",", list));
    }

    public final boolean a(asb asbVar) {
        return this.f4409a.offer(asbVar);
    }
}
