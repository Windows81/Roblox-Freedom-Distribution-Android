package com.google.android.gms.internal.measurement;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cv extends ih {
    cv(ii iiVar) {
        super(iiVar);
    }

    private final Boolean a(double d2, iw iwVar) {
        try {
            return a(new BigDecimal(d2), iwVar, Math.ulp(d2));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private final Boolean a(long j, iw iwVar) {
        try {
            return a(new BigDecimal(j), iwVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private static Boolean a(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() ^ z);
    }

    private final Boolean a(String str, int i, boolean z, String str2, List<String> list, String str3) {
        boolean zStartsWith;
        if (str == null) {
            return null;
        }
        if (i == 6) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z && i != 1) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (i) {
            case 1:
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    q().y().a("Invalid regular expression in REGEXP audience filter. expression", str3);
                    return null;
                }
            case 2:
                zStartsWith = str.startsWith(str2);
                break;
            case 3:
                zStartsWith = str.endsWith(str2);
                break;
            case 4:
                zStartsWith = str.contains(str2);
                break;
            case 5:
                zStartsWith = str.equals(str2);
                break;
            case 6:
                zStartsWith = list.contains(str);
                break;
            default:
                return null;
        }
        return Boolean.valueOf(zStartsWith);
    }

    private final Boolean a(String str, iw iwVar) {
        if (!iq.j(str)) {
            return null;
        }
        try {
            return a(new BigDecimal(str), iwVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private final Boolean a(String str, iy iyVar) {
        List<String> listAsList;
        com.google.android.gms.common.internal.aa.a(iyVar);
        if (str == null || iyVar.f4587c == null || iyVar.f4587c.intValue() == 0) {
            return null;
        }
        if (iyVar.f4587c.intValue() == 6) {
            if (iyVar.f == null || iyVar.f.length == 0) {
                return null;
            }
        } else if (iyVar.f4588d == null) {
            return null;
        }
        int iIntValue = iyVar.f4587c.intValue();
        boolean z = iyVar.f4589e != null && iyVar.f4589e.booleanValue();
        String upperCase = (z || iIntValue == 1 || iIntValue == 6) ? iyVar.f4588d : iyVar.f4588d.toUpperCase(Locale.ENGLISH);
        if (iyVar.f == null) {
            listAsList = null;
        } else {
            String[] strArr = iyVar.f;
            if (z) {
                listAsList = Arrays.asList(strArr);
            } else {
                ArrayList arrayList = new ArrayList();
                for (String str2 : strArr) {
                    arrayList.add(str2.toUpperCase(Locale.ENGLISH));
                }
                listAsList = arrayList;
            }
        }
        return a(str, iIntValue, z, upperCase, listAsList, iIntValue == 1 ? upperCase : null);
    }

    private static Boolean a(BigDecimal bigDecimal, iw iwVar, double d2) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        com.google.android.gms.common.internal.aa.a(iwVar);
        if (iwVar.f4581c != null && iwVar.f4581c.intValue() != 0) {
            if (iwVar.f4581c.intValue() == 4) {
                if (iwVar.f == null || iwVar.g == null) {
                    return null;
                }
            } else if (iwVar.f4583e == null) {
                return null;
            }
            int iIntValue = iwVar.f4581c.intValue();
            if (iwVar.f4581c.intValue() == 4) {
                if (iq.j(iwVar.f) && iq.j(iwVar.g)) {
                    try {
                        BigDecimal bigDecimal5 = new BigDecimal(iwVar.f);
                        bigDecimal4 = new BigDecimal(iwVar.g);
                        bigDecimal3 = bigDecimal5;
                        bigDecimal2 = null;
                    } catch (NumberFormatException unused) {
                    }
                }
                return null;
            }
            if (!iq.j(iwVar.f4583e)) {
                return null;
            }
            try {
                bigDecimal2 = new BigDecimal(iwVar.f4583e);
                bigDecimal3 = null;
                bigDecimal4 = null;
            } catch (NumberFormatException unused2) {
            }
            if (iIntValue == 4) {
                if (bigDecimal3 == null) {
                    return null;
                }
            } else if (bigDecimal2 != null) {
            }
            if (iIntValue == 1) {
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == -1);
            }
            if (iIntValue == 2) {
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 1);
            }
            if (iIntValue == 3) {
                if (d2 == 0.0d) {
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                }
                if (bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d2).multiply(new BigDecimal(2)))) == 1 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d2).multiply(new BigDecimal(2)))) == -1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
            if (iIntValue == 4) {
                if (bigDecimal.compareTo(bigDecimal3) != -1 && bigDecimal.compareTo(bigDecimal4) != 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0734  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0737  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x073f  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0747  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0a30  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0a33  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0a3b  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0a50  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0260 A[EDGE_INSN: B:377:0x0260->B:79:0x0260 BREAK  A[LOOP:3: B:73:0x0241->B:78:0x0259], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0281  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final com.google.android.gms.internal.measurement.jc[] a(java.lang.String r52, com.google.android.gms.internal.measurement.jd[] r53, com.google.android.gms.internal.measurement.ji[] r54) {
        /*
            Method dump skipped, instruction units count: 3015
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.cv.a(java.lang.String, com.google.android.gms.internal.measurement.jd[], com.google.android.gms.internal.measurement.ji[]):com.google.android.gms.internal.measurement.jc[]");
    }

    @Override // com.google.android.gms.internal.measurement.ih
    protected final boolean t() {
        return false;
    }
}
