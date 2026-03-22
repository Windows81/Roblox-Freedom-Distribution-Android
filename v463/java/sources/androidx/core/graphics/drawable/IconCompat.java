package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Parcelable;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class IconCompat extends CustomVersionedParcelable {
    static final PorterDuff.Mode h = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f1437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f1438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Parcelable f1439d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1440e;
    public int f;
    public ColorStateList g = null;
    PorterDuff.Mode i = h;
    public String j;

    private static String a(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "UNKNOWN" : "BITMAP_MASKABLE" : "URI" : "DATA" : "RESOURCE" : "BITMAP";
    }

    public String a() {
        if (this.f1436a == -1 && Build.VERSION.SDK_INT >= 23) {
            return a((Icon) this.f1437b);
        }
        if (this.f1436a != 2) {
            throw new IllegalStateException("called getResPackage() on " + this);
        }
        return ((String) this.f1437b).split(":", -1)[0];
    }

    public int b() {
        if (this.f1436a == -1 && Build.VERSION.SDK_INT >= 23) {
            return b((Icon) this.f1437b);
        }
        if (this.f1436a != 2) {
            throw new IllegalStateException("called getResId() on " + this);
        }
        return this.f1440e;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            r4 = this;
            int r0 = r4.f1436a
            r1 = -1
            if (r0 != r1) goto Lc
            java.lang.Object r0 = r4.f1437b
            java.lang.String r0 = java.lang.String.valueOf(r0)
            return r0
        Lc:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Icon(typ="
            r0.<init>(r1)
            int r1 = r4.f1436a
            java.lang.String r1 = a(r1)
            r0.append(r1)
            int r1 = r4.f1436a
            r2 = 1
            if (r1 == r2) goto L7a
            r3 = 2
            if (r1 == r3) goto L52
            r2 = 3
            if (r1 == r2) goto L39
            r2 = 4
            if (r1 == r2) goto L2e
            r2 = 5
            if (r1 == r2) goto L7a
            goto L9a
        L2e:
            java.lang.String r1 = " uri="
            r0.append(r1)
            java.lang.Object r1 = r4.f1437b
            r0.append(r1)
            goto L9a
        L39:
            java.lang.String r1 = " len="
            r0.append(r1)
            int r1 = r4.f1440e
            r0.append(r1)
            int r1 = r4.f
            if (r1 == 0) goto L9a
            java.lang.String r1 = " off="
            r0.append(r1)
            int r1 = r4.f
            r0.append(r1)
            goto L9a
        L52:
            java.lang.String r1 = " pkg="
            r0.append(r1)
            java.lang.String r1 = r4.a()
            r0.append(r1)
            java.lang.String r1 = " id="
            r0.append(r1)
            java.lang.Object[] r1 = new java.lang.Object[r2]
            r2 = 0
            int r3 = r4.b()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r1[r2] = r3
            java.lang.String r2 = "0x%08x"
            java.lang.String r1 = java.lang.String.format(r2, r1)
            r0.append(r1)
            goto L9a
        L7a:
            java.lang.String r1 = " size="
            r0.append(r1)
            java.lang.Object r1 = r4.f1437b
            android.graphics.Bitmap r1 = (android.graphics.Bitmap) r1
            int r1 = r1.getWidth()
            r0.append(r1)
            java.lang.String r1 = "x"
            r0.append(r1)
            java.lang.Object r1 = r4.f1437b
            android.graphics.Bitmap r1 = (android.graphics.Bitmap) r1
            int r1 = r1.getHeight()
            r0.append(r1)
        L9a:
            android.content.res.ColorStateList r1 = r4.g
            if (r1 == 0) goto La8
            java.lang.String r1 = " tint="
            r0.append(r1)
            android.content.res.ColorStateList r1 = r4.g
            r0.append(r1)
        La8:
            android.graphics.PorterDuff$Mode r1 = r4.i
            android.graphics.PorterDuff$Mode r2 = androidx.core.graphics.drawable.IconCompat.h
            if (r1 == r2) goto Lb8
            java.lang.String r1 = " mode="
            r0.append(r1)
            android.graphics.PorterDuff$Mode r1 = r4.i
            r0.append(r1)
        Lb8:
            java.lang.String r1 = ")"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompat.toString():java.lang.String");
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void a(boolean z) {
        this.j = this.i.name();
        int i = this.f1436a;
        if (i == -1) {
            if (z) {
                throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
            }
            this.f1439d = (Parcelable) this.f1437b;
            return;
        }
        if (i != 1) {
            if (i == 2) {
                this.f1438c = ((String) this.f1437b).getBytes(Charset.forName("UTF-16"));
                return;
            }
            if (i == 3) {
                this.f1438c = (byte[]) this.f1437b;
                return;
            } else if (i == 4) {
                this.f1438c = this.f1437b.toString().getBytes(Charset.forName("UTF-16"));
                return;
            } else if (i != 5) {
                return;
            }
        }
        if (z) {
            Bitmap bitmap = (Bitmap) this.f1437b;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
            this.f1438c = byteArrayOutputStream.toByteArray();
            return;
        }
        this.f1439d = (Parcelable) this.f1437b;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void c() {
        this.i = PorterDuff.Mode.valueOf(this.j);
        int i = this.f1436a;
        if (i == -1) {
            Parcelable parcelable = this.f1439d;
            if (parcelable != null) {
                this.f1437b = parcelable;
                return;
            }
            throw new IllegalArgumentException("Invalid icon");
        }
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    this.f1437b = this.f1438c;
                    return;
                } else if (i != 4) {
                    if (i != 5) {
                        return;
                    }
                }
            }
            this.f1437b = new String(this.f1438c, Charset.forName("UTF-16"));
            return;
        }
        Parcelable parcelable2 = this.f1439d;
        if (parcelable2 != null) {
            this.f1437b = parcelable2;
            return;
        }
        byte[] bArr = this.f1438c;
        this.f1437b = bArr;
        this.f1436a = 3;
        this.f1440e = 0;
        this.f = bArr.length;
    }

    private static String a(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResPackage();
        }
        try {
            return (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e2) {
            Log.e("IconCompat", "Unable to get icon package", e2);
            return null;
        } catch (NoSuchMethodException e3) {
            Log.e("IconCompat", "Unable to get icon package", e3);
            return null;
        } catch (InvocationTargetException e4) {
            Log.e("IconCompat", "Unable to get icon package", e4);
            return null;
        }
    }

    private static int b(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResId();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e2) {
            Log.e("IconCompat", "Unable to get icon resource", e2);
            return 0;
        } catch (NoSuchMethodException e3) {
            Log.e("IconCompat", "Unable to get icon resource", e3);
            return 0;
        } catch (InvocationTargetException e4) {
            Log.e("IconCompat", "Unable to get icon resource", e4);
            return 0;
        }
    }
}
