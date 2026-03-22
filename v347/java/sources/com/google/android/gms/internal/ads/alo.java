package com.google.android.gms.internal.ads;

import java.util.PriorityQueue;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class alo {
    private static long a(long j, int i) {
        if (i == 0) {
            return 1L;
        }
        return i != 1 ? i % 2 == 0 ? a((j * j) % 1073807359, i / 2) % 1073807359 : ((a((j * j) % 1073807359, i / 2) % 1073807359) * j) % 1073807359 : j;
    }

    private static String a(String[] strArr, int i, int i2) {
        if (strArr.length < i + i2) {
            jd.c("Unable to construct shingle");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i3 = i; i3 < (i + i2) - 1; i3++) {
            sb.append(strArr[i3]);
            sb.append(' ');
        }
        sb.append(strArr[(i + i2) - 1]);
        return sb.toString();
    }

    private static void a(int i, long j, String str, int i2, PriorityQueue<alp> priorityQueue) {
        alp alpVar = new alp(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().f4179c <= alpVar.f4179c && priorityQueue.peek().f4177a <= alpVar.f4177a)) && !priorityQueue.contains(alpVar)) {
            priorityQueue.add(alpVar);
            if (priorityQueue.size() > i) {
                priorityQueue.poll();
            }
        }
    }

    public static void a(String[] strArr, int i, int i2, PriorityQueue<alp> priorityQueue) {
        if (strArr.length < i2) {
            a(i, b(strArr, 0, strArr.length), a(strArr, 0, strArr.length), strArr.length, priorityQueue);
            return;
        }
        long jB = b(strArr, 0, i2);
        a(i, jB, a(strArr, 0, i2), i2, priorityQueue);
        long jA = a(16785407L, i2 - 1);
        for (int i3 = 1; i3 < (strArr.length - i2) + 1; i3++) {
            jB = ((((((jB + 1073807359) - ((((((long) all.a(strArr[i3 - 1])) + 2147483647L) % 1073807359) * jA) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((((long) all.a(strArr[(i3 + i2) - 1])) + 2147483647L) % 1073807359)) % 1073807359;
            a(i, jB, a(strArr, i3, i2), strArr.length, priorityQueue);
        }
    }

    private static long b(String[] strArr, int i, int i2) {
        long jA = (((long) all.a(strArr[0])) + 2147483647L) % 1073807359;
        for (int i3 = 1; i3 < i2; i3++) {
            jA = (((jA * 16785407) % 1073807359) + ((((long) all.a(strArr[i3])) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return jA;
    }
}
