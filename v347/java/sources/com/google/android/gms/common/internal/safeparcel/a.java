package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: com.google.android.gms.common.internal.safeparcel.a$a, reason: collision with other inner class name */
    public static class C0078a extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        public C0078a(String str, Parcel parcel) {
            int iDataPosition = parcel.dataPosition();
            super(new StringBuilder(String.valueOf(str).length() + 41).append(str).append(" Parcel: pos=").append(iDataPosition).append(" size=").append(parcel.dataSize()).toString());
        }
    }

    public static int a(int i) {
        return 65535 & i;
    }

    public static int a(Parcel parcel) {
        return parcel.readInt();
    }

    public static int a(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (i >> 16) & 65535 : parcel.readInt();
    }

    public static <T extends Parcelable> T a(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int iA = a(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iA == 0) {
            return null;
        }
        T tCreateFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(iA + iDataPosition);
        return tCreateFromParcel;
    }

    private static void a(Parcel parcel, int i, int i2) {
        int iA = a(parcel, i);
        if (iA != i2) {
            String hexString = Integer.toHexString(iA);
            throw new C0078a(new StringBuilder(String.valueOf(hexString).length() + 46).append("Expected size ").append(i2).append(" got ").append(iA).append(" (0x").append(hexString).append(")").toString(), parcel);
        }
    }

    private static void a(Parcel parcel, int i, int i2, int i3) {
        if (i2 != i3) {
            String hexString = Integer.toHexString(i2);
            throw new C0078a(new StringBuilder(String.valueOf(hexString).length() + 46).append("Expected size ").append(i3).append(" got ").append(i2).append(" (0x").append(hexString).append(")").toString(), parcel);
        }
    }

    public static int b(Parcel parcel) {
        int iA = a(parcel);
        int iA2 = a(parcel, iA);
        int iDataPosition = parcel.dataPosition();
        if (a(iA) != 20293) {
            String strValueOf = String.valueOf(Integer.toHexString(iA));
            throw new C0078a(strValueOf.length() != 0 ? "Expected object header. Got 0x".concat(strValueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = iDataPosition + iA2;
        if (i < iDataPosition || i > parcel.dataSize()) {
            throw new C0078a(new StringBuilder(54).append("Size read is invalid start=").append(iDataPosition).append(" end=").append(i).toString(), parcel);
        }
        return i;
    }

    public static void b(Parcel parcel, int i) {
        parcel.setDataPosition(a(parcel, i) + parcel.dataPosition());
    }

    public static <T> T[] b(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int iA = a(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iA == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(iA + iDataPosition);
        return tArr;
    }

    public static <T> ArrayList<T> c(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int iA = a(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iA == 0) {
            return null;
        }
        ArrayList<T> arrayListCreateTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(iA + iDataPosition);
        return arrayListCreateTypedArrayList;
    }

    public static boolean c(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    public static int d(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readInt();
    }

    public static Integer e(Parcel parcel, int i) {
        int iA = a(parcel, i);
        if (iA == 0) {
            return null;
        }
        a(parcel, i, iA, 4);
        return Integer.valueOf(parcel.readInt());
    }

    public static long f(Parcel parcel, int i) {
        a(parcel, i, 8);
        return parcel.readLong();
    }

    public static float g(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readFloat();
    }

    public static String h(Parcel parcel, int i) {
        int iA = a(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iA == 0) {
            return null;
        }
        String string = parcel.readString();
        parcel.setDataPosition(iA + iDataPosition);
        return string;
    }

    public static IBinder i(Parcel parcel, int i) {
        int iA = a(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iA == 0) {
            return null;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(iA + iDataPosition);
        return strongBinder;
    }

    public static Bundle j(Parcel parcel, int i) {
        int iA = a(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iA == 0) {
            return null;
        }
        Bundle bundle = parcel.readBundle();
        parcel.setDataPosition(iA + iDataPosition);
        return bundle;
    }

    public static byte[] k(Parcel parcel, int i) {
        int iA = a(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iA == 0) {
            return null;
        }
        byte[] bArrCreateByteArray = parcel.createByteArray();
        parcel.setDataPosition(iA + iDataPosition);
        return bArrCreateByteArray;
    }

    public static String[] l(Parcel parcel, int i) {
        int iA = a(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iA == 0) {
            return null;
        }
        String[] strArrCreateStringArray = parcel.createStringArray();
        parcel.setDataPosition(iA + iDataPosition);
        return strArrCreateStringArray;
    }

    public static ArrayList<Integer> m(Parcel parcel, int i) {
        int iA = a(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iA == 0) {
            return null;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(Integer.valueOf(parcel.readInt()));
        }
        parcel.setDataPosition(iDataPosition + iA);
        return arrayList;
    }

    public static ArrayList<String> n(Parcel parcel, int i) {
        int iA = a(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iA == 0) {
            return null;
        }
        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(iA + iDataPosition);
        return arrayListCreateStringArrayList;
    }

    public static void o(Parcel parcel, int i) {
        if (parcel.dataPosition() != i) {
            throw new C0078a(new StringBuilder(37).append("Overread allowed size end=").append(i).toString(), parcel);
        }
    }
}
