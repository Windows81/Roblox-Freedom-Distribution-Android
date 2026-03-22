package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseIntArray f2403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Parcel f2404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2405c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2406d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f2407e;
    private int f;
    private int g;

    b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "");
    }

    b(Parcel parcel, int i, int i2, String str) {
        this.f2403a = new SparseIntArray();
        this.f = -1;
        this.g = 0;
        this.f2404b = parcel;
        this.f2405c = i;
        this.f2406d = i2;
        this.g = i;
        this.f2407e = str;
    }

    private int d(int i) {
        int i2;
        do {
            int i3 = this.g;
            if (i3 >= this.f2406d) {
                return -1;
            }
            this.f2404b.setDataPosition(i3);
            int i4 = this.f2404b.readInt();
            i2 = this.f2404b.readInt();
            this.g += i4;
        } while (i2 != i);
        return this.f2404b.dataPosition();
    }

    @Override // androidx.versionedparcelable.a
    public boolean b(int i) {
        int iD = d(i);
        if (iD == -1) {
            return false;
        }
        this.f2404b.setDataPosition(iD);
        return true;
    }

    @Override // androidx.versionedparcelable.a
    public void c(int i) {
        b();
        this.f = i;
        this.f2403a.put(i, this.f2404b.dataPosition());
        a(0);
        a(i);
    }

    @Override // androidx.versionedparcelable.a
    public void b() {
        int i = this.f;
        if (i >= 0) {
            int i2 = this.f2403a.get(i);
            int iDataPosition = this.f2404b.dataPosition();
            this.f2404b.setDataPosition(i2);
            this.f2404b.writeInt(iDataPosition - i2);
            this.f2404b.setDataPosition(iDataPosition);
        }
    }

    @Override // androidx.versionedparcelable.a
    protected a c() {
        Parcel parcel = this.f2404b;
        int iDataPosition = parcel.dataPosition();
        int i = this.g;
        if (i == this.f2405c) {
            i = this.f2406d;
        }
        return new b(parcel, iDataPosition, i, this.f2407e + "  ");
    }

    @Override // androidx.versionedparcelable.a
    public void a(byte[] bArr) {
        if (bArr != null) {
            this.f2404b.writeInt(bArr.length);
            this.f2404b.writeByteArray(bArr);
        } else {
            this.f2404b.writeInt(-1);
        }
    }

    @Override // androidx.versionedparcelable.a
    public void a(int i) {
        this.f2404b.writeInt(i);
    }

    @Override // androidx.versionedparcelable.a
    public void a(String str) {
        this.f2404b.writeString(str);
    }

    @Override // androidx.versionedparcelable.a
    public void a(Parcelable parcelable) {
        this.f2404b.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.a
    public int d() {
        return this.f2404b.readInt();
    }

    @Override // androidx.versionedparcelable.a
    public String e() {
        return this.f2404b.readString();
    }

    @Override // androidx.versionedparcelable.a
    public byte[] f() {
        int i = this.f2404b.readInt();
        if (i < 0) {
            return null;
        }
        byte[] bArr = new byte[i];
        this.f2404b.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.a
    public <T extends Parcelable> T g() {
        return (T) this.f2404b.readParcelable(getClass().getClassLoader());
    }
}
