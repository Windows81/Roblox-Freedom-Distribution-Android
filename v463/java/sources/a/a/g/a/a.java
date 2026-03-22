package a.a.g.a;

import a.a.g.b.d;
import com.google.gson.a.c;
import java.io.File;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final transient String f415c = a.class.getSimpleName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @c(a = "Id")
    public UUID f416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient boolean f417b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @c(a = "RecordName")
    private String f418d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @c(a = "DataPath")
    private String f419e;

    @c(a = "ReportPath")
    private String f;
    private transient a.a.g.a g;
    private final transient String h;

    a() {
        UUID uuidRandomUUID = UUID.randomUUID();
        this.f416a = uuidRandomUUID;
        this.f417b = false;
        this.h = "";
        this.f418d = String.format("%s-record.json", uuidRandomUUID);
        this.f419e = String.format("%s-attachment", this.f416a);
        this.f418d = String.format("%s-record.json", this.f416a);
    }

    public a.a.g.a a() {
        a.a.g.a aVar = this.g;
        if (aVar != null) {
            return aVar;
        }
        if (!b()) {
            a.a.f.a.b(f415c, "Database record is invalid");
            return null;
        }
        String strA = a.a.b.c.a(new File(this.f419e));
        String strA2 = a.a.b.c.a(new File(this.f));
        try {
            a.a.f.a.a(f415c, "Deserialization diagnostic data");
            a.a.g.a aVar2 = (a.a.g.a) a.a.b.a.a(strA, a.a.g.a.class);
            aVar2.m = (d) a.a.b.a.a(strA2, d.class);
            return aVar2;
        } catch (Exception e2) {
            a.a.f.a.a(f415c, "Exception occurs on deserialization of diagnostic data", e2);
            return null;
        }
    }

    public boolean b() {
        return a.a.b.c.b(this.f419e) && a.a.b.c.b(this.f);
    }

    public void c() {
        a.a.f.a.a(f415c, "Trying delete files from database");
        a(this.f);
        a(this.f419e);
        a(this.f418d);
    }

    private void a(String str) {
        try {
            if (a.a.b.c.b(str)) {
                a.a.f.a.a(f415c, "Passed path exist, trying delete file on database record");
                new File(str).delete();
            }
        } catch (Exception e2) {
            a.a.f.a.a(f415c, String.format("Cannot delete file: %s", str), e2);
        }
    }

    public boolean d() {
        a.a.f.a.a(f415c, "Trying unlock database record");
        try {
            this.f417b = false;
            this.g = null;
            a.a.f.a.a(f415c, "Record unlocked");
            return true;
        } catch (Exception unused) {
            a.a.f.a.c(f415c, "Can not unlock record");
            return false;
        }
    }

    public static a a(File file) {
        a.a.f.a.a(f415c, "Reading JSON from passed file");
        String strA = a.a.b.c.a(file);
        if (strA == null || strA.equals("")) {
            a.a.f.a.b(f415c, "JSON from passed file is null or empty");
            return null;
        }
        return (a) a.a.b.a.a(strA, a.class);
    }
}
