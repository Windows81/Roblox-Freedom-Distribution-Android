.class final Lcom/google/android/gms/internal/ads/xw;
.super Lcom/google/android/gms/internal/ads/yz;


# static fields
.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/xw;->c:[B

    return-void
.end method

.method constructor <init>([BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/yz;-><init>([BI)V

    return-void
.end method

.method private static a([IIIII)V
    .locals 2

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xw;->a(II)I

    move-result v0

    aput v0, p0, p4

    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xw;->a(II)I

    move-result v0

    aput v0, p0, p2

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xw;->a(II)I

    move-result v0

    aput v0, p0, p4

    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xw;->a(II)I

    move-result v0

    aput v0, p0, p2

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method final a([BI)Ljava/nio/ByteBuffer;
    .locals 12

    const/16 v11, 0xc

    const/16 v10, 0xa

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/16 v0, 0x10

    new-array v3, v0, [I

    sget-object v0, Lcom/google/android/gms/internal/ads/yz;->a:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/xw;->a:[I

    array-length v1, v1

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->b:Lcom/google/android/gms/internal/ads/yt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->a()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xw;->a(Ljava/nio/ByteBuffer;)[I

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v2, v3, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p2, v3, v11

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xw;->a(Ljava/nio/ByteBuffer;)[I

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v0, v2, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v1, v2

    :goto_0
    if-ge v1, v10, :cond_0

    const/16 v4, 0x8

    invoke-static {v0, v2, v9, v4, v11}, Lcom/google/android/gms/internal/ads/xw;->a([IIIII)V

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/16 v6, 0x9

    const/16 v7, 0xd

    invoke-static {v0, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/xw;->a([IIIII)V

    const/4 v4, 0x2

    const/4 v5, 0x6

    const/16 v6, 0xe

    invoke-static {v0, v4, v5, v10, v6}, Lcom/google/android/gms/internal/ads/xw;->a([IIIII)V

    const/4 v4, 0x7

    const/16 v5, 0xb

    const/16 v6, 0xf

    invoke-static {v0, v8, v4, v5, v6}, Lcom/google/android/gms/internal/ads/xw;->a([IIIII)V

    const/4 v4, 0x5

    const/16 v5, 0xf

    invoke-static {v0, v2, v4, v10, v5}, Lcom/google/android/gms/internal/ads/xw;->a([IIIII)V

    const/4 v4, 0x1

    const/4 v5, 0x6

    const/16 v6, 0xb

    invoke-static {v0, v4, v5, v6, v11}, Lcom/google/android/gms/internal/ads/xw;->a([IIIII)V

    const/4 v4, 0x2

    const/4 v5, 0x7

    const/16 v6, 0x8

    const/16 v7, 0xd

    invoke-static {v0, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/xw;->a([IIIII)V

    const/16 v4, 0x9

    const/16 v5, 0xe

    invoke-static {v0, v8, v9, v4, v5}, Lcom/google/android/gms/internal/ads/xw;->a([IIIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    const/16 v4, 0x10

    if-ge v1, v4, :cond_1

    aget v4, v3, v1

    aget v5, v0, v1

    add-int/2addr v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v1, v3, v2, v4}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-object v0
.end method
