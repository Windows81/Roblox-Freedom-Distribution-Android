package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ii implements cw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ew f4545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    eb f4546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f4547c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private db f4548d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private eg f4549e;
    private ie f;
    private cv g;
    private fc h;
    private boolean i = false;
    private boolean j;
    private long k;
    private List<Runnable> l;
    private int m;
    private int n;
    private boolean o;
    private boolean p;
    private boolean q;
    private FileLock r;
    private FileChannel s;
    private List<Long> t;
    private List<Long> u;

    private final int a(FileChannel fileChannel) {
        w();
        if (fileChannel == null || !fileChannel.isOpen()) {
            q().v().a("Bad channel to read from");
            return 0;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0L);
            int i = fileChannel.read(byteBufferAllocate);
            if (i == 4) {
                byteBufferAllocate.flip();
                return byteBufferAllocate.getInt();
            }
            if (i != -1) {
                q().y().a("Unexpected data length. Bytes read", Integer.valueOf(i));
            }
            return 0;
        } catch (IOException e2) {
            q().v().a("Failed to read from channel", e2);
            return 0;
        }
    }

    private final zzdz a(Context context, String str, String str2, boolean z, boolean z2, boolean z3, long j) {
        String installerPackageName;
        int i;
        String str3;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            q().v().a("PackageManager is null, can not log app install information");
            return null;
        }
        try {
            installerPackageName = packageManager.getInstallerPackageName(str);
        } catch (IllegalArgumentException unused) {
            q().v().a("Error retrieving installer package name. appId", dx.a(str));
            installerPackageName = "Unknown";
        }
        if (installerPackageName == null) {
            installerPackageName = "manual_install";
        } else if ("com.android.vending".equals(installerPackageName)) {
            installerPackageName = "";
        }
        String str4 = installerPackageName;
        try {
            PackageInfo packageInfoB = com.google.android.gms.common.d.c.b(context).b(str, 0);
            if (packageInfoB != null) {
                CharSequence charSequenceB = com.google.android.gms.common.d.c.b(context).b(str);
                if (!TextUtils.isEmpty(charSequenceB)) {
                    charSequenceB.toString();
                }
                String str5 = packageInfoB.versionName;
                i = packageInfoB.versionCode;
                str3 = str5;
            } else {
                i = Integer.MIN_VALUE;
                str3 = "Unknown";
            }
            return new zzdz(str, str2, str3, i, str4, 12451L, m().b(context, str), (String) null, z, false, "", 0L, b().j(str) ? j : 0L, 0, z2, z3, false);
        } catch (PackageManager.NameNotFoundException unused2) {
            q().v().a("Error retrieving newly installed package info. appId, appName", dx.a(str), "Unknown");
            return null;
        }
    }

    private final void a(ct ctVar) {
        androidx.c.a aVar;
        w();
        if (TextUtils.isEmpty(ctVar.d())) {
            a(ctVar.b(), 204, null, null, null);
            return;
        }
        String strD = ctVar.d();
        String strC = ctVar.c();
        Uri.Builder builder = new Uri.Builder();
        Uri.Builder builderEncodedAuthority = builder.scheme(dn.f.b()).encodedAuthority(dn.g.b());
        String strValueOf = String.valueOf(strD);
        builderEncodedAuthority.path(strValueOf.length() != 0 ? "config/app/".concat(strValueOf) : new String("config/app/")).appendQueryParameter("app_instance_id", strC).appendQueryParameter("platform", "android").appendQueryParameter("gmp_version", "12451");
        String string = builder.build().toString();
        try {
            URL url = new URL(string);
            q().C().a("Fetching remote configuration", ctVar.b());
            ja jaVarA = d().a(ctVar.b());
            String strB = d().b(ctVar.b());
            if (jaVarA == null || TextUtils.isEmpty(strB)) {
                aVar = null;
            } else {
                androidx.c.a aVar2 = new androidx.c.a();
                aVar2.put("If-Modified-Since", strB);
                aVar = aVar2;
            }
            this.o = true;
            eb ebVarC = C();
            String strB2 = ctVar.b();
            ik ikVar = new ik(this);
            ebVarC.c();
            ebVarC.N();
            com.google.android.gms.common.internal.aa.a(url);
            com.google.android.gms.common.internal.aa.a(ikVar);
            ebVarC.p().b(new ef(ebVarC, strB2, url, null, aVar, ikVar));
        } catch (MalformedURLException unused) {
            q().v().a("Failed to parse config URL. Not fetching. appId", dx.a(ctVar.b()), string);
        }
    }

    private final boolean a(int i, FileChannel fileChannel) {
        w();
        if (fileChannel == null || !fileChannel.isOpen()) {
            q().v().a("Bad channel to read from");
            return false;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.flip();
        try {
            fileChannel.truncate(0L);
            fileChannel.write(byteBufferAllocate);
            fileChannel.force(true);
            if (fileChannel.size() != 4) {
                q().v().a("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            }
            return true;
        } catch (IOException e2) {
            q().v().a("Failed to write to channel", e2);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:123:0x031c A[Catch: all -> 0x0ab2, TryCatch #2 {all -> 0x0ab2, blocks: (B:3:0x000b, B:22:0x007f, B:89:0x0235, B:91:0x0239, B:97:0x0247, B:98:0x0262, B:100:0x026c, B:103:0x0286, B:105:0x02b5, B:111:0x02c9, B:113:0x02d1, B:193:0x0540, B:115:0x02f0, B:117:0x0302, B:178:0x04e6, B:180:0x04f0, B:182:0x04f4, B:185:0x04fa, B:187:0x0507, B:188:0x0519, B:189:0x051d, B:192:0x0539, B:190:0x0524, B:121:0x0318, B:123:0x031c, B:124:0x0321, B:129:0x0334, B:131:0x0340, B:135:0x0358, B:132:0x0348, B:134:0x0350, B:138:0x0365, B:140:0x039f, B:141:0x03d7, B:144:0x0409, B:146:0x040e, B:148:0x041a, B:150:0x0423, B:152:0x042b, B:153:0x0433, B:154:0x0436, B:157:0x043d, B:160:0x0447, B:162:0x0478, B:164:0x0495, B:170:0x04aa, B:167:0x04a1, B:173:0x04b1, B:175:0x04c4, B:176:0x04cf, B:194:0x054a, B:196:0x0558, B:198:0x0564, B:200:0x0572, B:203:0x0577, B:205:0x05b5, B:206:0x05d1, B:208:0x05d6, B:210:0x05e2, B:214:0x05ee, B:217:0x060e, B:211:0x05e8, B:204:0x059a, B:218:0x0624, B:220:0x0640, B:222:0x0659, B:225:0x0669, B:227:0x067c, B:228:0x068b, B:230:0x068f, B:232:0x0699, B:233:0x06a6, B:235:0x06aa, B:237:0x06b2, B:238:0x06c1, B:306:0x08a2, B:241:0x06d7, B:245:0x06e6, B:247:0x06f0, B:249:0x06fe, B:251:0x0702, B:266:0x0732, B:269:0x0744, B:271:0x0763, B:273:0x076d, B:275:0x077d, B:276:0x07b3, B:280:0x07c3, B:282:0x07ca, B:284:0x07d4, B:286:0x07d8, B:288:0x07dc, B:290:0x07e0, B:291:0x07ec, B:293:0x07f2, B:295:0x080d, B:296:0x0816, B:297:0x082d, B:299:0x0848, B:301:0x0872, B:302:0x0880, B:303:0x0891, B:305:0x0898, B:253:0x070a, B:255:0x070e, B:257:0x0716, B:259:0x071a, B:262:0x0724, B:307:0x08b1, B:309:0x08b8, B:310:0x08c0, B:311:0x08c8, B:313:0x08ce, B:315:0x08e4, B:316:0x08f8, B:318:0x08fd, B:320:0x0911, B:321:0x0915, B:323:0x0925, B:324:0x0929, B:325:0x092c, B:327:0x093b, B:343:0x09ad, B:345:0x09b2, B:347:0x09c0, B:350:0x09c5, B:351:0x09c7, B:356:0x09f0, B:352:0x09ca, B:354:0x09d4, B:355:0x09db, B:357:0x09f9, B:358:0x0a10, B:361:0x0a18, B:362:0x0a1d, B:363:0x0a2d, B:365:0x0a47, B:366:0x0a60, B:367:0x0a68, B:372:0x0a8a, B:371:0x0a79, B:328:0x0951, B:330:0x0956, B:332:0x0960, B:334:0x0966, B:340:0x0978, B:342:0x097e, B:375:0x0a9a, B:381:0x0aae, B:382:0x0ab1), top: B:391:0x000b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x039f A[Catch: all -> 0x0ab2, TryCatch #2 {all -> 0x0ab2, blocks: (B:3:0x000b, B:22:0x007f, B:89:0x0235, B:91:0x0239, B:97:0x0247, B:98:0x0262, B:100:0x026c, B:103:0x0286, B:105:0x02b5, B:111:0x02c9, B:113:0x02d1, B:193:0x0540, B:115:0x02f0, B:117:0x0302, B:178:0x04e6, B:180:0x04f0, B:182:0x04f4, B:185:0x04fa, B:187:0x0507, B:188:0x0519, B:189:0x051d, B:192:0x0539, B:190:0x0524, B:121:0x0318, B:123:0x031c, B:124:0x0321, B:129:0x0334, B:131:0x0340, B:135:0x0358, B:132:0x0348, B:134:0x0350, B:138:0x0365, B:140:0x039f, B:141:0x03d7, B:144:0x0409, B:146:0x040e, B:148:0x041a, B:150:0x0423, B:152:0x042b, B:153:0x0433, B:154:0x0436, B:157:0x043d, B:160:0x0447, B:162:0x0478, B:164:0x0495, B:170:0x04aa, B:167:0x04a1, B:173:0x04b1, B:175:0x04c4, B:176:0x04cf, B:194:0x054a, B:196:0x0558, B:198:0x0564, B:200:0x0572, B:203:0x0577, B:205:0x05b5, B:206:0x05d1, B:208:0x05d6, B:210:0x05e2, B:214:0x05ee, B:217:0x060e, B:211:0x05e8, B:204:0x059a, B:218:0x0624, B:220:0x0640, B:222:0x0659, B:225:0x0669, B:227:0x067c, B:228:0x068b, B:230:0x068f, B:232:0x0699, B:233:0x06a6, B:235:0x06aa, B:237:0x06b2, B:238:0x06c1, B:306:0x08a2, B:241:0x06d7, B:245:0x06e6, B:247:0x06f0, B:249:0x06fe, B:251:0x0702, B:266:0x0732, B:269:0x0744, B:271:0x0763, B:273:0x076d, B:275:0x077d, B:276:0x07b3, B:280:0x07c3, B:282:0x07ca, B:284:0x07d4, B:286:0x07d8, B:288:0x07dc, B:290:0x07e0, B:291:0x07ec, B:293:0x07f2, B:295:0x080d, B:296:0x0816, B:297:0x082d, B:299:0x0848, B:301:0x0872, B:302:0x0880, B:303:0x0891, B:305:0x0898, B:253:0x070a, B:255:0x070e, B:257:0x0716, B:259:0x071a, B:262:0x0724, B:307:0x08b1, B:309:0x08b8, B:310:0x08c0, B:311:0x08c8, B:313:0x08ce, B:315:0x08e4, B:316:0x08f8, B:318:0x08fd, B:320:0x0911, B:321:0x0915, B:323:0x0925, B:324:0x0929, B:325:0x092c, B:327:0x093b, B:343:0x09ad, B:345:0x09b2, B:347:0x09c0, B:350:0x09c5, B:351:0x09c7, B:356:0x09f0, B:352:0x09ca, B:354:0x09d4, B:355:0x09db, B:357:0x09f9, B:358:0x0a10, B:361:0x0a18, B:362:0x0a1d, B:363:0x0a2d, B:365:0x0a47, B:366:0x0a60, B:367:0x0a68, B:372:0x0a8a, B:371:0x0a79, B:328:0x0951, B:330:0x0956, B:332:0x0960, B:334:0x0966, B:340:0x0978, B:342:0x097e, B:375:0x0a9a, B:381:0x0aae, B:382:0x0ab1), top: B:391:0x000b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0408  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0495 A[Catch: all -> 0x0ab2, TryCatch #2 {all -> 0x0ab2, blocks: (B:3:0x000b, B:22:0x007f, B:89:0x0235, B:91:0x0239, B:97:0x0247, B:98:0x0262, B:100:0x026c, B:103:0x0286, B:105:0x02b5, B:111:0x02c9, B:113:0x02d1, B:193:0x0540, B:115:0x02f0, B:117:0x0302, B:178:0x04e6, B:180:0x04f0, B:182:0x04f4, B:185:0x04fa, B:187:0x0507, B:188:0x0519, B:189:0x051d, B:192:0x0539, B:190:0x0524, B:121:0x0318, B:123:0x031c, B:124:0x0321, B:129:0x0334, B:131:0x0340, B:135:0x0358, B:132:0x0348, B:134:0x0350, B:138:0x0365, B:140:0x039f, B:141:0x03d7, B:144:0x0409, B:146:0x040e, B:148:0x041a, B:150:0x0423, B:152:0x042b, B:153:0x0433, B:154:0x0436, B:157:0x043d, B:160:0x0447, B:162:0x0478, B:164:0x0495, B:170:0x04aa, B:167:0x04a1, B:173:0x04b1, B:175:0x04c4, B:176:0x04cf, B:194:0x054a, B:196:0x0558, B:198:0x0564, B:200:0x0572, B:203:0x0577, B:205:0x05b5, B:206:0x05d1, B:208:0x05d6, B:210:0x05e2, B:214:0x05ee, B:217:0x060e, B:211:0x05e8, B:204:0x059a, B:218:0x0624, B:220:0x0640, B:222:0x0659, B:225:0x0669, B:227:0x067c, B:228:0x068b, B:230:0x068f, B:232:0x0699, B:233:0x06a6, B:235:0x06aa, B:237:0x06b2, B:238:0x06c1, B:306:0x08a2, B:241:0x06d7, B:245:0x06e6, B:247:0x06f0, B:249:0x06fe, B:251:0x0702, B:266:0x0732, B:269:0x0744, B:271:0x0763, B:273:0x076d, B:275:0x077d, B:276:0x07b3, B:280:0x07c3, B:282:0x07ca, B:284:0x07d4, B:286:0x07d8, B:288:0x07dc, B:290:0x07e0, B:291:0x07ec, B:293:0x07f2, B:295:0x080d, B:296:0x0816, B:297:0x082d, B:299:0x0848, B:301:0x0872, B:302:0x0880, B:303:0x0891, B:305:0x0898, B:253:0x070a, B:255:0x070e, B:257:0x0716, B:259:0x071a, B:262:0x0724, B:307:0x08b1, B:309:0x08b8, B:310:0x08c0, B:311:0x08c8, B:313:0x08ce, B:315:0x08e4, B:316:0x08f8, B:318:0x08fd, B:320:0x0911, B:321:0x0915, B:323:0x0925, B:324:0x0929, B:325:0x092c, B:327:0x093b, B:343:0x09ad, B:345:0x09b2, B:347:0x09c0, B:350:0x09c5, B:351:0x09c7, B:356:0x09f0, B:352:0x09ca, B:354:0x09d4, B:355:0x09db, B:357:0x09f9, B:358:0x0a10, B:361:0x0a18, B:362:0x0a1d, B:363:0x0a2d, B:365:0x0a47, B:366:0x0a60, B:367:0x0a68, B:372:0x0a8a, B:371:0x0a79, B:328:0x0951, B:330:0x0956, B:332:0x0960, B:334:0x0966, B:340:0x0978, B:342:0x097e, B:375:0x0a9a, B:381:0x0aae, B:382:0x0ab1), top: B:391:0x000b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x04c4 A[Catch: all -> 0x0ab2, TryCatch #2 {all -> 0x0ab2, blocks: (B:3:0x000b, B:22:0x007f, B:89:0x0235, B:91:0x0239, B:97:0x0247, B:98:0x0262, B:100:0x026c, B:103:0x0286, B:105:0x02b5, B:111:0x02c9, B:113:0x02d1, B:193:0x0540, B:115:0x02f0, B:117:0x0302, B:178:0x04e6, B:180:0x04f0, B:182:0x04f4, B:185:0x04fa, B:187:0x0507, B:188:0x0519, B:189:0x051d, B:192:0x0539, B:190:0x0524, B:121:0x0318, B:123:0x031c, B:124:0x0321, B:129:0x0334, B:131:0x0340, B:135:0x0358, B:132:0x0348, B:134:0x0350, B:138:0x0365, B:140:0x039f, B:141:0x03d7, B:144:0x0409, B:146:0x040e, B:148:0x041a, B:150:0x0423, B:152:0x042b, B:153:0x0433, B:154:0x0436, B:157:0x043d, B:160:0x0447, B:162:0x0478, B:164:0x0495, B:170:0x04aa, B:167:0x04a1, B:173:0x04b1, B:175:0x04c4, B:176:0x04cf, B:194:0x054a, B:196:0x0558, B:198:0x0564, B:200:0x0572, B:203:0x0577, B:205:0x05b5, B:206:0x05d1, B:208:0x05d6, B:210:0x05e2, B:214:0x05ee, B:217:0x060e, B:211:0x05e8, B:204:0x059a, B:218:0x0624, B:220:0x0640, B:222:0x0659, B:225:0x0669, B:227:0x067c, B:228:0x068b, B:230:0x068f, B:232:0x0699, B:233:0x06a6, B:235:0x06aa, B:237:0x06b2, B:238:0x06c1, B:306:0x08a2, B:241:0x06d7, B:245:0x06e6, B:247:0x06f0, B:249:0x06fe, B:251:0x0702, B:266:0x0732, B:269:0x0744, B:271:0x0763, B:273:0x076d, B:275:0x077d, B:276:0x07b3, B:280:0x07c3, B:282:0x07ca, B:284:0x07d4, B:286:0x07d8, B:288:0x07dc, B:290:0x07e0, B:291:0x07ec, B:293:0x07f2, B:295:0x080d, B:296:0x0816, B:297:0x082d, B:299:0x0848, B:301:0x0872, B:302:0x0880, B:303:0x0891, B:305:0x0898, B:253:0x070a, B:255:0x070e, B:257:0x0716, B:259:0x071a, B:262:0x0724, B:307:0x08b1, B:309:0x08b8, B:310:0x08c0, B:311:0x08c8, B:313:0x08ce, B:315:0x08e4, B:316:0x08f8, B:318:0x08fd, B:320:0x0911, B:321:0x0915, B:323:0x0925, B:324:0x0929, B:325:0x092c, B:327:0x093b, B:343:0x09ad, B:345:0x09b2, B:347:0x09c0, B:350:0x09c5, B:351:0x09c7, B:356:0x09f0, B:352:0x09ca, B:354:0x09d4, B:355:0x09db, B:357:0x09f9, B:358:0x0a10, B:361:0x0a18, B:362:0x0a1d, B:363:0x0a2d, B:365:0x0a47, B:366:0x0a60, B:367:0x0a68, B:372:0x0a8a, B:371:0x0a79, B:328:0x0951, B:330:0x0956, B:332:0x0960, B:334:0x0966, B:340:0x0978, B:342:0x097e, B:375:0x0a9a, B:381:0x0aae, B:382:0x0ab1), top: B:391:0x000b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x04cf A[Catch: all -> 0x0ab2, TryCatch #2 {all -> 0x0ab2, blocks: (B:3:0x000b, B:22:0x007f, B:89:0x0235, B:91:0x0239, B:97:0x0247, B:98:0x0262, B:100:0x026c, B:103:0x0286, B:105:0x02b5, B:111:0x02c9, B:113:0x02d1, B:193:0x0540, B:115:0x02f0, B:117:0x0302, B:178:0x04e6, B:180:0x04f0, B:182:0x04f4, B:185:0x04fa, B:187:0x0507, B:188:0x0519, B:189:0x051d, B:192:0x0539, B:190:0x0524, B:121:0x0318, B:123:0x031c, B:124:0x0321, B:129:0x0334, B:131:0x0340, B:135:0x0358, B:132:0x0348, B:134:0x0350, B:138:0x0365, B:140:0x039f, B:141:0x03d7, B:144:0x0409, B:146:0x040e, B:148:0x041a, B:150:0x0423, B:152:0x042b, B:153:0x0433, B:154:0x0436, B:157:0x043d, B:160:0x0447, B:162:0x0478, B:164:0x0495, B:170:0x04aa, B:167:0x04a1, B:173:0x04b1, B:175:0x04c4, B:176:0x04cf, B:194:0x054a, B:196:0x0558, B:198:0x0564, B:200:0x0572, B:203:0x0577, B:205:0x05b5, B:206:0x05d1, B:208:0x05d6, B:210:0x05e2, B:214:0x05ee, B:217:0x060e, B:211:0x05e8, B:204:0x059a, B:218:0x0624, B:220:0x0640, B:222:0x0659, B:225:0x0669, B:227:0x067c, B:228:0x068b, B:230:0x068f, B:232:0x0699, B:233:0x06a6, B:235:0x06aa, B:237:0x06b2, B:238:0x06c1, B:306:0x08a2, B:241:0x06d7, B:245:0x06e6, B:247:0x06f0, B:249:0x06fe, B:251:0x0702, B:266:0x0732, B:269:0x0744, B:271:0x0763, B:273:0x076d, B:275:0x077d, B:276:0x07b3, B:280:0x07c3, B:282:0x07ca, B:284:0x07d4, B:286:0x07d8, B:288:0x07dc, B:290:0x07e0, B:291:0x07ec, B:293:0x07f2, B:295:0x080d, B:296:0x0816, B:297:0x082d, B:299:0x0848, B:301:0x0872, B:302:0x0880, B:303:0x0891, B:305:0x0898, B:253:0x070a, B:255:0x070e, B:257:0x0716, B:259:0x071a, B:262:0x0724, B:307:0x08b1, B:309:0x08b8, B:310:0x08c0, B:311:0x08c8, B:313:0x08ce, B:315:0x08e4, B:316:0x08f8, B:318:0x08fd, B:320:0x0911, B:321:0x0915, B:323:0x0925, B:324:0x0929, B:325:0x092c, B:327:0x093b, B:343:0x09ad, B:345:0x09b2, B:347:0x09c0, B:350:0x09c5, B:351:0x09c7, B:356:0x09f0, B:352:0x09ca, B:354:0x09d4, B:355:0x09db, B:357:0x09f9, B:358:0x0a10, B:361:0x0a18, B:362:0x0a1d, B:363:0x0a2d, B:365:0x0a47, B:366:0x0a60, B:367:0x0a68, B:372:0x0a8a, B:371:0x0a79, B:328:0x0951, B:330:0x0956, B:332:0x0960, B:334:0x0966, B:340:0x0978, B:342:0x097e, B:375:0x0a9a, B:381:0x0aae, B:382:0x0ab1), top: B:391:0x000b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x04e6 A[Catch: all -> 0x0ab2, TryCatch #2 {all -> 0x0ab2, blocks: (B:3:0x000b, B:22:0x007f, B:89:0x0235, B:91:0x0239, B:97:0x0247, B:98:0x0262, B:100:0x026c, B:103:0x0286, B:105:0x02b5, B:111:0x02c9, B:113:0x02d1, B:193:0x0540, B:115:0x02f0, B:117:0x0302, B:178:0x04e6, B:180:0x04f0, B:182:0x04f4, B:185:0x04fa, B:187:0x0507, B:188:0x0519, B:189:0x051d, B:192:0x0539, B:190:0x0524, B:121:0x0318, B:123:0x031c, B:124:0x0321, B:129:0x0334, B:131:0x0340, B:135:0x0358, B:132:0x0348, B:134:0x0350, B:138:0x0365, B:140:0x039f, B:141:0x03d7, B:144:0x0409, B:146:0x040e, B:148:0x041a, B:150:0x0423, B:152:0x042b, B:153:0x0433, B:154:0x0436, B:157:0x043d, B:160:0x0447, B:162:0x0478, B:164:0x0495, B:170:0x04aa, B:167:0x04a1, B:173:0x04b1, B:175:0x04c4, B:176:0x04cf, B:194:0x054a, B:196:0x0558, B:198:0x0564, B:200:0x0572, B:203:0x0577, B:205:0x05b5, B:206:0x05d1, B:208:0x05d6, B:210:0x05e2, B:214:0x05ee, B:217:0x060e, B:211:0x05e8, B:204:0x059a, B:218:0x0624, B:220:0x0640, B:222:0x0659, B:225:0x0669, B:227:0x067c, B:228:0x068b, B:230:0x068f, B:232:0x0699, B:233:0x06a6, B:235:0x06aa, B:237:0x06b2, B:238:0x06c1, B:306:0x08a2, B:241:0x06d7, B:245:0x06e6, B:247:0x06f0, B:249:0x06fe, B:251:0x0702, B:266:0x0732, B:269:0x0744, B:271:0x0763, B:273:0x076d, B:275:0x077d, B:276:0x07b3, B:280:0x07c3, B:282:0x07ca, B:284:0x07d4, B:286:0x07d8, B:288:0x07dc, B:290:0x07e0, B:291:0x07ec, B:293:0x07f2, B:295:0x080d, B:296:0x0816, B:297:0x082d, B:299:0x0848, B:301:0x0872, B:302:0x0880, B:303:0x0891, B:305:0x0898, B:253:0x070a, B:255:0x070e, B:257:0x0716, B:259:0x071a, B:262:0x0724, B:307:0x08b1, B:309:0x08b8, B:310:0x08c0, B:311:0x08c8, B:313:0x08ce, B:315:0x08e4, B:316:0x08f8, B:318:0x08fd, B:320:0x0911, B:321:0x0915, B:323:0x0925, B:324:0x0929, B:325:0x092c, B:327:0x093b, B:343:0x09ad, B:345:0x09b2, B:347:0x09c0, B:350:0x09c5, B:351:0x09c7, B:356:0x09f0, B:352:0x09ca, B:354:0x09d4, B:355:0x09db, B:357:0x09f9, B:358:0x0a10, B:361:0x0a18, B:362:0x0a1d, B:363:0x0a2d, B:365:0x0a47, B:366:0x0a60, B:367:0x0a68, B:372:0x0a8a, B:371:0x0a79, B:328:0x0951, B:330:0x0956, B:332:0x0960, B:334:0x0966, B:340:0x0978, B:342:0x097e, B:375:0x0a9a, B:381:0x0aae, B:382:0x0ab1), top: B:391:0x000b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0537  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007f A[Catch: all -> 0x0ab2, PHI: r4
  0x007f: PHI (r4v52 android.database.Cursor) = 
  (r4v5 android.database.Cursor)
  (r4v62 android.database.Cursor)
  (r4v66 android.database.Cursor)
  (r4v67 android.database.Cursor)
  (r4v67 android.database.Cursor)
  (r4v67 android.database.Cursor)
  (r4v66 android.database.Cursor)
  (r4v73 android.database.Cursor)
 binds: [B:87:0x0231, B:39:0x00d6, B:75:0x020d, B:72:0x01f8, B:66:0x01db, B:60:0x01ab, B:46:0x011f, B:21:0x007d] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0ab2, blocks: (B:3:0x000b, B:22:0x007f, B:89:0x0235, B:91:0x0239, B:97:0x0247, B:98:0x0262, B:100:0x026c, B:103:0x0286, B:105:0x02b5, B:111:0x02c9, B:113:0x02d1, B:193:0x0540, B:115:0x02f0, B:117:0x0302, B:178:0x04e6, B:180:0x04f0, B:182:0x04f4, B:185:0x04fa, B:187:0x0507, B:188:0x0519, B:189:0x051d, B:192:0x0539, B:190:0x0524, B:121:0x0318, B:123:0x031c, B:124:0x0321, B:129:0x0334, B:131:0x0340, B:135:0x0358, B:132:0x0348, B:134:0x0350, B:138:0x0365, B:140:0x039f, B:141:0x03d7, B:144:0x0409, B:146:0x040e, B:148:0x041a, B:150:0x0423, B:152:0x042b, B:153:0x0433, B:154:0x0436, B:157:0x043d, B:160:0x0447, B:162:0x0478, B:164:0x0495, B:170:0x04aa, B:167:0x04a1, B:173:0x04b1, B:175:0x04c4, B:176:0x04cf, B:194:0x054a, B:196:0x0558, B:198:0x0564, B:200:0x0572, B:203:0x0577, B:205:0x05b5, B:206:0x05d1, B:208:0x05d6, B:210:0x05e2, B:214:0x05ee, B:217:0x060e, B:211:0x05e8, B:204:0x059a, B:218:0x0624, B:220:0x0640, B:222:0x0659, B:225:0x0669, B:227:0x067c, B:228:0x068b, B:230:0x068f, B:232:0x0699, B:233:0x06a6, B:235:0x06aa, B:237:0x06b2, B:238:0x06c1, B:306:0x08a2, B:241:0x06d7, B:245:0x06e6, B:247:0x06f0, B:249:0x06fe, B:251:0x0702, B:266:0x0732, B:269:0x0744, B:271:0x0763, B:273:0x076d, B:275:0x077d, B:276:0x07b3, B:280:0x07c3, B:282:0x07ca, B:284:0x07d4, B:286:0x07d8, B:288:0x07dc, B:290:0x07e0, B:291:0x07ec, B:293:0x07f2, B:295:0x080d, B:296:0x0816, B:297:0x082d, B:299:0x0848, B:301:0x0872, B:302:0x0880, B:303:0x0891, B:305:0x0898, B:253:0x070a, B:255:0x070e, B:257:0x0716, B:259:0x071a, B:262:0x0724, B:307:0x08b1, B:309:0x08b8, B:310:0x08c0, B:311:0x08c8, B:313:0x08ce, B:315:0x08e4, B:316:0x08f8, B:318:0x08fd, B:320:0x0911, B:321:0x0915, B:323:0x0925, B:324:0x0929, B:325:0x092c, B:327:0x093b, B:343:0x09ad, B:345:0x09b2, B:347:0x09c0, B:350:0x09c5, B:351:0x09c7, B:356:0x09f0, B:352:0x09ca, B:354:0x09d4, B:355:0x09db, B:357:0x09f9, B:358:0x0a10, B:361:0x0a18, B:362:0x0a1d, B:363:0x0a2d, B:365:0x0a47, B:366:0x0a60, B:367:0x0a68, B:372:0x0a8a, B:371:0x0a79, B:328:0x0951, B:330:0x0956, B:332:0x0960, B:334:0x0966, B:340:0x0978, B:342:0x097e, B:375:0x0a9a, B:381:0x0aae, B:382:0x0ab1), top: B:391:0x000b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0a9a A[Catch: all -> 0x0ab2, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0ab2, blocks: (B:3:0x000b, B:22:0x007f, B:89:0x0235, B:91:0x0239, B:97:0x0247, B:98:0x0262, B:100:0x026c, B:103:0x0286, B:105:0x02b5, B:111:0x02c9, B:113:0x02d1, B:193:0x0540, B:115:0x02f0, B:117:0x0302, B:178:0x04e6, B:180:0x04f0, B:182:0x04f4, B:185:0x04fa, B:187:0x0507, B:188:0x0519, B:189:0x051d, B:192:0x0539, B:190:0x0524, B:121:0x0318, B:123:0x031c, B:124:0x0321, B:129:0x0334, B:131:0x0340, B:135:0x0358, B:132:0x0348, B:134:0x0350, B:138:0x0365, B:140:0x039f, B:141:0x03d7, B:144:0x0409, B:146:0x040e, B:148:0x041a, B:150:0x0423, B:152:0x042b, B:153:0x0433, B:154:0x0436, B:157:0x043d, B:160:0x0447, B:162:0x0478, B:164:0x0495, B:170:0x04aa, B:167:0x04a1, B:173:0x04b1, B:175:0x04c4, B:176:0x04cf, B:194:0x054a, B:196:0x0558, B:198:0x0564, B:200:0x0572, B:203:0x0577, B:205:0x05b5, B:206:0x05d1, B:208:0x05d6, B:210:0x05e2, B:214:0x05ee, B:217:0x060e, B:211:0x05e8, B:204:0x059a, B:218:0x0624, B:220:0x0640, B:222:0x0659, B:225:0x0669, B:227:0x067c, B:228:0x068b, B:230:0x068f, B:232:0x0699, B:233:0x06a6, B:235:0x06aa, B:237:0x06b2, B:238:0x06c1, B:306:0x08a2, B:241:0x06d7, B:245:0x06e6, B:247:0x06f0, B:249:0x06fe, B:251:0x0702, B:266:0x0732, B:269:0x0744, B:271:0x0763, B:273:0x076d, B:275:0x077d, B:276:0x07b3, B:280:0x07c3, B:282:0x07ca, B:284:0x07d4, B:286:0x07d8, B:288:0x07dc, B:290:0x07e0, B:291:0x07ec, B:293:0x07f2, B:295:0x080d, B:296:0x0816, B:297:0x082d, B:299:0x0848, B:301:0x0872, B:302:0x0880, B:303:0x0891, B:305:0x0898, B:253:0x070a, B:255:0x070e, B:257:0x0716, B:259:0x071a, B:262:0x0724, B:307:0x08b1, B:309:0x08b8, B:310:0x08c0, B:311:0x08c8, B:313:0x08ce, B:315:0x08e4, B:316:0x08f8, B:318:0x08fd, B:320:0x0911, B:321:0x0915, B:323:0x0925, B:324:0x0929, B:325:0x092c, B:327:0x093b, B:343:0x09ad, B:345:0x09b2, B:347:0x09c0, B:350:0x09c5, B:351:0x09c7, B:356:0x09f0, B:352:0x09ca, B:354:0x09d4, B:355:0x09db, B:357:0x09f9, B:358:0x0a10, B:361:0x0a18, B:362:0x0a1d, B:363:0x0a2d, B:365:0x0a47, B:366:0x0a60, B:367:0x0a68, B:372:0x0a8a, B:371:0x0a79, B:328:0x0951, B:330:0x0956, B:332:0x0960, B:334:0x0966, B:340:0x0978, B:342:0x097e, B:375:0x0a9a, B:381:0x0aae, B:382:0x0ab1), top: B:391:0x000b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0aae A[Catch: all -> 0x0ab2, TRY_ENTER, TryCatch #2 {all -> 0x0ab2, blocks: (B:3:0x000b, B:22:0x007f, B:89:0x0235, B:91:0x0239, B:97:0x0247, B:98:0x0262, B:100:0x026c, B:103:0x0286, B:105:0x02b5, B:111:0x02c9, B:113:0x02d1, B:193:0x0540, B:115:0x02f0, B:117:0x0302, B:178:0x04e6, B:180:0x04f0, B:182:0x04f4, B:185:0x04fa, B:187:0x0507, B:188:0x0519, B:189:0x051d, B:192:0x0539, B:190:0x0524, B:121:0x0318, B:123:0x031c, B:124:0x0321, B:129:0x0334, B:131:0x0340, B:135:0x0358, B:132:0x0348, B:134:0x0350, B:138:0x0365, B:140:0x039f, B:141:0x03d7, B:144:0x0409, B:146:0x040e, B:148:0x041a, B:150:0x0423, B:152:0x042b, B:153:0x0433, B:154:0x0436, B:157:0x043d, B:160:0x0447, B:162:0x0478, B:164:0x0495, B:170:0x04aa, B:167:0x04a1, B:173:0x04b1, B:175:0x04c4, B:176:0x04cf, B:194:0x054a, B:196:0x0558, B:198:0x0564, B:200:0x0572, B:203:0x0577, B:205:0x05b5, B:206:0x05d1, B:208:0x05d6, B:210:0x05e2, B:214:0x05ee, B:217:0x060e, B:211:0x05e8, B:204:0x059a, B:218:0x0624, B:220:0x0640, B:222:0x0659, B:225:0x0669, B:227:0x067c, B:228:0x068b, B:230:0x068f, B:232:0x0699, B:233:0x06a6, B:235:0x06aa, B:237:0x06b2, B:238:0x06c1, B:306:0x08a2, B:241:0x06d7, B:245:0x06e6, B:247:0x06f0, B:249:0x06fe, B:251:0x0702, B:266:0x0732, B:269:0x0744, B:271:0x0763, B:273:0x076d, B:275:0x077d, B:276:0x07b3, B:280:0x07c3, B:282:0x07ca, B:284:0x07d4, B:286:0x07d8, B:288:0x07dc, B:290:0x07e0, B:291:0x07ec, B:293:0x07f2, B:295:0x080d, B:296:0x0816, B:297:0x082d, B:299:0x0848, B:301:0x0872, B:302:0x0880, B:303:0x0891, B:305:0x0898, B:253:0x070a, B:255:0x070e, B:257:0x0716, B:259:0x071a, B:262:0x0724, B:307:0x08b1, B:309:0x08b8, B:310:0x08c0, B:311:0x08c8, B:313:0x08ce, B:315:0x08e4, B:316:0x08f8, B:318:0x08fd, B:320:0x0911, B:321:0x0915, B:323:0x0925, B:324:0x0929, B:325:0x092c, B:327:0x093b, B:343:0x09ad, B:345:0x09b2, B:347:0x09c0, B:350:0x09c5, B:351:0x09c7, B:356:0x09f0, B:352:0x09ca, B:354:0x09d4, B:355:0x09db, B:357:0x09f9, B:358:0x0a10, B:361:0x0a18, B:362:0x0a1d, B:363:0x0a2d, B:365:0x0a47, B:366:0x0a60, B:367:0x0a68, B:372:0x0a8a, B:371:0x0a79, B:328:0x0951, B:330:0x0956, B:332:0x0960, B:334:0x0966, B:340:0x0978, B:342:0x097e, B:375:0x0a9a, B:381:0x0aae, B:382:0x0ab1), top: B:391:0x000b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0361 A[EDGE_INSN: B:403:0x0361->B:136:0x0361 BREAK  A[LOOP:1: B:126:0x032a->B:135:0x0358], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:434:? A[Catch: all -> 0x0ab2, SYNTHETIC, TRY_LEAVE, TryCatch #2 {all -> 0x0ab2, blocks: (B:3:0x000b, B:22:0x007f, B:89:0x0235, B:91:0x0239, B:97:0x0247, B:98:0x0262, B:100:0x026c, B:103:0x0286, B:105:0x02b5, B:111:0x02c9, B:113:0x02d1, B:193:0x0540, B:115:0x02f0, B:117:0x0302, B:178:0x04e6, B:180:0x04f0, B:182:0x04f4, B:185:0x04fa, B:187:0x0507, B:188:0x0519, B:189:0x051d, B:192:0x0539, B:190:0x0524, B:121:0x0318, B:123:0x031c, B:124:0x0321, B:129:0x0334, B:131:0x0340, B:135:0x0358, B:132:0x0348, B:134:0x0350, B:138:0x0365, B:140:0x039f, B:141:0x03d7, B:144:0x0409, B:146:0x040e, B:148:0x041a, B:150:0x0423, B:152:0x042b, B:153:0x0433, B:154:0x0436, B:157:0x043d, B:160:0x0447, B:162:0x0478, B:164:0x0495, B:170:0x04aa, B:167:0x04a1, B:173:0x04b1, B:175:0x04c4, B:176:0x04cf, B:194:0x054a, B:196:0x0558, B:198:0x0564, B:200:0x0572, B:203:0x0577, B:205:0x05b5, B:206:0x05d1, B:208:0x05d6, B:210:0x05e2, B:214:0x05ee, B:217:0x060e, B:211:0x05e8, B:204:0x059a, B:218:0x0624, B:220:0x0640, B:222:0x0659, B:225:0x0669, B:227:0x067c, B:228:0x068b, B:230:0x068f, B:232:0x0699, B:233:0x06a6, B:235:0x06aa, B:237:0x06b2, B:238:0x06c1, B:306:0x08a2, B:241:0x06d7, B:245:0x06e6, B:247:0x06f0, B:249:0x06fe, B:251:0x0702, B:266:0x0732, B:269:0x0744, B:271:0x0763, B:273:0x076d, B:275:0x077d, B:276:0x07b3, B:280:0x07c3, B:282:0x07ca, B:284:0x07d4, B:286:0x07d8, B:288:0x07dc, B:290:0x07e0, B:291:0x07ec, B:293:0x07f2, B:295:0x080d, B:296:0x0816, B:297:0x082d, B:299:0x0848, B:301:0x0872, B:302:0x0880, B:303:0x0891, B:305:0x0898, B:253:0x070a, B:255:0x070e, B:257:0x0716, B:259:0x071a, B:262:0x0724, B:307:0x08b1, B:309:0x08b8, B:310:0x08c0, B:311:0x08c8, B:313:0x08ce, B:315:0x08e4, B:316:0x08f8, B:318:0x08fd, B:320:0x0911, B:321:0x0915, B:323:0x0925, B:324:0x0929, B:325:0x092c, B:327:0x093b, B:343:0x09ad, B:345:0x09b2, B:347:0x09c0, B:350:0x09c5, B:351:0x09c7, B:356:0x09f0, B:352:0x09ca, B:354:0x09d4, B:355:0x09db, B:357:0x09f9, B:358:0x0a10, B:361:0x0a18, B:362:0x0a1d, B:363:0x0a2d, B:365:0x0a47, B:366:0x0a60, B:367:0x0a68, B:372:0x0a8a, B:371:0x0a79, B:328:0x0951, B:330:0x0956, B:332:0x0960, B:334:0x0966, B:340:0x0978, B:342:0x097e, B:375:0x0a9a, B:381:0x0aae, B:382:0x0ab1), top: B:391:0x000b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x010c A[Catch: SQLiteException -> 0x0211, all -> 0x0aaa, TryCatch #6 {all -> 0x0aaa, blocks: (B:10:0x0035, B:19:0x0077, B:24:0x0084, B:25:0x0088, B:42:0x00e1, B:44:0x010c, B:47:0x0121, B:48:0x012f, B:49:0x0132, B:51:0x0138, B:52:0x0149, B:54:0x0156, B:56:0x0177, B:58:0x0198, B:61:0x01ad, B:62:0x01bf, B:63:0x01c2, B:69:0x01f0, B:68:0x01de, B:55:0x016a, B:74:0x01fb, B:86:0x0220, B:36:0x00ce, B:40:0x00d7), top: B:396:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0121 A[Catch: SQLiteException -> 0x0211, all -> 0x0aaa, TRY_LEAVE, TryCatch #6 {all -> 0x0aaa, blocks: (B:10:0x0035, B:19:0x0077, B:24:0x0084, B:25:0x0088, B:42:0x00e1, B:44:0x010c, B:47:0x0121, B:48:0x012f, B:49:0x0132, B:51:0x0138, B:52:0x0149, B:54:0x0156, B:56:0x0177, B:58:0x0198, B:61:0x01ad, B:62:0x01bf, B:63:0x01c2, B:69:0x01f0, B:68:0x01de, B:55:0x016a, B:74:0x01fb, B:86:0x0220, B:36:0x00ce, B:40:0x00d7), top: B:396:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0239 A[Catch: all -> 0x0ab2, TryCatch #2 {all -> 0x0ab2, blocks: (B:3:0x000b, B:22:0x007f, B:89:0x0235, B:91:0x0239, B:97:0x0247, B:98:0x0262, B:100:0x026c, B:103:0x0286, B:105:0x02b5, B:111:0x02c9, B:113:0x02d1, B:193:0x0540, B:115:0x02f0, B:117:0x0302, B:178:0x04e6, B:180:0x04f0, B:182:0x04f4, B:185:0x04fa, B:187:0x0507, B:188:0x0519, B:189:0x051d, B:192:0x0539, B:190:0x0524, B:121:0x0318, B:123:0x031c, B:124:0x0321, B:129:0x0334, B:131:0x0340, B:135:0x0358, B:132:0x0348, B:134:0x0350, B:138:0x0365, B:140:0x039f, B:141:0x03d7, B:144:0x0409, B:146:0x040e, B:148:0x041a, B:150:0x0423, B:152:0x042b, B:153:0x0433, B:154:0x0436, B:157:0x043d, B:160:0x0447, B:162:0x0478, B:164:0x0495, B:170:0x04aa, B:167:0x04a1, B:173:0x04b1, B:175:0x04c4, B:176:0x04cf, B:194:0x054a, B:196:0x0558, B:198:0x0564, B:200:0x0572, B:203:0x0577, B:205:0x05b5, B:206:0x05d1, B:208:0x05d6, B:210:0x05e2, B:214:0x05ee, B:217:0x060e, B:211:0x05e8, B:204:0x059a, B:218:0x0624, B:220:0x0640, B:222:0x0659, B:225:0x0669, B:227:0x067c, B:228:0x068b, B:230:0x068f, B:232:0x0699, B:233:0x06a6, B:235:0x06aa, B:237:0x06b2, B:238:0x06c1, B:306:0x08a2, B:241:0x06d7, B:245:0x06e6, B:247:0x06f0, B:249:0x06fe, B:251:0x0702, B:266:0x0732, B:269:0x0744, B:271:0x0763, B:273:0x076d, B:275:0x077d, B:276:0x07b3, B:280:0x07c3, B:282:0x07ca, B:284:0x07d4, B:286:0x07d8, B:288:0x07dc, B:290:0x07e0, B:291:0x07ec, B:293:0x07f2, B:295:0x080d, B:296:0x0816, B:297:0x082d, B:299:0x0848, B:301:0x0872, B:302:0x0880, B:303:0x0891, B:305:0x0898, B:253:0x070a, B:255:0x070e, B:257:0x0716, B:259:0x071a, B:262:0x0724, B:307:0x08b1, B:309:0x08b8, B:310:0x08c0, B:311:0x08c8, B:313:0x08ce, B:315:0x08e4, B:316:0x08f8, B:318:0x08fd, B:320:0x0911, B:321:0x0915, B:323:0x0925, B:324:0x0929, B:325:0x092c, B:327:0x093b, B:343:0x09ad, B:345:0x09b2, B:347:0x09c0, B:350:0x09c5, B:351:0x09c7, B:356:0x09f0, B:352:0x09ca, B:354:0x09d4, B:355:0x09db, B:357:0x09f9, B:358:0x0a10, B:361:0x0a18, B:362:0x0a1d, B:363:0x0a2d, B:365:0x0a47, B:366:0x0a60, B:367:0x0a68, B:372:0x0a8a, B:371:0x0a79, B:328:0x0951, B:330:0x0956, B:332:0x0960, B:334:0x0966, B:340:0x0978, B:342:0x097e, B:375:0x0a9a, B:381:0x0aae, B:382:0x0ab1), top: B:391:0x000b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0247 A[Catch: all -> 0x0ab2, TryCatch #2 {all -> 0x0ab2, blocks: (B:3:0x000b, B:22:0x007f, B:89:0x0235, B:91:0x0239, B:97:0x0247, B:98:0x0262, B:100:0x026c, B:103:0x0286, B:105:0x02b5, B:111:0x02c9, B:113:0x02d1, B:193:0x0540, B:115:0x02f0, B:117:0x0302, B:178:0x04e6, B:180:0x04f0, B:182:0x04f4, B:185:0x04fa, B:187:0x0507, B:188:0x0519, B:189:0x051d, B:192:0x0539, B:190:0x0524, B:121:0x0318, B:123:0x031c, B:124:0x0321, B:129:0x0334, B:131:0x0340, B:135:0x0358, B:132:0x0348, B:134:0x0350, B:138:0x0365, B:140:0x039f, B:141:0x03d7, B:144:0x0409, B:146:0x040e, B:148:0x041a, B:150:0x0423, B:152:0x042b, B:153:0x0433, B:154:0x0436, B:157:0x043d, B:160:0x0447, B:162:0x0478, B:164:0x0495, B:170:0x04aa, B:167:0x04a1, B:173:0x04b1, B:175:0x04c4, B:176:0x04cf, B:194:0x054a, B:196:0x0558, B:198:0x0564, B:200:0x0572, B:203:0x0577, B:205:0x05b5, B:206:0x05d1, B:208:0x05d6, B:210:0x05e2, B:214:0x05ee, B:217:0x060e, B:211:0x05e8, B:204:0x059a, B:218:0x0624, B:220:0x0640, B:222:0x0659, B:225:0x0669, B:227:0x067c, B:228:0x068b, B:230:0x068f, B:232:0x0699, B:233:0x06a6, B:235:0x06aa, B:237:0x06b2, B:238:0x06c1, B:306:0x08a2, B:241:0x06d7, B:245:0x06e6, B:247:0x06f0, B:249:0x06fe, B:251:0x0702, B:266:0x0732, B:269:0x0744, B:271:0x0763, B:273:0x076d, B:275:0x077d, B:276:0x07b3, B:280:0x07c3, B:282:0x07ca, B:284:0x07d4, B:286:0x07d8, B:288:0x07dc, B:290:0x07e0, B:291:0x07ec, B:293:0x07f2, B:295:0x080d, B:296:0x0816, B:297:0x082d, B:299:0x0848, B:301:0x0872, B:302:0x0880, B:303:0x0891, B:305:0x0898, B:253:0x070a, B:255:0x070e, B:257:0x0716, B:259:0x071a, B:262:0x0724, B:307:0x08b1, B:309:0x08b8, B:310:0x08c0, B:311:0x08c8, B:313:0x08ce, B:315:0x08e4, B:316:0x08f8, B:318:0x08fd, B:320:0x0911, B:321:0x0915, B:323:0x0925, B:324:0x0929, B:325:0x092c, B:327:0x093b, B:343:0x09ad, B:345:0x09b2, B:347:0x09c0, B:350:0x09c5, B:351:0x09c7, B:356:0x09f0, B:352:0x09ca, B:354:0x09d4, B:355:0x09db, B:357:0x09f9, B:358:0x0a10, B:361:0x0a18, B:362:0x0a1d, B:363:0x0a2d, B:365:0x0a47, B:366:0x0a60, B:367:0x0a68, B:372:0x0a8a, B:371:0x0a79, B:328:0x0951, B:330:0x0956, B:332:0x0960, B:334:0x0966, B:340:0x0978, B:342:0x097e, B:375:0x0a9a, B:381:0x0aae, B:382:0x0ab1), top: B:391:0x000b, inners: #1 }] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.internal.measurement.ij] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean a(java.lang.String r38, long r39) {
        /*
            Method dump skipped, instruction units count: 2750
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ii.a(java.lang.String, long):boolean");
    }

    private final boolean a(String str, zzeu zzeuVar) {
        long jLongValue;
        ip ipVar;
        String strD = zzeuVar.f4725b.d("currency");
        if ("ecommerce_purchase".equals(zzeuVar.f4724a)) {
            double dDoubleValue = zzeuVar.f4725b.c("value").doubleValue() * 1000000.0d;
            if (dDoubleValue == 0.0d) {
                double dLongValue = zzeuVar.f4725b.b("value").longValue();
                Double.isNaN(dLongValue);
                dDoubleValue = dLongValue * 1000000.0d;
            }
            if (dDoubleValue > 9.223372036854776E18d || dDoubleValue < -9.223372036854776E18d) {
                q().y().a("Data lost. Currency value is too big. appId", dx.a(str), Double.valueOf(dDoubleValue));
                return false;
            }
            jLongValue = Math.round(dDoubleValue);
        } else {
            jLongValue = zzeuVar.f4725b.b("value").longValue();
        }
        if (!TextUtils.isEmpty(strD)) {
            String upperCase = strD.toUpperCase(Locale.US);
            if (upperCase.matches("[A-Z]{3}")) {
                String strValueOf = String.valueOf(upperCase);
                String strConcat = strValueOf.length() != 0 ? "_ltv_".concat(strValueOf) : new String("_ltv_");
                ip ipVarC = D().c(str, strConcat);
                if (ipVarC == null || !(ipVarC.f4564e instanceof Long)) {
                    db dbVarD = D();
                    int iB = b().b(str, dn.F) - 1;
                    com.google.android.gms.common.internal.aa.a(str);
                    dbVarD.c();
                    dbVarD.N();
                    try {
                        dbVarD.x().execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);", new String[]{str, str, String.valueOf(iB)});
                    } catch (SQLiteException e2) {
                        dbVarD.q().v().a("Error pruning currencies. appId", dx.a(str), e2);
                    }
                    ipVar = new ip(str, zzeuVar.f4726c, strConcat, j().a(), Long.valueOf(jLongValue));
                } else {
                    ipVar = new ip(str, zzeuVar.f4726c, strConcat, j().a(), Long.valueOf(((Long) ipVarC.f4564e).longValue() + jLongValue));
                }
                if (!D().a(ipVar)) {
                    q().v().a("Too many unique user properties are set. Ignoring user property. appId", dx.a(str), n().c(ipVar.f4562c), ipVar.f4564e);
                    m().a(str, 9, (String) null, (String) null, 0);
                }
            }
        }
        return true;
    }

    private final jc[] a(String str, ji[] jiVarArr, jd[] jdVarArr) {
        com.google.android.gms.common.internal.aa.a(str);
        return E().a(str, jdVarArr, jiVarArr);
    }

    private final Boolean b(ct ctVar) {
        try {
            if (ctVar.j() != -2147483648L) {
                if (ctVar.j() == com.google.android.gms.common.d.c.b(k()).b(ctVar.b(), 0).versionCode) {
                    return true;
                }
            } else {
                String str = com.google.android.gms.common.d.c.b(k()).b(ctVar.b(), 0).versionName;
                if (ctVar.i() != null && ctVar.i().equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private static void b(ih ihVar) {
        if (ihVar == null) {
            throw new IllegalStateException("Upload component not created");
        }
        if (ihVar.M()) {
            return;
        }
        String strValueOf = String.valueOf(ihVar.getClass());
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
        sb.append("Component not initialized: ");
        sb.append(strValueOf);
        throw new IllegalStateException(sb.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:142:0x0586 A[Catch: all -> 0x05ee, TryCatch #1 {all -> 0x05ee, blocks: (B:33:0x00f5, B:35:0x0102, B:42:0x0121, B:44:0x015e, B:46:0x0163, B:47:0x017a, B:51:0x018b, B:53:0x019f, B:55:0x01a6, B:56:0x01bd, B:60:0x01dd, B:64:0x0203, B:65:0x021a, B:69:0x022a, B:72:0x0247, B:73:0x0261, B:75:0x026d, B:76:0x0282, B:78:0x02ac, B:81:0x02bc, B:84:0x02f2, B:86:0x0321, B:90:0x0372, B:94:0x0390, B:96:0x039e, B:98:0x03a8, B:100:0x03ac, B:112:0x040c, B:114:0x0453, B:116:0x0459, B:117:0x045b, B:119:0x0467, B:120:0x04c7, B:121:0x04e6, B:123:0x04ec, B:125:0x051f, B:126:0x0527, B:128:0x052f, B:129:0x0535, B:131:0x053b, B:140:0x0580, B:142:0x0586, B:145:0x059d, B:147:0x05af, B:134:0x0549, B:136:0x056d, B:144:0x058a, B:101:0x03b9, B:103:0x03c7, B:105:0x03cb, B:107:0x03db, B:111:0x040a, B:108:0x03f1, B:110:0x03f7, B:93:0x038a, B:89:0x036b, B:85:0x0313, B:37:0x010c, B:39:0x0112), top: B:156:0x00f5, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void b(com.google.android.gms.internal.measurement.zzeu r26, com.google.android.gms.internal.measurement.zzdz r27) {
        /*
            Method dump skipped, instruction units count: 1529
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ii.b(com.google.android.gms.internal.measurement.zzeu, com.google.android.gms.internal.measurement.zzdz):void");
    }

    private final ew d() {
        b(this.f4545a);
        return this.f4545a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.measurement.ct e(com.google.android.gms.internal.measurement.zzdz r9) {
        /*
            Method dump skipped, instruction units count: 343
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ii.e(com.google.android.gms.internal.measurement.zzdz):com.google.android.gms.internal.measurement.ct");
    }

    private final eg e() {
        eg egVar = this.f4549e;
        if (egVar != null) {
            return egVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    private final ie f() {
        b(this.f);
        return this.f;
    }

    private final long g() {
        long jA = j().a();
        ei eiVarC = c();
        eiVarC.F();
        eiVarC.c();
        long jA2 = eiVarC.g.a();
        if (jA2 == 0) {
            jA2 = 1 + ((long) eiVarC.n().w().nextInt(86400000));
            eiVarC.g.a(jA2);
        }
        return ((((jA + jA2) / 1000) / 60) / 60) / 24;
    }

    private final boolean h() {
        w();
        F();
        return D().D() || !TextUtils.isEmpty(D().y());
    }

    private final void i() {
        Cdo<Long> cdo;
        long jMax;
        w();
        F();
        if (r()) {
            if (this.k > 0) {
                long jAbs = 3600000 - Math.abs(j().b() - this.k);
                if (jAbs > 0) {
                    q().C().a("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(jAbs));
                    e().b();
                    f().u();
                    return;
                }
                this.k = 0L;
            }
            if (!this.h.B() || !h()) {
                q().C().a("Nothing to upload or uploading impossible");
                e().b();
                f().u();
                return;
            }
            long jA = j().a();
            long jMax2 = Math.max(0L, dn.B.b().longValue());
            boolean z = D().E() || D().z();
            if (z) {
                String strX = b().x();
                cdo = (TextUtils.isEmpty(strX) || ".none.".equals(strX)) ? dn.v : dn.w;
            } else {
                cdo = dn.u;
            }
            long jMax3 = Math.max(0L, cdo.b().longValue());
            long jA2 = c().f4261c.a();
            long jA3 = c().f4262d.a();
            long jMax4 = Math.max(D().B(), D().C());
            if (jMax4 == 0) {
                jMax = 0;
            } else {
                long jAbs2 = jA - Math.abs(jMax4 - jA);
                long jAbs3 = jA - Math.abs(jA2 - jA);
                long jAbs4 = jA - Math.abs(jA3 - jA);
                long jMax5 = Math.max(jAbs3, jAbs4);
                jMax = jAbs2 + jMax2;
                if (z && jMax5 > 0) {
                    jMax = Math.min(jAbs2, jMax5) + jMax3;
                }
                if (!m().a(jMax5, jMax3)) {
                    jMax = jMax5 + jMax3;
                }
                if (jAbs4 != 0 && jAbs4 >= jAbs2) {
                    for (int i = 0; i < Math.min(20, Math.max(0, dn.D.b().intValue())); i++) {
                        jMax += Math.max(0L, dn.C.b().longValue()) * (1 << i);
                        if (jMax > jAbs4) {
                            break;
                        }
                    }
                    jMax = 0;
                }
            }
            if (jMax == 0) {
                q().C().a("Next upload time is 0");
                e().b();
                f().u();
                return;
            }
            if (!C().u()) {
                q().C().a("No network");
                e().a();
                f().u();
                return;
            }
            long jA4 = c().f4263e.a();
            long jMax6 = Math.max(0L, dn.s.b().longValue());
            if (!m().a(jA4, jMax6)) {
                jMax = Math.max(jMax, jA4 + jMax6);
            }
            e().b();
            long jA5 = jMax - j().a();
            if (jA5 <= 0) {
                jA5 = Math.max(0L, dn.x.b().longValue());
                c().f4261c.a(j().a());
            }
            q().C().a("Upload scheduled in approximately ms", Long.valueOf(jA5));
            f().a(jA5);
        }
    }

    private final void l() {
        w();
        if (this.o || this.p || this.q) {
            q().C().a("Not stopping services. fetch, network, upload", Boolean.valueOf(this.o), Boolean.valueOf(this.p), Boolean.valueOf(this.q));
            return;
        }
        q().C().a("Stopping uploading service(s)");
        List<Runnable> list = this.l;
        if (list == null) {
            return;
        }
        Iterator<Runnable> it = list.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        this.l.clear();
    }

    private final boolean o() {
        dz dzVarV;
        String str;
        w();
        try {
            FileChannel channel = new RandomAccessFile(new File(k().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.s = channel;
            FileLock fileLockTryLock = channel.tryLock();
            this.r = fileLockTryLock;
            if (fileLockTryLock != null) {
                q().C().a("Storage concurrent access okay");
                return true;
            }
            q().v().a("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e2) {
            e = e2;
            dzVarV = q().v();
            str = "Failed to acquire storage lock";
            dzVarV.a(str, e);
            return false;
        } catch (IOException e3) {
            e = e3;
            dzVarV = q().v();
            str = "Failed to access storage lock file";
            dzVarV.a(str, e);
            return false;
        }
    }

    private final boolean r() {
        w();
        F();
        return this.j;
    }

    public final eb C() {
        b(this.f4546b);
        return this.f4546b;
    }

    public final db D() {
        b(this.f4548d);
        return this.f4548d;
    }

    public final cv E() {
        b(this.g);
        return this.g;
    }

    final void F() {
        if (!this.i) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    public final void G() {
        ct ctVarB;
        String str;
        dz dzVarC;
        String str2;
        w();
        F();
        this.q = true;
        try {
            Boolean boolA = this.h.s().A();
            if (boolA == null) {
                dzVarC = q().y();
                str2 = "Upload data called on the client side before use of service was decided";
            } else {
                if (!boolA.booleanValue()) {
                    if (this.k > 0) {
                        i();
                    } else {
                        w();
                        if (this.t != null) {
                            dzVarC = q().C();
                            str2 = "Uploading requested multiple times";
                        } else if (C().u()) {
                            long jA = j().a();
                            a((String) null, jA - cy.w());
                            long jA2 = c().f4261c.a();
                            if (jA2 != 0) {
                                q().B().a("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(jA - jA2)));
                            }
                            String strY = D().y();
                            if (TextUtils.isEmpty(strY)) {
                                this.f4547c = -1L;
                                String strA = D().a(jA - cy.w());
                                if (!TextUtils.isEmpty(strA) && (ctVarB = D().b(strA)) != null) {
                                    a(ctVarB);
                                }
                            } else {
                                if (this.f4547c == -1) {
                                    this.f4547c = D().F();
                                }
                                List<Pair<jg, Long>> listA = D().a(strY, b().b(strY, dn.h), Math.max(0, b().b(strY, dn.i)));
                                if (!listA.isEmpty()) {
                                    Iterator<Pair<jg, Long>> it = listA.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            str = null;
                                            break;
                                        }
                                        jg jgVar = (jg) it.next().first;
                                        if (!TextUtils.isEmpty(jgVar.u)) {
                                            str = jgVar.u;
                                            break;
                                        }
                                    }
                                    if (str != null) {
                                        int i = 0;
                                        while (true) {
                                            if (i >= listA.size()) {
                                                break;
                                            }
                                            jg jgVar2 = (jg) listA.get(i).first;
                                            if (!TextUtils.isEmpty(jgVar2.u) && !jgVar2.u.equals(str)) {
                                                listA = listA.subList(0, i);
                                                break;
                                            }
                                            i++;
                                        }
                                    }
                                    jf jfVar = new jf();
                                    jfVar.f4611c = new jg[listA.size()];
                                    ArrayList arrayList = new ArrayList(listA.size());
                                    boolean z = cy.y() && b().c(strY);
                                    for (int i2 = 0; i2 < jfVar.f4611c.length; i2++) {
                                        jfVar.f4611c[i2] = (jg) listA.get(i2).first;
                                        arrayList.add((Long) listA.get(i2).second);
                                        jfVar.f4611c[i2].t = 12451L;
                                        jfVar.f4611c[i2].f = Long.valueOf(jA);
                                        jfVar.f4611c[i2].B = false;
                                        if (!z) {
                                            jfVar.f4611c[i2].I = null;
                                        }
                                    }
                                    String strA2 = q().a(2) ? n().a(jfVar) : null;
                                    byte[] bArrA = m().a(jfVar);
                                    String strB = dn.r.b();
                                    try {
                                        URL url = new URL(strB);
                                        com.google.android.gms.common.internal.aa.b(!arrayList.isEmpty());
                                        if (this.t != null) {
                                            q().v().a("Set uploading progress before finishing the previous upload");
                                        } else {
                                            this.t = new ArrayList(arrayList);
                                        }
                                        c().f4262d.a(jA);
                                        q().C().a("Uploading data. app, uncompressed size, data", jfVar.f4611c.length > 0 ? jfVar.f4611c[0].q : "?", Integer.valueOf(bArrA.length), strA2);
                                        this.p = true;
                                        eb ebVarC = C();
                                        ij ijVar = new ij(this, strY);
                                        ebVarC.c();
                                        ebVarC.N();
                                        com.google.android.gms.common.internal.aa.a(url);
                                        com.google.android.gms.common.internal.aa.a(bArrA);
                                        com.google.android.gms.common.internal.aa.a(ijVar);
                                        ebVarC.p().b(new ef(ebVarC, strY, url, bArrA, null, ijVar));
                                    } catch (MalformedURLException unused) {
                                        q().v().a("Failed to parse upload URL. Not uploading. appId", dx.a(strY), strB);
                                    }
                                }
                            }
                        } else {
                            q().C().a("Network not connected, ignoring upload request");
                            i();
                        }
                    }
                }
                dzVarC = q().v();
                str2 = "Upload called in the client side when service should be used";
            }
            dzVarC.a(str2);
        } finally {
            this.q = false;
            l();
        }
    }

    final void H() {
        dz dzVarV;
        Integer numValueOf;
        Integer numValueOf2;
        String str;
        w();
        F();
        if (this.j) {
            return;
        }
        q().A().a("This instance being marked as an uploader");
        w();
        F();
        if (r() && o()) {
            int iA = a(this.s);
            int iY = this.h.u().y();
            w();
            if (iA > iY) {
                dzVarV = q().v();
                numValueOf = Integer.valueOf(iA);
                numValueOf2 = Integer.valueOf(iY);
                str = "Panic: can't downgrade version. Previous, current version";
            } else if (iA < iY) {
                if (a(iY, this.s)) {
                    dzVarV = q().C();
                    numValueOf = Integer.valueOf(iA);
                    numValueOf2 = Integer.valueOf(iY);
                    str = "Storage version upgraded. Previous, current version";
                } else {
                    dzVarV = q().v();
                    numValueOf = Integer.valueOf(iA);
                    numValueOf2 = Integer.valueOf(iY);
                    str = "Storage version upgrade failed. Previous, current version";
                }
            }
            dzVarV.a(str, numValueOf, numValueOf2);
        }
        this.j = true;
        i();
    }

    final void I() {
        this.n++;
    }

    final fc J() {
        return this.h;
    }

    final zzdz a(String str) {
        String str2;
        dz dzVarB;
        Object objA;
        String str3 = str;
        ct ctVarB = D().b(str3);
        if (ctVarB == null || TextUtils.isEmpty(ctVarB.i())) {
            str2 = "No app data available; dropping";
            objA = str3;
            dzVarB = q().B();
        } else {
            Boolean boolB = b(ctVarB);
            if (boolB == null || boolB.booleanValue()) {
                return new zzdz(str, ctVarB.d(), ctVarB.i(), ctVarB.j(), ctVarB.k(), ctVarB.l(), ctVarB.m(), (String) null, ctVarB.n(), false, ctVarB.f(), ctVarB.A(), 0L, 0, ctVarB.B(), ctVarB.C(), false);
            }
            dz dzVarV = q().v();
            str2 = "App version does not match; dropping. appId";
            objA = dx.a(str);
            dzVarB = dzVarV;
        }
        dzVarB.a(str2, objA);
        return null;
    }

    protected void a() {
        w();
        D().A();
        if (c().f4261c.a() == 0) {
            c().f4261c.a(j().a());
        }
        i();
    }

    protected final void a(int i, Throwable th, byte[] bArr, String str) {
        w();
        F();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } finally {
                this.p = false;
                l();
            }
        }
        List<Long> list = this.t;
        this.t = null;
        boolean z = true;
        if ((i == 200 || i == 204) && th == null) {
            try {
                c().f4261c.a(j().a());
                c().f4262d.a(0L);
                i();
                q().C().a("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                D().u();
                try {
                    for (Long l : list) {
                        try {
                            db dbVarD = D();
                            long jLongValue = l.longValue();
                            dbVarD.c();
                            dbVarD.N();
                            try {
                                if (dbVarD.x().delete("queue", "rowid=?", new String[]{String.valueOf(jLongValue)}) != 1) {
                                    throw new SQLiteException("Deleted fewer rows from queue than expected");
                                }
                            } catch (SQLiteException e2) {
                                dbVarD.q().v().a("Failed to delete a bundle in a queue table", e2);
                                throw e2;
                            }
                        } catch (SQLiteException e3) {
                            if (this.u == null || !this.u.contains(l)) {
                                throw e3;
                            }
                        }
                    }
                    D().v();
                    D().w();
                    this.u = null;
                    if (C().u() && h()) {
                        G();
                    } else {
                        this.f4547c = -1L;
                        i();
                    }
                    this.k = 0L;
                } catch (Throwable th2) {
                    D().w();
                    throw th2;
                }
            } catch (SQLiteException e4) {
                q().v().a("Database error while trying to delete uploaded bundles", e4);
                this.k = j().b();
                q().C().a("Disable upload, time", Long.valueOf(this.k));
            }
        } else {
            q().C().a("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            c().f4262d.a(j().a());
            if (i != 503 && i != 429) {
                z = false;
            }
            if (z) {
                c().f4263e.a(j().a());
            }
            if (b().g(str)) {
                D().a(list);
            }
            i();
        }
    }

    final void a(fc fcVar) {
        this.h = fcVar;
    }

    final void a(ih ihVar) {
        this.m++;
    }

    final void a(in inVar) {
        w();
        db dbVar = new db(this.h);
        dbVar.O();
        this.f4548d = dbVar;
        b().a(this.f4545a);
        cv cvVar = new cv(this.h);
        cvVar.O();
        this.g = cvVar;
        ie ieVar = new ie(this.h);
        ieVar.O();
        this.f = ieVar;
        this.f4549e = new eg(this.h);
        if (this.m != this.n) {
            q().v().a("Not all upload components initialized", Integer.valueOf(this.m), Integer.valueOf(this.n));
        }
        this.i = true;
    }

    final void a(zzdz zzdzVar) {
        w();
        F();
        com.google.android.gms.common.internal.aa.a(zzdzVar.f4713a);
        e(zzdzVar);
    }

    final void a(zzed zzedVar, zzdz zzdzVar) {
        dz dzVarV;
        String str;
        Object objA;
        String strC;
        Object objA2;
        dz dzVarV2;
        String str2;
        Object objA3;
        String strC2;
        Object obj;
        com.google.android.gms.common.internal.aa.a(zzedVar);
        com.google.android.gms.common.internal.aa.a(zzedVar.f4718a);
        com.google.android.gms.common.internal.aa.a(zzedVar.f4719b);
        com.google.android.gms.common.internal.aa.a(zzedVar.f4720c);
        com.google.android.gms.common.internal.aa.a(zzedVar.f4720c.f4728a);
        w();
        F();
        if (TextUtils.isEmpty(zzdzVar.f4714b)) {
            return;
        }
        if (!zzdzVar.h) {
            e(zzdzVar);
            return;
        }
        zzed zzedVar2 = new zzed(zzedVar);
        boolean z = false;
        zzedVar2.f4722e = false;
        D().u();
        try {
            zzed zzedVarD = D().d(zzedVar2.f4718a, zzedVar2.f4720c.f4728a);
            if (zzedVarD != null && !zzedVarD.f4719b.equals(zzedVar2.f4719b)) {
                q().y().a("Updating a conditional user property with different origin. name, origin, origin (from DB)", n().c(zzedVar2.f4720c.f4728a), zzedVar2.f4719b, zzedVarD.f4719b);
            }
            if (zzedVarD != null && zzedVarD.f4722e) {
                zzedVar2.f4719b = zzedVarD.f4719b;
                zzedVar2.f4721d = zzedVarD.f4721d;
                zzedVar2.h = zzedVarD.h;
                zzedVar2.f = zzedVarD.f;
                zzedVar2.i = zzedVarD.i;
                zzedVar2.f4722e = zzedVarD.f4722e;
                zzedVar2.f4720c = new zzjx(zzedVar2.f4720c.f4728a, zzedVarD.f4720c.f4729b, zzedVar2.f4720c.a(), zzedVarD.f4720c.f4730c);
            } else if (TextUtils.isEmpty(zzedVar2.f)) {
                zzedVar2.f4720c = new zzjx(zzedVar2.f4720c.f4728a, zzedVar2.f4721d, zzedVar2.f4720c.a(), zzedVar2.f4720c.f4730c);
                zzedVar2.f4722e = true;
                z = true;
            }
            if (zzedVar2.f4722e) {
                zzjx zzjxVar = zzedVar2.f4720c;
                ip ipVar = new ip(zzedVar2.f4718a, zzedVar2.f4719b, zzjxVar.f4728a, zzjxVar.f4729b, zzjxVar.a());
                if (D().a(ipVar)) {
                    dzVarV2 = q().B();
                    str2 = "User property updated immediately";
                    objA3 = zzedVar2.f4718a;
                    strC2 = n().c(ipVar.f4562c);
                    obj = ipVar.f4564e;
                } else {
                    dzVarV2 = q().v();
                    str2 = "(2)Too many active user properties, ignoring";
                    objA3 = dx.a(zzedVar2.f4718a);
                    strC2 = n().c(ipVar.f4562c);
                    obj = ipVar.f4564e;
                }
                dzVarV2.a(str2, objA3, strC2, obj);
                if (z && zzedVar2.i != null) {
                    b(new zzeu(zzedVar2.i, zzedVar2.f4721d), zzdzVar);
                }
            }
            if (D().a(zzedVar2)) {
                dzVarV = q().B();
                str = "Conditional property added";
                objA = zzedVar2.f4718a;
                strC = n().c(zzedVar2.f4720c.f4728a);
                objA2 = zzedVar2.f4720c.a();
            } else {
                dzVarV = q().v();
                str = "Too many conditional properties, ignoring";
                objA = dx.a(zzedVar2.f4718a);
                strC = n().c(zzedVar2.f4720c.f4728a);
                objA2 = zzedVar2.f4720c.a();
            }
            dzVarV.a(str, objA, strC, objA2);
            D().v();
        } finally {
            D().w();
        }
    }

    final void a(zzeu zzeuVar, zzdz zzdzVar) {
        List<zzed> listA;
        List<zzed> listA2;
        List<zzed> listA3;
        dz dzVarV;
        String str;
        Object objA;
        String strC;
        Object obj;
        com.google.android.gms.common.internal.aa.a(zzdzVar);
        com.google.android.gms.common.internal.aa.a(zzdzVar.f4713a);
        w();
        F();
        String str2 = zzdzVar.f4713a;
        long j = zzeuVar.f4727d;
        m();
        if (iq.a(zzeuVar, zzdzVar)) {
            if (!zzdzVar.h) {
                e(zzdzVar);
                return;
            }
            D().u();
            try {
                db dbVarD = D();
                com.google.android.gms.common.internal.aa.a(str2);
                dbVarD.c();
                dbVarD.N();
                if (j < 0) {
                    dbVarD.q().y().a("Invalid time querying timed out conditional properties", dx.a(str2), Long.valueOf(j));
                    listA = Collections.emptyList();
                } else {
                    listA = dbVarD.a("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j)});
                }
                for (zzed zzedVar : listA) {
                    if (zzedVar != null) {
                        q().B().a("User property timed out", zzedVar.f4718a, n().c(zzedVar.f4720c.f4728a), zzedVar.f4720c.a());
                        if (zzedVar.g != null) {
                            b(new zzeu(zzedVar.g, j), zzdzVar);
                        }
                        D().e(str2, zzedVar.f4720c.f4728a);
                    }
                }
                db dbVarD2 = D();
                com.google.android.gms.common.internal.aa.a(str2);
                dbVarD2.c();
                dbVarD2.N();
                if (j < 0) {
                    dbVarD2.q().y().a("Invalid time querying expired conditional properties", dx.a(str2), Long.valueOf(j));
                    listA2 = Collections.emptyList();
                } else {
                    listA2 = dbVarD2.a("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(listA2.size());
                for (zzed zzedVar2 : listA2) {
                    if (zzedVar2 != null) {
                        q().B().a("User property expired", zzedVar2.f4718a, n().c(zzedVar2.f4720c.f4728a), zzedVar2.f4720c.a());
                        D().b(str2, zzedVar2.f4720c.f4728a);
                        if (zzedVar2.k != null) {
                            arrayList.add(zzedVar2.k);
                        }
                        D().e(str2, zzedVar2.f4720c.f4728a);
                    }
                }
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList2.get(i);
                    i++;
                    b(new zzeu((zzeu) obj2, j), zzdzVar);
                }
                db dbVarD3 = D();
                String str3 = zzeuVar.f4724a;
                com.google.android.gms.common.internal.aa.a(str2);
                com.google.android.gms.common.internal.aa.a(str3);
                dbVarD3.c();
                dbVarD3.N();
                if (j < 0) {
                    dbVarD3.q().y().a("Invalid time querying triggered conditional properties", dx.a(str2), dbVarD3.m().a(str3), Long.valueOf(j));
                    listA3 = Collections.emptyList();
                } else {
                    listA3 = dbVarD3.a("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str3, String.valueOf(j)});
                }
                ArrayList arrayList3 = new ArrayList(listA3.size());
                for (zzed zzedVar3 : listA3) {
                    if (zzedVar3 != null) {
                        zzjx zzjxVar = zzedVar3.f4720c;
                        ip ipVar = new ip(zzedVar3.f4718a, zzedVar3.f4719b, zzjxVar.f4728a, j, zzjxVar.a());
                        if (D().a(ipVar)) {
                            dzVarV = q().B();
                            str = "User property triggered";
                            objA = zzedVar3.f4718a;
                            strC = n().c(ipVar.f4562c);
                            obj = ipVar.f4564e;
                        } else {
                            dzVarV = q().v();
                            str = "Too many active user properties, ignoring";
                            objA = dx.a(zzedVar3.f4718a);
                            strC = n().c(ipVar.f4562c);
                            obj = ipVar.f4564e;
                        }
                        dzVarV.a(str, objA, strC, obj);
                        if (zzedVar3.i != null) {
                            arrayList3.add(zzedVar3.i);
                        }
                        zzedVar3.f4720c = new zzjx(ipVar);
                        zzedVar3.f4722e = true;
                        D().a(zzedVar3);
                    }
                }
                b(zzeuVar, zzdzVar);
                ArrayList arrayList4 = arrayList3;
                int size2 = arrayList4.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj3 = arrayList4.get(i2);
                    i2++;
                    b(new zzeu((zzeu) obj3, j), zzdzVar);
                }
                D().v();
            } finally {
                D().w();
            }
        }
    }

    final void a(zzeu zzeuVar, String str) {
        ct ctVarB = D().b(str);
        if (ctVarB == null || TextUtils.isEmpty(ctVarB.i())) {
            q().B().a("No app data available; dropping event", str);
            return;
        }
        Boolean boolB = b(ctVarB);
        if (boolB == null) {
            if (!"_ui".equals(zzeuVar.f4724a)) {
                q().y().a("Could not find package. appId", dx.a(str));
            }
        } else if (!boolB.booleanValue()) {
            q().v().a("App version does not match; dropping event. appId", dx.a(str));
            return;
        }
        a(zzeuVar, new zzdz(str, ctVarB.d(), ctVarB.i(), ctVarB.j(), ctVarB.k(), ctVarB.l(), ctVarB.m(), (String) null, ctVarB.n(), false, ctVarB.f(), ctVarB.A(), 0L, 0, ctVarB.B(), ctVarB.C(), false));
    }

    final void a(zzjx zzjxVar, zzdz zzdzVar) {
        w();
        F();
        if (TextUtils.isEmpty(zzdzVar.f4714b)) {
            return;
        }
        if (!zzdzVar.h) {
            e(zzdzVar);
            return;
        }
        int iD = m().d(zzjxVar.f4728a);
        if (iD != 0) {
            m();
            m().a(zzdzVar.f4713a, iD, "_ev", iq.a(zzjxVar.f4728a, 24, true), zzjxVar.f4728a != null ? zzjxVar.f4728a.length() : 0);
            return;
        }
        int iB = m().b(zzjxVar.f4728a, zzjxVar.a());
        if (iB != 0) {
            m();
            String strA = iq.a(zzjxVar.f4728a, 24, true);
            Object objA = zzjxVar.a();
            m().a(zzdzVar.f4713a, iB, "_ev", strA, (objA == null || !((objA instanceof String) || (objA instanceof CharSequence))) ? 0 : String.valueOf(objA).length());
            return;
        }
        Object objC = m().c(zzjxVar.f4728a, zzjxVar.a());
        if (objC == null) {
            return;
        }
        ip ipVar = new ip(zzdzVar.f4713a, zzjxVar.f4730c, zzjxVar.f4728a, zzjxVar.f4729b, objC);
        q().B().a("Setting user property", n().c(ipVar.f4562c), objC);
        D().u();
        try {
            e(zzdzVar);
            boolean zA = D().a(ipVar);
            D().v();
            if (zA) {
                q().B().a("User property set", n().c(ipVar.f4562c), ipVar.f4564e);
            } else {
                q().v().a("Too many unique user properties are set. Ignoring user property", n().c(ipVar.f4562c), ipVar.f4564e);
                m().a(zzdzVar.f4713a, 9, (String) null, (String) null, 0);
            }
        } finally {
            D().w();
        }
    }

    final void a(Runnable runnable) {
        w();
        if (this.l == null) {
            this.l = new ArrayList();
        }
        this.l.add(runnable);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0120 A[Catch: all -> 0x0163, TryCatch #0 {all -> 0x0163, blocks: (B:6:0x0027, B:15:0x0043, B:62:0x0157, B:20:0x005d, B:27:0x00a4, B:28:0x00b5, B:31:0x00bd, B:34:0x00c9, B:36:0x00cf, B:41:0x00dc, B:53:0x010c, B:55:0x0120, B:57:0x0144, B:59:0x014e, B:61:0x0154, B:56:0x012e, B:47:0x00f3, B:49:0x00fd), top: B:71:0x0027, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012e A[Catch: all -> 0x0163, TryCatch #0 {all -> 0x0163, blocks: (B:6:0x0027, B:15:0x0043, B:62:0x0157, B:20:0x005d, B:27:0x00a4, B:28:0x00b5, B:31:0x00bd, B:34:0x00c9, B:36:0x00cf, B:41:0x00dc, B:53:0x010c, B:55:0x0120, B:57:0x0144, B:59:0x014e, B:61:0x0154, B:56:0x012e, B:47:0x00f3, B:49:0x00fd), top: B:71:0x0027, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void a(java.lang.String r7, int r8, java.lang.Throwable r9, byte[] r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11) {
        /*
            Method dump skipped, instruction units count: 373
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ii.a(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    public final void a(boolean z) {
        i();
    }

    public cy b() {
        return this.h.b();
    }

    final void b(zzdz zzdzVar) {
        if (this.t != null) {
            ArrayList arrayList = new ArrayList();
            this.u = arrayList;
            arrayList.addAll(this.t);
        }
        db dbVarD = D();
        String str = zzdzVar.f4713a;
        com.google.android.gms.common.internal.aa.a(str);
        dbVarD.c();
        dbVarD.N();
        try {
            SQLiteDatabase sQLiteDatabaseX = dbVarD.x();
            String[] strArr = {str};
            int iDelete = sQLiteDatabaseX.delete("apps", "app_id=?", strArr) + 0 + sQLiteDatabaseX.delete("events", "app_id=?", strArr) + sQLiteDatabaseX.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseX.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseX.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseX.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseX.delete("queue", "app_id=?", strArr) + sQLiteDatabaseX.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseX.delete("main_event_params", "app_id=?", strArr);
            if (iDelete > 0) {
                dbVarD.q().C().a("Reset analytics data. app, records", str, Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e2) {
            dbVarD.q().v().a("Error resetting analytics data. appId, error", dx.a(str), e2);
        }
        zzdz zzdzVarA = a(k(), zzdzVar.f4713a, zzdzVar.f4714b, zzdzVar.h, zzdzVar.o, zzdzVar.p, zzdzVar.m);
        if (!b().i(zzdzVar.f4713a) || zzdzVar.h) {
            c(zzdzVarA);
        }
    }

    final void b(zzed zzedVar, zzdz zzdzVar) {
        com.google.android.gms.common.internal.aa.a(zzedVar);
        com.google.android.gms.common.internal.aa.a(zzedVar.f4718a);
        com.google.android.gms.common.internal.aa.a(zzedVar.f4720c);
        com.google.android.gms.common.internal.aa.a(zzedVar.f4720c.f4728a);
        w();
        F();
        if (TextUtils.isEmpty(zzdzVar.f4714b)) {
            return;
        }
        if (!zzdzVar.h) {
            e(zzdzVar);
            return;
        }
        D().u();
        try {
            e(zzdzVar);
            zzed zzedVarD = D().d(zzedVar.f4718a, zzedVar.f4720c.f4728a);
            if (zzedVarD != null) {
                q().B().a("Removing conditional user property", zzedVar.f4718a, n().c(zzedVar.f4720c.f4728a));
                D().e(zzedVar.f4718a, zzedVar.f4720c.f4728a);
                if (zzedVarD.f4722e) {
                    D().b(zzedVar.f4718a, zzedVar.f4720c.f4728a);
                }
                if (zzedVar.k != null) {
                    b(m().a(zzedVar.k.f4724a, zzedVar.k.f4725b != null ? zzedVar.k.f4725b.b() : null, zzedVarD.f4719b, zzedVar.k.f4727d, true, false), zzdzVar);
                }
            } else {
                q().y().a("Conditional user property doesn't exist", dx.a(zzedVar.f4718a), n().c(zzedVar.f4720c.f4728a));
            }
            D().v();
        } finally {
            D().w();
        }
    }

    final void b(zzjx zzjxVar, zzdz zzdzVar) {
        w();
        F();
        if (TextUtils.isEmpty(zzdzVar.f4714b)) {
            return;
        }
        if (!zzdzVar.h) {
            e(zzdzVar);
            return;
        }
        q().B().a("Removing user property", n().c(zzjxVar.f4728a));
        D().u();
        try {
            e(zzdzVar);
            D().b(zzdzVar.f4713a, zzjxVar.f4728a);
            D().v();
            q().B().a("User property removed", n().c(zzjxVar.f4728a));
        } finally {
            D().w();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final byte[] b(zzeu zzeuVar, String str) {
        ip ipVarC;
        jg jgVar;
        jf jfVar;
        ct ctVar;
        byte[] bArr;
        Bundle bundle;
        long j;
        dz dzVarY;
        String str2;
        Object objA;
        F();
        w();
        fc.z();
        com.google.android.gms.common.internal.aa.a(zzeuVar);
        com.google.android.gms.common.internal.aa.a(str);
        jf jfVar2 = new jf();
        D().u();
        try {
            ct ctVarB = D().b(str);
            if (ctVarB == null) {
                q().B().a("Log and bundle not available. package_name", str);
            } else {
                if (ctVarB.n()) {
                    if (("_iap".equals(zzeuVar.f4724a) || "ecommerce_purchase".equals(zzeuVar.f4724a)) && !a(str, zzeuVar)) {
                        q().y().a("Failed to handle purchase event at single event bundle creation. appId", dx.a(str));
                    }
                    boolean zE = b().e(str);
                    Long lB = 0L;
                    if (zE && "_e".equals(zzeuVar.f4724a)) {
                        if (zzeuVar.f4725b == null || zzeuVar.f4725b.a() == 0) {
                            dzVarY = q().y();
                            str2 = "The engagement event does not contain any parameters. appId";
                            objA = dx.a(str);
                        } else if (zzeuVar.f4725b.b("_et") == null) {
                            dzVarY = q().y();
                            str2 = "The engagement event does not include duration. appId";
                            objA = dx.a(str);
                        } else {
                            lB = zzeuVar.f4725b.b("_et");
                        }
                        dzVarY.a(str2, objA);
                    }
                    jg jgVar2 = new jg();
                    jfVar2.f4611c = new jg[]{jgVar2};
                    jgVar2.f4612c = 1;
                    jgVar2.k = "android";
                    jgVar2.q = ctVarB.b();
                    jgVar2.p = ctVarB.k();
                    jgVar2.r = ctVarB.i();
                    long j2 = ctVarB.j();
                    jgVar2.E = j2 == -2147483648L ? null : Integer.valueOf((int) j2);
                    jgVar2.s = Long.valueOf(ctVarB.l());
                    jgVar2.A = ctVarB.d();
                    jgVar2.x = Long.valueOf(ctVarB.m());
                    if (this.h.x() && cy.y() && b().c(jgVar2.q)) {
                        jgVar2.I = null;
                    }
                    Pair<String, Boolean> pairA = c().a(ctVarB.b());
                    if (ctVarB.B() && pairA != null && !TextUtils.isEmpty((CharSequence) pairA.first)) {
                        jgVar2.u = (String) pairA.first;
                        jgVar2.v = (Boolean) pairA.second;
                    }
                    t().F();
                    jgVar2.m = Build.MODEL;
                    t().F();
                    jgVar2.l = Build.VERSION.RELEASE;
                    jgVar2.o = Integer.valueOf((int) t().u());
                    jgVar2.n = t().v();
                    jgVar2.w = ctVarB.c();
                    jgVar2.D = ctVarB.f();
                    List<ip> listA = D().a(ctVarB.b());
                    jgVar2.f4614e = new ji[listA.size()];
                    if (zE) {
                        ipVarC = D().c(jgVar2.q, "_lte");
                        if (ipVarC == null || ipVarC.f4564e == null) {
                            ipVarC = new ip(jgVar2.q, "auto", "_lte", j().a(), lB);
                        } else if (lB.longValue() > 0) {
                            ipVarC = new ip(jgVar2.q, "auto", "_lte", j().a(), Long.valueOf(((Long) ipVarC.f4564e).longValue() + lB.longValue()));
                        }
                    } else {
                        ipVarC = null;
                    }
                    int i = 0;
                    ji jiVar = null;
                    while (i < listA.size()) {
                        ji jiVar2 = new ji();
                        jgVar2.f4614e[i] = jiVar2;
                        jiVar2.f4618d = listA.get(i).f4562c;
                        ct ctVar2 = ctVarB;
                        jf jfVar3 = jfVar2;
                        jiVar2.f4617c = Long.valueOf(listA.get(i).f4563d);
                        m().a(jiVar2, listA.get(i).f4564e);
                        if (zE && "_lte".equals(jiVar2.f4618d)) {
                            jiVar2.f = (Long) ipVarC.f4564e;
                            jiVar2.f4617c = Long.valueOf(j().a());
                            jiVar = jiVar2;
                        }
                        i++;
                        jfVar2 = jfVar3;
                        ctVarB = ctVar2;
                    }
                    ct ctVar3 = ctVarB;
                    jf jfVar4 = jfVar2;
                    if (zE && jiVar == null) {
                        ji jiVar3 = new ji();
                        jiVar3.f4618d = "_lte";
                        jiVar3.f4617c = Long.valueOf(j().a());
                        jiVar3.f = (Long) ipVarC.f4564e;
                        jgVar2.f4614e = (ji[]) Arrays.copyOf(jgVar2.f4614e, jgVar2.f4614e.length + 1);
                        jgVar2.f4614e[jgVar2.f4614e.length - 1] = jiVar3;
                    }
                    if (lB.longValue() > 0) {
                        D().a(ipVarC);
                    }
                    Bundle bundleB = zzeuVar.f4725b.b();
                    if ("_iap".equals(zzeuVar.f4724a)) {
                        bundleB.putLong("_c", 1L);
                        q().B().a("Marking in-app purchase as real-time");
                        bundleB.putLong("_r", 1L);
                    }
                    bundleB.putString("_o", zzeuVar.f4726c);
                    if (m().i(jgVar2.q)) {
                        m().a(bundleB, "_dbg", (Object) 1L);
                        m().a(bundleB, "_r", (Object) 1L);
                    }
                    dj djVarA = D().a(str, zzeuVar.f4724a);
                    if (djVarA == null) {
                        bArr = null;
                        jgVar = jgVar2;
                        ctVar = ctVar3;
                        jfVar = jfVar4;
                        bundle = bundleB;
                        D().a(new dj(str, zzeuVar.f4724a, 1L, 0L, zzeuVar.f4727d, 0L, null, null, null));
                        j = 0;
                    } else {
                        jgVar = jgVar2;
                        jfVar = jfVar4;
                        ctVar = ctVar3;
                        bArr = null;
                        bundle = bundleB;
                        long j3 = djVarA.f4206e;
                        D().a(djVarA.a(zzeuVar.f4727d).a());
                        j = j3;
                    }
                    di diVar = new di(this.h, zzeuVar.f4726c, str, zzeuVar.f4724a, zzeuVar.f4727d, j, bundle);
                    jd jdVar = new jd();
                    jg jgVar3 = jgVar;
                    jgVar3.f4613d = new jd[]{jdVar};
                    jdVar.f4607e = Long.valueOf(diVar.f4199c);
                    jdVar.f4606d = diVar.f4198b;
                    jdVar.f = Long.valueOf(diVar.f4200d);
                    jdVar.f4605c = new je[diVar.f4201e.a()];
                    int i2 = 0;
                    for (String str3 : diVar.f4201e) {
                        je jeVar = new je();
                        jdVar.f4605c[i2] = jeVar;
                        jeVar.f4608c = str3;
                        m().a(jeVar, diVar.f4201e.a(str3));
                        i2++;
                    }
                    jgVar3.C = a(ctVar.b(), jgVar3.f4614e, jgVar3.f4613d);
                    jgVar3.g = jdVar.f4607e;
                    jgVar3.h = jdVar.f4607e;
                    long jH = ctVar.h();
                    jgVar3.j = jH != 0 ? Long.valueOf(jH) : bArr;
                    long jG = ctVar.g();
                    if (jG != 0) {
                        jH = jG;
                    }
                    jgVar3.i = jH != 0 ? Long.valueOf(jH) : bArr;
                    ctVar.r();
                    jgVar3.y = Integer.valueOf((int) ctVar.o());
                    jgVar3.t = 12451L;
                    jgVar3.f = Long.valueOf(j().a());
                    jgVar3.B = Boolean.TRUE;
                    ct ctVar4 = ctVar;
                    ctVar4.a(jgVar3.g.longValue());
                    ctVar4.b(jgVar3.h.longValue());
                    D().a(ctVar4);
                    D().v();
                    try {
                        int iD = jfVar.d();
                        byte[] bArr2 = new byte[iD];
                        d dVarA = d.a(bArr2, 0, iD);
                        jfVar.a(dVarA);
                        dVarA.a();
                        return m().a(bArr2);
                    } catch (IOException e2) {
                        q().v().a("Data loss. Failed to bundle and serialize. appId", dx.a(str), e2);
                        return bArr;
                    }
                }
                q().B().a("Log and bundle disabled. package_name", str);
            }
            return new byte[0];
        } finally {
            D().w();
        }
    }

    public ei c() {
        return this.h.c();
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x0387 A[Catch: all -> 0x03b3, TryCatch #2 {all -> 0x03b3, blocks: (B:24:0x0095, B:26:0x00a1, B:28:0x00a7, B:30:0x00b3, B:31:0x00d9, B:33:0x0122, B:36:0x0135, B:39:0x0149, B:42:0x0156, B:44:0x0160, B:45:0x017f, B:52:0x01b7, B:54:0x01bc, B:55:0x01c4, B:60:0x01d7, B:63:0x01eb, B:65:0x0231, B:67:0x0235, B:68:0x0238, B:70:0x0242, B:104:0x02e8, B:106:0x0303, B:107:0x0306, B:108:0x0317, B:117:0x0368, B:118:0x0383, B:122:0x03a4, B:72:0x0257, B:74:0x0262, B:82:0x0281, B:84:0x0289, B:86:0x0291, B:88:0x0297, B:92:0x02a1, B:93:0x02b0, B:98:0x02d6, B:100:0x02dc, B:101:0x02df, B:103:0x02e5, B:96:0x02c0, B:80:0x026b, B:111:0x031f, B:113:0x034f, B:115:0x0353, B:116:0x0356, B:119:0x0387, B:121:0x038d, B:57:0x01cb, B:46:0x0183, B:48:0x018b, B:50:0x0197), top: B:133:0x0095, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d7 A[Catch: all -> 0x03b3, TRY_LEAVE, TryCatch #2 {all -> 0x03b3, blocks: (B:24:0x0095, B:26:0x00a1, B:28:0x00a7, B:30:0x00b3, B:31:0x00d9, B:33:0x0122, B:36:0x0135, B:39:0x0149, B:42:0x0156, B:44:0x0160, B:45:0x017f, B:52:0x01b7, B:54:0x01bc, B:55:0x01c4, B:60:0x01d7, B:63:0x01eb, B:65:0x0231, B:67:0x0235, B:68:0x0238, B:70:0x0242, B:104:0x02e8, B:106:0x0303, B:107:0x0306, B:108:0x0317, B:117:0x0368, B:118:0x0383, B:122:0x03a4, B:72:0x0257, B:74:0x0262, B:82:0x0281, B:84:0x0289, B:86:0x0291, B:88:0x0297, B:92:0x02a1, B:93:0x02b0, B:98:0x02d6, B:100:0x02dc, B:101:0x02df, B:103:0x02e5, B:96:0x02c0, B:80:0x026b, B:111:0x031f, B:113:0x034f, B:115:0x0353, B:116:0x0356, B:119:0x0387, B:121:0x038d, B:57:0x01cb, B:46:0x0183, B:48:0x018b, B:50:0x0197), top: B:133:0x0095, inners: #3, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(com.google.android.gms.internal.measurement.zzdz r22) {
        /*
            Method dump skipped, instruction units count: 958
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ii.c(com.google.android.gms.internal.measurement.zzdz):void");
    }

    public final String d(zzdz zzdzVar) {
        try {
            return (String) p().a(new il(this, zzdzVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            q().v().a("Failed to get app instance id. appId", dx.a(zzdzVar.f4713a), e2);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.cw
    public com.google.android.gms.common.util.d j() {
        return this.h.j();
    }

    @Override // com.google.android.gms.internal.measurement.cw
    public Context k() {
        return this.h.k();
    }

    public iq m() {
        return this.h.m();
    }

    public dv n() {
        return this.h.n();
    }

    @Override // com.google.android.gms.internal.measurement.cw
    public ex p() {
        return this.h.p();
    }

    @Override // com.google.android.gms.internal.measurement.cw
    public dx q() {
        return this.h.q();
    }

    public dh t() {
        return this.h.t();
    }

    public void w() {
        p().c();
    }
}
