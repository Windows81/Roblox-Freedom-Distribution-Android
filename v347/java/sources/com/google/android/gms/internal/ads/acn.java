package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
final class acn {
    static String a(ack ackVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ").append(str);
        a(ackVar, sb, 0);
        return sb.toString();
    }

    private static final String a(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(cCharAt));
        }
        return sb.toString();
    }

    private static void a(ack ackVar, StringBuilder sb, int i) {
        boolean zBooleanValue;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : ackVar.getClass().getDeclaredMethods()) {
            map2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                map.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String strReplaceFirst = str.replaceFirst("get", "");
            if (strReplaceFirst.endsWith("List") && !strReplaceFirst.endsWith("OrBuilderList") && !strReplaceFirst.equals("List")) {
                String strValueOf = String.valueOf(strReplaceFirst.substring(0, 1).toLowerCase());
                String strValueOf2 = String.valueOf(strReplaceFirst.substring(1, strReplaceFirst.length() - 4));
                String strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
                Method method2 = (Method) map.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    a(sb, i, a(strConcat), abd.a(method2, ackVar, new Object[0]));
                }
            }
            if (strReplaceFirst.endsWith("Map") && !strReplaceFirst.equals("Map")) {
                String strValueOf3 = String.valueOf(strReplaceFirst.substring(0, 1).toLowerCase());
                String strValueOf4 = String.valueOf(strReplaceFirst.substring(1, strReplaceFirst.length() - 3));
                String strConcat2 = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3);
                Method method3 = (Method) map.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    a(sb, i, a(strConcat2), abd.a(method3, ackVar, new Object[0]));
                }
            }
            String strValueOf5 = String.valueOf(strReplaceFirst);
            if (((Method) map2.get(strValueOf5.length() != 0 ? "set".concat(strValueOf5) : new String("set"))) != null) {
                if (strReplaceFirst.endsWith("Bytes")) {
                    String strValueOf6 = String.valueOf(strReplaceFirst.substring(0, strReplaceFirst.length() - 5));
                    if (!map.containsKey(strValueOf6.length() != 0 ? "get".concat(strValueOf6) : new String("get"))) {
                    }
                }
                String strValueOf7 = String.valueOf(strReplaceFirst.substring(0, 1).toLowerCase());
                String strValueOf8 = String.valueOf(strReplaceFirst.substring(1));
                String strConcat3 = strValueOf8.length() != 0 ? strValueOf7.concat(strValueOf8) : new String(strValueOf7);
                String strValueOf9 = String.valueOf(strReplaceFirst);
                Method method4 = (Method) map.get(strValueOf9.length() != 0 ? "get".concat(strValueOf9) : new String("get"));
                String strValueOf10 = String.valueOf(strReplaceFirst);
                Method method5 = (Method) map.get(strValueOf10.length() != 0 ? "has".concat(strValueOf10) : new String("has"));
                if (method4 != null) {
                    Object objA = abd.a(method4, ackVar, new Object[0]);
                    if (method5 == null) {
                        boolean zEquals = objA instanceof Boolean ? !((Boolean) objA).booleanValue() : objA instanceof Integer ? ((Integer) objA).intValue() == 0 : objA instanceof Float ? ((Float) objA).floatValue() == 0.0f : objA instanceof Double ? ((Double) objA).doubleValue() == 0.0d : objA instanceof String ? objA.equals("") : objA instanceof zv ? objA.equals(zv.f5750a) : objA instanceof ack ? objA == ((ack) objA).p() : (objA instanceof Enum) && ((Enum) objA).ordinal() == 0;
                        zBooleanValue = !zEquals;
                    } else {
                        zBooleanValue = ((Boolean) abd.a(method5, ackVar, new Object[0])).booleanValue();
                    }
                    if (zBooleanValue) {
                        a(sb, i, a(strConcat3), objA);
                    }
                }
            }
        }
        if (ackVar instanceof abd.c) {
            Iterator<Map.Entry<FieldDescriptorType, Object>> itE = ((abd.c) ackVar).zzdtz.e();
            if (itE.hasNext()) {
                ((Map.Entry) itE.next()).getKey();
                throw new NoSuchMethodError();
            }
        }
        if (((abd) ackVar).zzdtt != null) {
            ((abd) ackVar).zzdtt.a(sb, i);
        }
    }

    static final void a(StringBuilder sb, int i, String str, Object obj) {
        int i2 = 0;
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                a(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                a(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"").append(ads.a(zv.a((String) obj))).append('\"');
            return;
        }
        if (obj instanceof zv) {
            sb.append(": \"").append(ads.a((zv) obj)).append('\"');
            return;
        }
        if (obj instanceof abd) {
            sb.append(" {");
            a((abd) obj, sb, i + 2);
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ").append(obj.toString());
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        a(sb, i + 2, "key", entry.getKey());
        a(sb, i + 2, "value", entry.getValue());
        sb.append("\n");
        while (i2 < i) {
            sb.append(' ');
            i2++;
        }
        sb.append("}");
    }
}
