package com.google.android.gms.internal.ads;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class pu extends po {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Set<String> f5452b = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final DecimalFormat f5453c = new DecimalFormat("#,###");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f5454d;
    private boolean e;

    public pu(pc pcVar) {
        super(pcVar);
        File cacheDir = this.f5437a.getCacheDir();
        if (cacheDir == null) {
            jd.e("Context.getCacheDir() returned null");
            return;
        }
        this.f5454d = new File(cacheDir, "admobVideoStreams");
        if (!this.f5454d.isDirectory() && !this.f5454d.mkdirs()) {
            String strValueOf = String.valueOf(this.f5454d.getAbsolutePath());
            jd.e(strValueOf.length() != 0 ? "Could not create preload cache directory at ".concat(strValueOf) : new String("Could not create preload cache directory at "));
            this.f5454d = null;
        } else {
            if (this.f5454d.setReadable(true, false) && this.f5454d.setExecutable(true, false)) {
                return;
            }
            String strValueOf2 = String.valueOf(this.f5454d.getAbsolutePath());
            jd.e(strValueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(strValueOf2) : new String("Could not set cache file permissions at "));
            this.f5454d = null;
        }
    }

    private final File a(File file) {
        return new File(this.f5454d, String.valueOf(file.getName()).concat(".done"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x02b3, code lost:
    
        if ((r2 instanceof java.net.HttpURLConnection) == false) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x02b5, code lost:
    
        r6 = r2.getResponseCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x02bf, code lost:
    
        if (r6 < 400) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x02c1, code lost:
    
        r4 = "badUrl";
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x02c3, code lost:
    
        r3 = java.lang.String.valueOf(java.lang.Integer.toString(r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x02d1, code lost:
    
        if (r3.length() == 0) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x02d3, code lost:
    
        r3 = "HTTP request failed. Code: ".concat(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0305, code lost:
    
        throw new java.io.IOException(new java.lang.StringBuilder(java.lang.String.valueOf(r28).length() + 32).append("HTTP status code ").append(r6).append(" at ").append(r28).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0306, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0309, code lost:
    
        r3 = new java.lang.String("HTTP request failed. Code: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x030f, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0310, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0313, code lost:
    
        r7 = r2.getContentLength();
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0317, code lost:
    
        if (r7 >= 0) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0319, code lost:
    
        r2 = java.lang.String.valueOf(r28);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0323, code lost:
    
        if (r2.length() == 0) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0325, code lost:
    
        r2 = "Stream cache aborted, missing content-length header at ".concat(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0329, code lost:
    
        com.google.android.gms.internal.ads.jd.e(r2);
        a(r28, r13.getAbsolutePath(), "contentLengthMissing", null);
        com.google.android.gms.internal.ads.pu.f5452b.remove(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0342, code lost:
    
        r2 = new java.lang.String("Stream cache aborted, missing content-length header at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0348, code lost:
    
        r4 = com.google.android.gms.internal.ads.pu.f5453c.format(r7);
        r15 = ((java.lang.Integer) com.google.android.gms.internal.ads.aoo.f().a(com.google.android.gms.internal.ads.aro.o)).intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0363, code lost:
    
        if (r7 <= r15) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0365, code lost:
    
        com.google.android.gms.internal.ads.jd.e(new java.lang.StringBuilder((java.lang.String.valueOf(r4).length() + 33) + java.lang.String.valueOf(r28).length()).append("Content length ").append(r4).append(" exceeds limit at ").append(r28).toString());
        r2 = java.lang.String.valueOf(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x03a4, code lost:
    
        if (r2.length() == 0) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x03a6, code lost:
    
        r2 = "File too big for full file cache. Size: ".concat(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x03aa, code lost:
    
        a(r28, r13.getAbsolutePath(), "sizeExceeded", r2);
        com.google.android.gms.internal.ads.pu.f5452b.remove(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x03bf, code lost:
    
        r2 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x03c5, code lost:
    
        r3 = new java.lang.StringBuilder((java.lang.String.valueOf(r4).length() + 20) + java.lang.String.valueOf(r28).length()).append("Caching ").append(r4);
        r4 = " bytes from ";
        com.google.android.gms.internal.ads.jd.b(r3.append(" bytes from ").append(r28).toString());
        r16 = java.nio.channels.Channels.newChannel(r2.getInputStream());
        r12 = new java.io.FileOutputStream(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0407, code lost:
    
        r17 = r12.getChannel();
        r18 = java.nio.ByteBuffer.allocate(1048576);
        r19 = com.google.android.gms.ads.internal.aw.l();
        r6 = 0;
        r20 = r19.a();
        r22 = new com.google.android.gms.internal.ads.ln(((java.lang.Long) com.google.android.gms.internal.ads.aoo.f().a(com.google.android.gms.internal.ads.aro.r)).longValue());
        r2 = com.google.android.gms.internal.ads.aro.q;
        r3 = com.google.android.gms.internal.ads.aoo.f();
        r24 = ((java.lang.Long) r3.a(r2)).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0441, code lost:
    
        r2 = r16.read(r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0449, code lost:
    
        if (r2 < 0) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x044b, code lost:
    
        r6 = r6 + r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x044c, code lost:
    
        if (r6 <= r15) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0450, code lost:
    
        r3 = java.lang.String.valueOf(java.lang.Integer.toString(r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x045e, code lost:
    
        if (r3.length() == 0) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0460, code lost:
    
        "File too big for full file cache. Size: ".concat(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x046b, code lost:
    
        throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x046c, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x046d, code lost:
    
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0470, code lost:
    
        new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0476, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0477, code lost:
    
        r3 = 0;
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x047b, code lost:
    
        r18.flip();
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0482, code lost:
    
        if (r17.write(r18) > 0) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0484, code lost:
    
        r18.clear();
        r4 = 1000 * r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0493, code lost:
    
        if ((r19.a() - r20) <= r4) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0497, code lost:
    
        r2 = java.lang.Long.toString(r24);
        new java.lang.StringBuilder(java.lang.String.valueOf(r2).length() + 29).append("Timeout exceeded. Limit: ").append(r2).append(" sec").toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x04c5, code lost:
    
        throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x04c6, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x04c7, code lost:
    
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x04ce, code lost:
    
        if (r27.e == false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x04d9, code lost:
    
        throw new java.io.IOException("abort requested");
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x04da, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x04db, code lost:
    
        r3 = 0;
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x04e3, code lost:
    
        if (r22.a() == false) goto L252;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x04e5, code lost:
    
        r3 = r27;
        r4 = r28;
        com.google.android.gms.internal.ads.ly.f5287a.post(new com.google.android.gms.internal.ads.pp(r3, r4, r13.getAbsolutePath(), r6, r7, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x04fc, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x04fd, code lost:
    
        r3 = 0;
        r4 = "error";
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0502, code lost:
    
        r12.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x050a, code lost:
    
        if (com.google.android.gms.internal.ads.jd.a(3) == false) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x050c, code lost:
    
        r2 = com.google.android.gms.internal.ads.pu.f5453c.format(r6);
        com.google.android.gms.internal.ads.jd.b(new java.lang.StringBuilder((java.lang.String.valueOf(r2).length() + 22) + java.lang.String.valueOf(r28).length()).append("Preloaded ").append(r2).append(" bytes from ").append(r28).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0548, code lost:
    
        r13.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x0551, code lost:
    
        if (r14.isFile() == false) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0553, code lost:
    
        r14.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x056d, code lost:
    
        r14.createNewFile();
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0573, code lost:
    
        com.google.android.gms.internal.ads.jd.c(new java.lang.StringBuilder(java.lang.String.valueOf(r28).length() + 25).append("Preload failed for URL \"").append(r28).append("\"").toString(), r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x059d, code lost:
    
        r2 = new java.lang.String("Could not delete partial cache file at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x05aa, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x05ab, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x05ae, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x05b1, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x05b2, code lost:
    
        r3 = 0;
        r4 = "error";
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01a8, code lost:
    
        if ((r2 instanceof java.lang.RuntimeException) != false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01aa, code lost:
    
        com.google.android.gms.ads.internal.aw.i().a(r2, "VideoStreamFullFileCache.preload");
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01b3, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01ba, code lost:
    
        if (r27.e == false) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01bc, code lost:
    
        com.google.android.gms.internal.ads.jd.d(new java.lang.StringBuilder(java.lang.String.valueOf(r28).length() + 26).append("Preload aborted for URL \"").append(r28).append("\"").toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01e8, code lost:
    
        if (r13.exists() != false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01f0, code lost:
    
        r2 = java.lang.String.valueOf(r13.getAbsolutePath());
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01fe, code lost:
    
        if (r2.length() == 0) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0200, code lost:
    
        r2 = "Could not delete partial cache file at ".concat(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0204, code lost:
    
        com.google.android.gms.internal.ads.jd.e(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0207, code lost:
    
        a(r28, r13.getAbsolutePath(), r4, r3);
        com.google.android.gms.internal.ads.pu.f5452b.remove(r9);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0573  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0200  */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v45 */
    /* JADX WARN: Type inference failed for: r3v46 */
    /* JADX WARN: Type inference failed for: r3v59 */
    /* JADX WARN: Type inference failed for: r3v60, types: [com.google.android.gms.internal.ads.po] */
    /* JADX WARN: Type inference failed for: r3v71 */
    /* JADX WARN: Type inference failed for: r3v72 */
    /* JADX WARN: Type inference failed for: r3v76 */
    /* JADX WARN: Type inference failed for: r3v93 */
    /* JADX WARN: Type inference failed for: r3v94 */
    /* JADX WARN: Type inference failed for: r4v18, types: [long] */
    /* JADX WARN: Type inference failed for: r4v22, types: [java.lang.String] */
    @Override // com.google.android.gms.internal.ads.po
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(java.lang.String r28) {
        /*
            Method dump skipped, instruction units count: 1467
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.pu.a(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.po
    public final void b() {
        this.e = true;
    }
}
