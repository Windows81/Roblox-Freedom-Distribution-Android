package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.appsflyer.AFLogger;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class c {

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private static int f226 = 0;

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private static int f228 = 1;

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private static char[] f225 = {61163, 22514, 40130, 50618, 2749, 29581, 47210, 57662, 9806, 28457, 54330, 7453, 17394, 35068, 61905, 13998, 32659, 42194, 60754, 21069, 39774, 49185, 2334, 19992, 46325, 64962, 8911, 27541, 53379, 6554, 24191, 34631, 52271, 13614, 52353, 60956, 4935, 43601, 24939, 14341, 63307, 36381, 17911, 7305, 56298, 37532, 10685, 57476, 48766, 30029, 3175, 51975, 33325, 22802, 21602, 60791, 9806, 32551, 45113, 51467, 692, 23471, 40073, 54690, 28393, 42945, 63849, 12924, 19213, 35961, 50516, 7696, 22456, 59591, 8588, 31403, 46032, 62666, 3700, 18207, 38925, 53556, 27226, 41806, 58533, 15771, 47429, '\\', 52076, 37396, 23827, 9251, 61380, 46736, 29179, 14481, 33750, 19092, 5197, 57166, 42596, 24843, 10294, 62251, 47845, 1511, 52466, 38795, 24231, 6587, 58182, 30898, 49579, 2715, 21475, 40164, 58836, 11827, 30567, 45067, 63860, 17021, 35653, 54700, 7852, 26517, 41212, 59805, 13046, 31546, 50207, 3352, 22130, 40773, 42262, 7183, 55103, 36423, 16704, 14448, 62359, 43715, 28072, 9410, 40837, 22212, 2060, 49936, 47661, 32094, 13379, 61280, 42632, 6590, 'a', 47480, 29256, 11056, 58423, 40199, 22240, 4020, 51422, 33187, 15016, 62428, 44381, 26220, 8029, 49716, 45998, 2762, 64061, 17184, 34829, 53620, 7713, 26448, 44220, 62947, 12947, 31740, 49403, 2497, 22326, 39995, '/', 47477, 29261, 11041, 58416, 40203, 13489, 36259, 18076, 8065, 53428, 43483, 25139, 15147, 64517, 46448, 'C', 47486, 29257, 11041, 58419, 40221, 22257, 4087, 51445, 33214, 15039, 62359, 44408, 26218, 8029, 55333, 37134, 50529, 31824, 46946, 60937, 8474, 22573, 37763, 51913, 3576, 17601, 65436, 14000, 26715, 41753, 55920, 7436, 21540, 36665, 50894, 31141, 45295, 60296, 8887, 26037, 40727, 54902, 2418, 16385, 64295, 12921, 30166, 44277, 59268, 7828, 20923, 35665, 49750, 1382, 48141, 63303, 11895, 17313, 64181, 12702, 26829, 42992, 57051, 5430, 19517, 35610, 49772, 31103, 45136, 61071, 9640, 23682, 39904, 53967, 2515, 16427, 65296, 13847, 28007, 42060, 58191, 48803, 1950, 52393, 38337, 23251, 9213, 59409, 45335, 30210, 16195, 33882, 19838, 5005, 55453, 41376, 26351, 12280, 62709, 48393, 562, 52012, 36935, 22891, 7796, 48359, 1494, 52964, 38799, 22684, 8619, 59909, 45906, 29823, 15633, 34322, 20280, 4556, 55967, 41959, 25742, 11687, 63163, 48968, '`', 51565, 37386, 23329, 7291, 59100, 45026, 28905, 14747, 33446, 19387, 3093, 54652, 40456, 26371, 10277, 62083, 48092, 31991, 50566, 36510, 22433, 6227, 57684, 43644, 29447, 13381, 64885};

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static long f227 = 5583085843407419670L;

    c() {
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01b5  */
    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m158(android.content.Context r15, long r16) {
        /*
            Method dump skipped, instruction units count: 573
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.c.m158(android.content.Context, long):java.lang.String");
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private static String m164(String str, Long l) {
        if (!(str == null)) {
            int i = f228 + 125;
            f226 = i % 128;
            int i2 = i % 2;
            if (!(l == null)) {
                int i3 = f226 + 59;
                f228 = i3 % 128;
                int i4 = i3 % 2;
                if (str.length() == 32) {
                    StringBuilder sb = new StringBuilder(str);
                    String string = l.toString();
                    long numericValue = 0;
                    int numericValue2 = 0;
                    for (int i5 = 0; i5 < string.length(); i5++) {
                        numericValue2 += Character.getNumericValue(string.charAt(i5));
                    }
                    String hexString = Integer.toHexString(numericValue2);
                    sb.replace(7, hexString.length() + 7, hexString);
                    for (int i6 = 0; i6 < sb.length(); i6++) {
                        numericValue += (long) Character.getNumericValue(sb.charAt(i6));
                    }
                    while (true) {
                        if (!(numericValue > 100)) {
                            break;
                        }
                        numericValue %= 100;
                    }
                    sb.insert(23, (int) numericValue);
                    if ((numericValue < 10 ? 'Q' : '`') != '`') {
                        sb.insert(23, m163(35, (char) 60972, 1).intern());
                    }
                    return sb.toString();
                }
            }
        }
        return m163(54, (char) 21504, 32).intern();
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private static boolean m159(String str) {
        int i = f226 + 89;
        f228 = i % 128;
        int i2 = i % 2;
        try {
            Class.forName(str);
            int i3 = f228 + 49;
            f226 = i3 % 128;
            int i4 = i3 % 2;
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static String m162(String str) {
        int i = f228 + 65;
        f226 = i % 128;
        int i2 = i % 2;
        if (!(str.contains(m163(169, (char) 49690, 1).intern()))) {
            return str;
        }
        String[] strArrSplit = str.split(m163(170, (char) 46066, 2).intern());
        int length = strArrSplit.length;
        StringBuilder sb = new StringBuilder();
        int i3 = length - 1;
        sb.append(strArrSplit[i3]);
        sb.append(m163(169, (char) 49690, 1).intern());
        int i4 = f226 + 103;
        f228 = i4 % 128;
        int i5 = i4 % 2;
        int i6 = 1;
        while (true) {
            if (i6 < i3) {
                int i7 = f226 + 61;
                f228 = i7 % 128;
                int i8 = i7 % 2;
                sb.append(strArrSplit[i6]);
                sb.append(m163(169, (char) 49690, 1).intern());
                i6++;
            } else {
                sb.append(strArrSplit[0]);
                return sb.toString();
            }
        }
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private static String m157(Context context) {
        if ((System.getProperties().containsKey(m163(172, (char) 64087, 14).intern()) ? '.' : 'C') == 'C') {
            return null;
        }
        int i = f226 + 51;
        f228 = i % 128;
        int i2 = i % 2;
        try {
            Matcher matcher = Pattern.compile(m163(192, (char) 13471, 10).intern()).matcher(context.getCacheDir().getPath().replace(m163(186, (char) 0, 6).intern(), ""));
            if ((matcher.find() ? ')' : 'c') != ')') {
                return null;
            }
            int i3 = f228 + 89;
            f226 = i3 % 128;
            if (i3 % 2 != 0) {
            }
            return matcher.group(1);
        } catch (Exception e2) {
            if (ai.f184 == null) {
                ai.f184 = new ai();
                int i4 = f226 + 87;
                f228 = i4 % 128;
                int i5 = i4 % 2;
            }
            ai aiVar = ai.f184;
            String strIntern = m163(202, (char) 0, 17).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(m163(219, (char) 50471, 41).intern());
            sb.append(e2);
            aiVar.m141(null, strIntern, sb.toString());
            return null;
        }
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private static String m160(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
            int i = f226 + 83;
            f228 = i % 128;
            int i2 = i % 2;
            int i3 = f228 + 79;
            f226 = i3 % 128;
            int i4 = i3 % 2;
            return str;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static String m161(Context context, String str) {
        Iterator it;
        int i = f228 + 27;
        f226 = i % 128;
        int i2 = i % 2;
        try {
            it = ((List) PackageManager.class.getDeclaredMethod(m163(260, (char) 17350, 24).intern(), Integer.TYPE).invoke(context.getPackageManager(), 0)).iterator();
            int i3 = f228 + 1;
            f226 = i3 % 128;
            int i4 = i3 % 2;
        } catch (IllegalAccessException e2) {
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai aiVar = ai.f184;
            String strIntern = m163(284, (char) 48864, 24).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(m163(308, (char) 48289, 47).intern());
            sb.append(e2);
            aiVar.m141(null, strIntern, sb.toString());
        } catch (NoSuchMethodException e3) {
            if (ai.f184 == null) {
                ai.f184 = new ai();
                int i5 = f226 + 25;
                f228 = i5 % 128;
                int i6 = i5 % 2;
            }
            ai aiVar2 = ai.f184;
            String strIntern2 = m163(284, (char) 48864, 24).intern();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(m163(308, (char) 48289, 47).intern());
            sb2.append(e3);
            aiVar2.m141(null, strIntern2, sb2.toString());
        } catch (InvocationTargetException e4) {
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai aiVar3 = ai.f184;
            String strIntern3 = m163(284, (char) 48864, 24).intern();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(m163(308, (char) 48289, 47).intern());
            sb3.append(e4);
            aiVar3.m141(null, strIntern3, sb3.toString());
        }
        do {
            if ((it.hasNext() ? '7' : (char) 7) != '7') {
                return Boolean.FALSE.toString();
            }
        } while (!(((PackageItemInfo) ((ApplicationInfo) it.next())).packageName.equals(str)));
        int i7 = f226 + 101;
        f228 = i7 % 128;
        if (i7 % 2 != 0) {
            return Boolean.TRUE.toString();
        }
        int i8 = 75 / 0;
        return Boolean.TRUE.toString();
    }

    public static class a extends HashMap<String, Object> {

        /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
        private static int f230 = 0;

        /* JADX INFO: renamed from: І, reason: contains not printable characters */
        private static int f232 = 1;

        /* JADX INFO: renamed from: ı, reason: contains not printable characters */
        private final Map<String, Object> f233;

        /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
        private final Context f234;

        /* JADX INFO: renamed from: ι, reason: contains not printable characters */
        private static char[] f231 = {'a', 61894, 58143, 54420, 50921, 47181, 43429, 39699, 36212, 32449, 28717, 24976, 'b', 61906, 58145, 54414, 50916, 'N', 61935, 58143, 54434, 50898, 47201, 43406, 39716, 'k', 61893, 58150, 'f', 61889, 58153, 54412, 50917, 47172, 43488, 39687, 36197, 32462, 28709, 24978, 21473, 17748, 13993, 10254, 6759, 2944, 64811, 61061, 57574, 53760, 50091, 46341, 42873, 39040, 35383, 31625, 28148, 24392, 20704, 16901, 13432, 9667, 5925, 2192, 64244, 60489, 56751, 53006, 49466, 45696, 14536, 51558, 56197, 60538, 65050, 32954, 37210, 'f', 61897, 58162, 54419, 50932, 47212, 43425, 39701, 36206, 32451, 28712, 24996, 21473, 17748, 13989, '5', 61838, 58228, 54478, 50865, 24553, 44566, 48359, 35594, 39278, 14334, 50777, 54449, 58132, 61821, 36828, 40568, 44191, 47869, 18774, 18365, 22026, 25721, 29388, 305, 8086, 11775, 15384, 51891, 55581, 55166, 58776, 62510, 33433, 37108, 44877, 48573, 19544, 23151, 26833, 26412, 30096, 952, 4701, 8352, 16155, 52605, 56264, 59948, 63633, 63223, 34134, 37858, 41560, 51824, 15315, 10544, 7831, 3315, 29271, 25570, 20807, 18214, 46210, 47670, 43979, 39331, 36692, 64736, 57922, 53283, 49546, 'a', 61902, 58148, 54418, 50927, 47177, 43428, 39758, 36201, 32462, 28724, 24965, 21486, 17748, 14062, 10241, 6755, 3028, 64809, 61071, 57582, 53774, 50050, 46369, 42836, 39156, 35333, 31666, 28121, 24447, 20611, 16936, 13377, 9710, 5895, 2213, 64196, 't', 61893, 58157, 54416, 50917, 47186, 43425, 39700, 36213, 32466, 28709, 64752, 3344, 8190, 26734, 39384, 35635, 48270, 44786, 53327, 24021, 33232, 28718, '&', 61907, '&', 61904, 'f', 61840, 58161, 54480, 50929, 47121, 43440, 39761, 36208, 32402, 28786, 24963, 21480, 17748, 13985, 10253};

        /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
        private static long f229 = -8771784815112425056L;

        public a(Map<String, Object> map, Context context) {
            this.f233 = map;
            this.f234 = context;
            put(m167(), m165());
        }

        /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
        private static StringBuilder m168(String... strArr) throws Exception {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                if ((i < 3 ? (char) 22 : '\r') == '\r') {
                    break;
                }
                arrayList.add(Integer.valueOf(strArr[i].length()));
                i++;
            }
            Collections.sort(arrayList);
            int iIntValue = ((Integer) arrayList.get(0)).intValue();
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < iIntValue; i2++) {
                int i3 = f230 + 105;
                f232 = i3 % 128;
                int i4 = i3 % 2;
                Integer numValueOf = null;
                int i5 = 0;
                while (true) {
                    if (!(i5 < 3)) {
                        break;
                    }
                    int iCharAt = strArr[i5].charAt(i2);
                    if (numValueOf != null) {
                        iCharAt ^= numValueOf.intValue();
                    } else {
                        int i6 = f230 + 95;
                        f232 = i6 % 128;
                        int i7 = i6 % 2;
                    }
                    numValueOf = Integer.valueOf(iCharAt);
                    i5++;
                    int i8 = f230 + 87;
                    f232 = i8 % 128;
                    int i9 = i8 % 2;
                }
                sb.append(Integer.toHexString(numValueOf.intValue()));
            }
            return sb;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
        private String m167() {
            int i = f232 + 49;
            f230 = i % 128;
            int i2 = i % 2;
            char string = 0;
            try {
                String string2 = Integer.toString(Build.VERSION.SDK_INT);
                String string3 = this.f233.get(m166(0, (char) 0, 12).intern()).toString();
                String string4 = this.f233.get(m166(12, (char) 0, 5).intern()).toString();
                if (string4 == null) {
                    string4 = m166(17, (char) 0, 8).intern();
                    int i3 = f232 + 117;
                    f230 = i3 % 128;
                    int i4 = i3 % 2;
                }
                StringBuilder sb = new StringBuilder(string3);
                sb.reverse();
                StringBuilder sbM168 = m168(string2, string4, sb.toString());
                int length = sbM168.length();
                if (length > 4) {
                    int i5 = f232 + 73;
                    f230 = i5 % 128;
                    if (!(i5 % 2 == 0)) {
                        sbM168.delete(3, length);
                    } else {
                        sbM168.delete(4, length);
                    }
                } else {
                    while (true) {
                        if (length >= 4) {
                            break;
                        }
                        length++;
                        sbM168.append('1');
                        int i6 = f232 + 67;
                        f230 = i6 % 128;
                        int i7 = i6 % 2;
                    }
                }
                sbM168.insert(0, m166(25, (char) 0, 3).intern());
                string = sbM168.toString();
                return string;
            } catch (Exception e2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(m166(28, string, 42).intern());
                sb2.append(e2);
                AFLogger.afRDLog(sb2.toString());
                return m166(70, (char) 14499, 7).intern();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x0147  */
        /* JADX INFO: renamed from: ı, reason: contains not printable characters */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private java.lang.String m165() {
            /*
                Method dump skipped, instruction units count: 532
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.c.a.m165():java.lang.String");
        }

        /* JADX INFO: renamed from: com.appsflyer.internal.c$a$c, reason: collision with other inner class name */
        public static class C0067c {

            /* JADX INFO: renamed from: ı, reason: contains not printable characters */
            private final Object f235;

            /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
            public String f236;

            /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
            private long f237;

            C0067c() {
            }

            /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
            static byte[] m170(String str) throws Exception {
                return str.getBytes();
            }

            /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
            static byte[] m171(byte[] bArr) throws Exception {
                for (int i = 0; i < bArr.length; i++) {
                    bArr[i] = (byte) (bArr[i] ^ ((i % 2) + 42));
                }
                return bArr;
            }

            /* JADX INFO: renamed from: ι, reason: contains not printable characters */
            static String m173(byte[] bArr) throws Exception {
                StringBuilder sb = new StringBuilder();
                for (byte b2 : bArr) {
                    String hexString = Integer.toHexString(b2);
                    if (hexString.length() == 1) {
                        hexString = "0".concat(String.valueOf(hexString));
                    }
                    sb.append(hexString);
                }
                return sb.toString();
            }

            public C0067c(long j, String str) {
                this.f235 = new Object();
                this.f237 = 0L;
                this.f236 = "";
                this.f237 = j;
                this.f236 = str;
            }

            /* JADX INFO: renamed from: ι, reason: contains not printable characters */
            public static C0067c m172(String str) {
                if (str != null) {
                    String[] strArrSplit = str.split(",");
                    if (strArrSplit.length >= 2) {
                        return new C0067c(Long.parseLong(strArrSplit[0]), strArrSplit[1]);
                    }
                    return new C0067c(0L, "");
                }
                return new C0067c(0L, "");
            }

            /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
            public final boolean m175(C0067c c0067c) {
                return m169(c0067c.f237, c0067c.f236);
            }

            /* JADX INFO: renamed from: ı, reason: contains not printable characters */
            private boolean m169(long j, String str) {
                synchronized (this.f235) {
                    if (str != null) {
                        if (!str.equals(this.f236) && m174(j)) {
                            this.f237 = j;
                            this.f236 = str;
                            return true;
                        }
                    }
                    return false;
                }
            }

            /* JADX INFO: renamed from: ι, reason: contains not printable characters */
            private boolean m174(long j) {
                return j - this.f237 > 2000;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f237);
                sb.append(",");
                sb.append(this.f236);
                return sb.toString();
            }
        }

        /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
        private static String m166(int i, char c2, int i2) {
            int i3 = f230 + 19;
            f232 = i3 % 128;
            int i4 = i3 % 2;
            char[] cArr = new char[i2];
            int i5 = 0;
            while (true) {
                if (!(i5 < i2)) {
                    return new String(cArr);
                }
                int i6 = f232 + 95;
                f230 = i6 % 128;
                int i7 = i6 % 2;
                cArr[i5] = (char) ((((long) f231[i + i5]) ^ (((long) i5) * f229)) ^ ((long) c2));
                i5++;
                int i8 = f230 + 125;
                f232 = i8 % 128;
                int i9 = i8 % 2;
            }
        }
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private static String m163(int i, char c2, int i2) {
        char[] cArr = new char[i2];
        int i3 = 0;
        while (true) {
            if ((i3 < i2 ? 'J' : 'Y') == 'Y') {
                return new String(cArr);
            }
            int i4 = f228 + 85;
            f226 = i4 % 128;
            if (i4 % 2 != 0) {
                cArr[i3] = (char) ((((long) f225[i + i3]) | (((long) i3) % f227)) * ((long) c2));
                i3 += 37;
            } else {
                cArr[i3] = (char) ((((long) f225[i + i3]) ^ (((long) i3) * f227)) ^ ((long) c2));
                i3++;
            }
            int i5 = f228 + 109;
            f226 = i5 % 128;
            int i6 = i5 % 2;
        }
    }
}
