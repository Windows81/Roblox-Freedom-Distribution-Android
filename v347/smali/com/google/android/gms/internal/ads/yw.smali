.class final Lcom/google/android/gms/internal/ads/yw;
.super Ljava/lang/Object;


# direct methods
.method private static a([BI)J
    .locals 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static a([BII)J
    .locals 4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/yw;->a([BI)J

    move-result-wide v0

    shr-long/2addr v0, p2

    const-wide/32 v2, 0x3ffffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static a([BJI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a([B[B)[B
    .locals 44

    move-object/from16 v0, p0

    array-length v4, v0

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The key length in bytes must be 32."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/yw;->a([BII)J

    move-result-wide v4

    const-wide/32 v16, 0x3ffffff

    and-long v16, v16, v4

    const/4 v4, 0x3

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/yw;->a([BII)J

    move-result-wide v4

    const-wide/32 v18, 0x3ffff03

    and-long v18, v18, v4

    const/4 v4, 0x6

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/yw;->a([BII)J

    move-result-wide v4

    const-wide/32 v20, 0x3ffc0ff

    and-long v20, v20, v4

    const/16 v4, 0x9

    const/4 v5, 0x6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/yw;->a([BII)J

    move-result-wide v4

    const-wide/32 v22, 0x3f03fff

    and-long v22, v22, v4

    const/16 v4, 0xc

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/yw;->a([BII)J

    move-result-wide v4

    const-wide/32 v24, 0xfffff

    and-long v24, v24, v4

    const-wide/16 v4, 0x5

    mul-long v26, v18, v4

    const-wide/16 v4, 0x5

    mul-long v28, v20, v4

    const-wide/16 v4, 0x5

    mul-long v30, v22, v4

    const-wide/16 v4, 0x5

    mul-long v32, v24, v4

    const/16 v4, 0x11

    new-array v5, v4, [B

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v4, v0, :cond_2

    const/16 v34, 0x10

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v35, v0

    sub-int v35, v35, v4

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v34

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-static {v0, v4, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v35, 0x1

    aput-byte v35, v5, v34

    const/16 v35, 0x10

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x11

    const/16 v36, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_1
    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v5, v0, v1}, Lcom/google/android/gms/internal/ads/yw;->a([BII)J

    move-result-wide v34

    add-long v14, v14, v34

    const/16 v34, 0x3

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v5, v0, v1}, Lcom/google/android/gms/internal/ads/yw;->a([BII)J

    move-result-wide v34

    add-long v12, v12, v34

    const/16 v34, 0x6

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v5, v0, v1}, Lcom/google/android/gms/internal/ads/yw;->a([BII)J

    move-result-wide v34

    add-long v10, v10, v34

    const/16 v34, 0x9

    const/16 v35, 0x6

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v5, v0, v1}, Lcom/google/android/gms/internal/ads/yw;->a([BII)J

    move-result-wide v34

    add-long v8, v8, v34

    const/16 v34, 0xc

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v5, v0, v1}, Lcom/google/android/gms/internal/ads/yw;->a([BII)J

    move-result-wide v34

    const/16 v36, 0x10

    aget-byte v36, v5, v36

    shl-int/lit8 v36, v36, 0x18

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    or-long v34, v34, v36

    add-long v6, v6, v34

    mul-long v34, v14, v16

    mul-long v36, v12, v32

    add-long v34, v34, v36

    mul-long v36, v10, v30

    add-long v34, v34, v36

    mul-long v36, v8, v28

    add-long v34, v34, v36

    mul-long v36, v6, v26

    add-long v34, v34, v36

    mul-long v36, v14, v18

    mul-long v38, v12, v16

    add-long v36, v36, v38

    mul-long v38, v10, v32

    add-long v36, v36, v38

    mul-long v38, v8, v30

    add-long v36, v36, v38

    mul-long v38, v6, v28

    add-long v36, v36, v38

    mul-long v38, v14, v20

    mul-long v40, v12, v18

    add-long v38, v38, v40

    mul-long v40, v10, v16

    add-long v38, v38, v40

    mul-long v40, v8, v32

    add-long v38, v38, v40

    mul-long v40, v6, v30

    add-long v38, v38, v40

    mul-long v40, v14, v22

    mul-long v42, v12, v20

    add-long v40, v40, v42

    mul-long v42, v10, v18

    add-long v40, v40, v42

    mul-long v42, v8, v16

    add-long v40, v40, v42

    mul-long v42, v6, v32

    add-long v40, v40, v42

    mul-long v14, v14, v24

    mul-long v12, v12, v22

    add-long/2addr v12, v14

    mul-long v10, v10, v20

    add-long/2addr v10, v12

    mul-long v8, v8, v18

    add-long/2addr v8, v10

    mul-long v6, v6, v16

    add-long/2addr v6, v8

    const/16 v8, 0x1a

    shr-long v8, v34, v8

    const-wide/32 v10, 0x3ffffff

    and-long v12, v34, v10

    add-long v8, v8, v36

    const/16 v10, 0x1a

    shr-long v10, v8, v10

    const-wide/32 v14, 0x3ffffff

    and-long v34, v8, v14

    add-long v8, v38, v10

    const/16 v10, 0x1a

    shr-long v14, v8, v10

    const-wide/32 v10, 0x3ffffff

    and-long/2addr v10, v8

    add-long v8, v40, v14

    const/16 v14, 0x1a

    shr-long v14, v8, v14

    const-wide/32 v36, 0x3ffffff

    and-long v8, v8, v36

    add-long/2addr v6, v14

    const/16 v14, 0x1a

    shr-long v14, v6, v14

    const-wide/32 v36, 0x3ffffff

    and-long v6, v6, v36

    const-wide/16 v36, 0x5

    mul-long v14, v14, v36

    add-long/2addr v12, v14

    const/16 v14, 0x1a

    shr-long v36, v12, v14

    const-wide/32 v14, 0x3ffffff

    and-long/2addr v14, v12

    add-long v12, v34, v36

    add-int/lit8 v4, v4, 0x10

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x1a

    shr-long v4, v12, v4

    const-wide/32 v16, 0x3ffffff

    and-long v12, v12, v16

    add-long/2addr v4, v10

    const/16 v10, 0x1a

    shr-long v10, v4, v10

    const-wide/32 v16, 0x3ffffff

    and-long v4, v4, v16

    add-long/2addr v8, v10

    const/16 v10, 0x1a

    shr-long v10, v8, v10

    const-wide/32 v16, 0x3ffffff

    and-long v8, v8, v16

    add-long/2addr v6, v10

    const/16 v10, 0x1a

    shr-long v10, v6, v10

    const-wide/32 v16, 0x3ffffff

    and-long v6, v6, v16

    const-wide/16 v16, 0x5

    mul-long v10, v10, v16

    add-long/2addr v10, v14

    const/16 v14, 0x1a

    shr-long v14, v10, v14

    const-wide/32 v16, 0x3ffffff

    and-long v10, v10, v16

    add-long/2addr v12, v14

    const-wide/16 v14, 0x5

    add-long/2addr v14, v10

    const/16 v16, 0x1a

    shr-long v16, v14, v16

    const-wide/32 v18, 0x3ffffff

    and-long v14, v14, v18

    add-long v16, v16, v12

    const/16 v18, 0x1a

    shr-long v18, v16, v18

    const-wide/32 v20, 0x3ffffff

    and-long v16, v16, v20

    add-long v18, v18, v4

    const/16 v20, 0x1a

    shr-long v20, v18, v20

    const-wide/32 v22, 0x3ffffff

    and-long v18, v18, v22

    add-long v20, v20, v8

    const/16 v22, 0x1a

    shr-long v22, v20, v22

    const-wide/32 v24, 0x3ffffff

    and-long v20, v20, v24

    add-long v22, v22, v6

    const-wide/32 v24, 0x4000000

    sub-long v22, v22, v24

    const/16 v24, 0x3f

    shr-long v24, v22, v24

    and-long v10, v10, v24

    and-long v12, v12, v24

    and-long v4, v4, v24

    and-long v8, v8, v24

    and-long v6, v6, v24

    const-wide/16 v26, -0x1

    xor-long v24, v24, v26

    and-long v14, v14, v24

    or-long/2addr v10, v14

    and-long v14, v16, v24

    or-long/2addr v12, v14

    and-long v14, v18, v24

    or-long/2addr v4, v14

    and-long v14, v20, v24

    or-long/2addr v8, v14

    and-long v14, v22, v24

    or-long/2addr v6, v14

    const/16 v14, 0x1a

    shl-long v14, v12, v14

    or-long/2addr v10, v14

    const-wide v14, 0xffffffffL

    and-long/2addr v10, v14

    const/4 v14, 0x6

    shr-long/2addr v12, v14

    const/16 v14, 0x14

    shl-long v14, v4, v14

    or-long/2addr v12, v14

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    const/16 v14, 0xc

    shr-long/2addr v4, v14

    const/16 v14, 0xe

    shl-long v14, v8, v14

    or-long/2addr v4, v14

    const-wide v14, 0xffffffffL

    and-long/2addr v4, v14

    const/16 v14, 0x12

    shr-long/2addr v8, v14

    const/16 v14, 0x8

    shl-long/2addr v6, v14

    or-long/2addr v6, v8

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/yw;->a([BI)J

    move-result-wide v8

    add-long/2addr v8, v10

    const-wide v10, 0xffffffffL

    and-long/2addr v10, v8

    const/16 v14, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/yw;->a([BI)J

    move-result-wide v14

    add-long/2addr v12, v14

    const/16 v14, 0x20

    shr-long/2addr v8, v14

    add-long/2addr v8, v12

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v8

    const/16 v14, 0x18

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/yw;->a([BI)J

    move-result-wide v14

    add-long/2addr v4, v14

    const/16 v14, 0x20

    shr-long/2addr v8, v14

    add-long/2addr v4, v8

    const-wide v8, 0xffffffffL

    and-long/2addr v8, v4

    const/16 v14, 0x1c

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/yw;->a([BI)J

    move-result-wide v14

    add-long/2addr v6, v14

    const/16 v14, 0x20

    shr-long/2addr v4, v14

    add-long/2addr v4, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/16 v6, 0x10

    new-array v6, v6, [B

    const/4 v7, 0x0

    invoke-static {v6, v10, v11, v7}, Lcom/google/android/gms/internal/ads/yw;->a([BJI)V

    const/4 v7, 0x4

    invoke-static {v6, v12, v13, v7}, Lcom/google/android/gms/internal/ads/yw;->a([BJI)V

    const/16 v7, 0x8

    invoke-static {v6, v8, v9, v7}, Lcom/google/android/gms/internal/ads/yw;->a([BJI)V

    const/16 v7, 0xc

    invoke-static {v6, v4, v5, v7}, Lcom/google/android/gms/internal/ads/yw;->a([BJI)V

    return-object v6
.end method
