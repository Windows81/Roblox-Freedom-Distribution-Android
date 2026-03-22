package com.google.android.gms.internal.ads;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum aay {
    DOUBLE(0, aba.SCALAR, abl.DOUBLE),
    FLOAT(1, aba.SCALAR, abl.FLOAT),
    INT64(2, aba.SCALAR, abl.LONG),
    UINT64(3, aba.SCALAR, abl.LONG),
    INT32(4, aba.SCALAR, abl.INT),
    FIXED64(5, aba.SCALAR, abl.LONG),
    FIXED32(6, aba.SCALAR, abl.INT),
    BOOL(7, aba.SCALAR, abl.BOOLEAN),
    STRING(8, aba.SCALAR, abl.STRING),
    MESSAGE(9, aba.SCALAR, abl.MESSAGE),
    BYTES(10, aba.SCALAR, abl.BYTE_STRING),
    UINT32(11, aba.SCALAR, abl.INT),
    ENUM(12, aba.SCALAR, abl.ENUM),
    SFIXED32(13, aba.SCALAR, abl.INT),
    SFIXED64(14, aba.SCALAR, abl.LONG),
    SINT32(15, aba.SCALAR, abl.INT),
    SINT64(16, aba.SCALAR, abl.LONG),
    GROUP(17, aba.SCALAR, abl.MESSAGE),
    DOUBLE_LIST(18, aba.VECTOR, abl.DOUBLE),
    FLOAT_LIST(19, aba.VECTOR, abl.FLOAT),
    INT64_LIST(20, aba.VECTOR, abl.LONG),
    UINT64_LIST(21, aba.VECTOR, abl.LONG),
    INT32_LIST(22, aba.VECTOR, abl.INT),
    FIXED64_LIST(23, aba.VECTOR, abl.LONG),
    FIXED32_LIST(24, aba.VECTOR, abl.INT),
    BOOL_LIST(25, aba.VECTOR, abl.BOOLEAN),
    STRING_LIST(26, aba.VECTOR, abl.STRING),
    MESSAGE_LIST(27, aba.VECTOR, abl.MESSAGE),
    BYTES_LIST(28, aba.VECTOR, abl.BYTE_STRING),
    UINT32_LIST(29, aba.VECTOR, abl.INT),
    ENUM_LIST(30, aba.VECTOR, abl.ENUM),
    SFIXED32_LIST(31, aba.VECTOR, abl.INT),
    SFIXED64_LIST(32, aba.VECTOR, abl.LONG),
    SINT32_LIST(33, aba.VECTOR, abl.INT),
    SINT64_LIST(34, aba.VECTOR, abl.LONG),
    DOUBLE_LIST_PACKED(35, aba.PACKED_VECTOR, abl.DOUBLE),
    FLOAT_LIST_PACKED(36, aba.PACKED_VECTOR, abl.FLOAT),
    INT64_LIST_PACKED(37, aba.PACKED_VECTOR, abl.LONG),
    UINT64_LIST_PACKED(38, aba.PACKED_VECTOR, abl.LONG),
    INT32_LIST_PACKED(39, aba.PACKED_VECTOR, abl.INT),
    FIXED64_LIST_PACKED(40, aba.PACKED_VECTOR, abl.LONG),
    FIXED32_LIST_PACKED(41, aba.PACKED_VECTOR, abl.INT),
    BOOL_LIST_PACKED(42, aba.PACKED_VECTOR, abl.BOOLEAN),
    UINT32_LIST_PACKED(43, aba.PACKED_VECTOR, abl.INT),
    ENUM_LIST_PACKED(44, aba.PACKED_VECTOR, abl.ENUM),
    SFIXED32_LIST_PACKED(45, aba.PACKED_VECTOR, abl.INT),
    SFIXED64_LIST_PACKED(46, aba.PACKED_VECTOR, abl.LONG),
    SINT32_LIST_PACKED(47, aba.PACKED_VECTOR, abl.INT),
    SINT64_LIST_PACKED(48, aba.PACKED_VECTOR, abl.LONG),
    GROUP_LIST(49, aba.VECTOR, abl.MESSAGE),
    MAP(50, aba.MAP, abl.VOID);

    private static final aay[] ae;
    private static final Type[] af = new Type[0];
    private final abl Z;
    private final int aa;
    private final aba ab;
    private final Class<?> ac;
    private final boolean ad;

    static {
        aay[] aayVarArrValues = values();
        ae = new aay[aayVarArrValues.length];
        for (aay aayVar : aayVarArrValues) {
            ae[aayVar.aa] = aayVar;
        }
    }

    aay(int i, aba abaVar, abl ablVar) {
        this.aa = i;
        this.ab = abaVar;
        this.Z = ablVar;
        switch (abaVar) {
            case MAP:
                this.ac = ablVar.a();
                break;
            case VECTOR:
                this.ac = ablVar.a();
                break;
            default:
                this.ac = null;
                break;
        }
        boolean z = false;
        if (abaVar == aba.SCALAR) {
            switch (ablVar) {
                case BYTE_STRING:
                case MESSAGE:
                case STRING:
                    break;
                default:
                    z = true;
                    break;
            }
        }
        this.ad = z;
    }

    public final int a() {
        return this.aa;
    }
}
