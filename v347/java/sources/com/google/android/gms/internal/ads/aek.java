package com.google.android.gms.internal.ads;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'i' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class aek {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final aek f3867a = new aek("DOUBLE", 0, aep.DOUBLE, 1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final aek f3868b = new aek("FLOAT", 1, aep.FLOAT, 5);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final aek f3869c = new aek("INT64", 2, aep.LONG, 0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final aek f3870d = new aek("UINT64", 3, aep.LONG, 0);
    public static final aek e = new aek("INT32", 4, aep.INT, 0);
    public static final aek f = new aek("FIXED64", 5, aep.LONG, 1);
    public static final aek g = new aek("FIXED32", 6, aep.INT, 5);
    public static final aek h = new aek("BOOL", 7, aep.BOOLEAN, 0);
    public static final aek i;
    public static final aek j;
    public static final aek k;
    public static final aek l;
    public static final aek m;
    public static final aek n;
    public static final aek o;
    public static final aek p;
    public static final aek q;
    public static final aek r;
    private static final /* synthetic */ aek[] u;
    private final aep s;
    private final int t;

    static {
        final int i2 = 3;
        final int i3 = 2;
        final String str = "STRING";
        final int i4 = 8;
        final aep aepVar = aep.STRING;
        i = new aek(str, i4, aepVar, i3) { // from class: com.google.android.gms.internal.ads.ael
            {
                int i5 = 8;
                int i6 = 2;
                aej aejVar = null;
            }
        };
        final String str2 = "GROUP";
        final int i5 = 9;
        final aep aepVar2 = aep.MESSAGE;
        j = new aek(str2, i5, aepVar2, i2) { // from class: com.google.android.gms.internal.ads.aem
            {
                int i6 = 9;
                int i7 = 3;
                aej aejVar = null;
            }
        };
        final String str3 = "MESSAGE";
        final int i6 = 10;
        final aep aepVar3 = aep.MESSAGE;
        k = new aek(str3, i6, aepVar3, i3) { // from class: com.google.android.gms.internal.ads.aen
            {
                int i7 = 10;
                int i8 = 2;
                aej aejVar = null;
            }
        };
        final String str4 = "BYTES";
        final int i7 = 11;
        final aep aepVar4 = aep.BYTE_STRING;
        l = new aek(str4, i7, aepVar4, i3) { // from class: com.google.android.gms.internal.ads.aeo
            {
                int i8 = 11;
                int i9 = 2;
                aej aejVar = null;
            }
        };
        m = new aek("UINT32", 12, aep.INT, 0);
        n = new aek("ENUM", 13, aep.ENUM, 0);
        o = new aek("SFIXED32", 14, aep.INT, 5);
        p = new aek("SFIXED64", 15, aep.LONG, 1);
        q = new aek("SINT32", 16, aep.INT, 0);
        r = new aek("SINT64", 17, aep.LONG, 0);
        u = new aek[]{f3867a, f3868b, f3869c, f3870d, e, f, g, h, i, j, k, l, m, n, o, p, q, r};
    }

    private aek(String str, int i2, aep aepVar, int i3) {
        this.s = aepVar;
        this.t = i3;
    }

    /* synthetic */ aek(String str, int i2, aep aepVar, int i3, aej aejVar) {
        this(str, i2, aepVar, i3);
    }

    public static aek[] values() {
        return (aek[]) u.clone();
    }

    public final aep a() {
        return this.s;
    }

    public final int b() {
        return this.t;
    }
}
