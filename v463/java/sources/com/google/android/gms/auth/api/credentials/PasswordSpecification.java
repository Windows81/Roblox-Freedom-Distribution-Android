package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class PasswordSpecification extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<PasswordSpecification> CREATOR = new p();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PasswordSpecification f3358a = new a().a(12, 16).a("abcdefghijkmnopqrstxyzABCDEFGHJKLMNPQRSTXY3456789").a("abcdefghijkmnopqrstxyz", 1).a("ABCDEFGHJKLMNPQRSTXY", 1).a("3456789", 1).a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final PasswordSpecification f3359b = new a().a(12, 16).a("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890").a("abcdefghijklmnopqrstuvwxyz", 1).a("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1).a("1234567890", 1).a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f3360c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<String> f3361d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<Integer> f3362e;
    private final int f;
    private final int g;
    private final int[] h;
    private final Random i;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TreeSet<Character> f3363a = new TreeSet<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<String> f3364b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List<Integer> f3365c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3366d = 12;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f3367e = 16;

        private static TreeSet<Character> a(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                throw new b(String.valueOf(str2).concat(" cannot be null or empty"));
            }
            TreeSet<Character> treeSet = new TreeSet<>();
            for (char c2 : str.toCharArray()) {
                if (PasswordSpecification.a(c2, 32, 126)) {
                    throw new b(String.valueOf(str2).concat(" must only contain ASCII printable characters"));
                }
                treeSet.add(Character.valueOf(c2));
            }
            return treeSet;
        }

        public final a a(int i, int i2) {
            this.f3366d = 12;
            this.f3367e = 16;
            return this;
        }

        public final a a(String str) {
            this.f3363a.addAll(a(str, "allowedChars"));
            return this;
        }

        public final a a(String str, int i) {
            this.f3364b.add(PasswordSpecification.b(a(str, "requiredChars")));
            this.f3365c.add(1);
            return this;
        }

        public final PasswordSpecification a() {
            if (this.f3363a.isEmpty()) {
                throw new b("no allowed characters specified");
            }
            Iterator<Integer> it = this.f3365c.iterator();
            int iIntValue = 0;
            while (it.hasNext()) {
                iIntValue += it.next().intValue();
            }
            if (iIntValue > this.f3367e) {
                throw new b("required character count cannot be greater than the max password size");
            }
            boolean[] zArr = new boolean[95];
            Iterator<String> it2 = this.f3364b.iterator();
            while (it2.hasNext()) {
                for (char c2 : it2.next().toCharArray()) {
                    int i = c2 - ' ';
                    if (zArr[i]) {
                        StringBuilder sb = new StringBuilder(58);
                        sb.append("character ");
                        sb.append(c2);
                        sb.append(" occurs in more than one required character set");
                        throw new b(sb.toString());
                    }
                    zArr[i] = true;
                }
            }
            return new PasswordSpecification(PasswordSpecification.b(this.f3363a), this.f3364b, this.f3365c, this.f3366d, this.f3367e);
        }
    }

    public static class b extends Error {
        public b(String str) {
            super(str);
        }
    }

    PasswordSpecification(String str, List<String> list, List<Integer> list2, int i, int i2) {
        this.f3360c = str;
        this.f3361d = Collections.unmodifiableList(list);
        this.f3362e = Collections.unmodifiableList(list2);
        this.f = i;
        this.g = i2;
        int[] iArr = new int[95];
        Arrays.fill(iArr, -1);
        Iterator<String> it = this.f3361d.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            int length = it.next().toCharArray().length;
            for (int i4 = 0; i4 < length; i4++) {
                iArr[r8[i4] - ' '] = i3;
            }
            i3++;
        }
        this.h = iArr;
        this.i = new SecureRandom();
    }

    static /* synthetic */ boolean a(int i, int i2, int i3) {
        return b(i, 32, 126);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(Collection<Character> collection) {
        char[] cArr = new char[collection.size()];
        Iterator<Character> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            cArr[i] = it.next().charValue();
            i++;
        }
        return new String(cArr);
    }

    private static boolean b(int i, int i2, int i3) {
        return i < 32 || i > 126;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f3360c, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 2, this.f3361d, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f3362e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
