.class abstract Lcom/google/android/gms/internal/ads/za;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/tf;


# instance fields
.field private final a:[B

.field private final b:Lcom/google/android/gms/internal/ads/yz;

.field private final c:Lcom/google/android/gms/internal/ads/yz;


# direct methods
.method constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/za;->a:[B

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/za;->a([BI)Lcom/google/android/gms/internal/ads/yz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/za;->b:Lcom/google/android/gms/internal/ads/yz;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/za;->a([BI)Lcom/google/android/gms/internal/ads/yz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/za;->c:Lcom/google/android/gms/internal/ads/yz;

    return-void
.end method


# virtual methods
.method abstract a([BI)Lcom/google/android/gms/internal/ads/yz;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public a([B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v4, 0x0

    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/za;->b:Lcom/google/android/gms/internal/ads/yz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yz;->a()I

    const v1, 0x7fffffe3

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "plaintext too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/za;->b:Lcom/google/android/gms/internal/ads/yz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yz;->a()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    array-length v1, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/za;->b:Lcom/google/android/gms/internal/ads/yz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yz;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given ByteBuffer output is too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/za;->b:Lcom/google/android/gms/internal/ads/yz;

    invoke-virtual {v1, v3, p1}, Lcom/google/android/gms/internal/ads/yz;->a(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->b:Lcom/google/android/gms/internal/ads/yz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yz;->a()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-nez p2, :cond_2

    new-array p2, v4, [B

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/za;->c:Lcom/google/android/gms/internal/ads/yz;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/ads/yz;->a([BI)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    new-array v4, v1, [B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    array-length v0, p2

    rem-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_3

    array-length v0, p2

    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    rem-int/lit8 v1, v2, 0x10

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    add-int v5, v0, v1

    add-int/lit8 v5, v5, 0x10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    array-length v0, p2

    int-to-long v0, v0

    invoke-virtual {v5, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    int-to-long v0, v2

    invoke-virtual {v5, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/yw;->a([B[B)[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    :cond_3
    array-length v0, p2

    add-int/lit8 v0, v0, 0x10

    array-length v1, p2

    rem-int/lit8 v1, v1, 0x10

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v2, 0x10

    rem-int/lit8 v5, v2, 0x10

    sub-int/2addr v1, v5

    goto :goto_1
.end method
